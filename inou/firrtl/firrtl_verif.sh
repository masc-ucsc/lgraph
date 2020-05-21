#!/bin/bash
rm -rf ./lgdb

pts='TrivialArith GCD SimpleBitOps'

LGSHELL=./bazel-bin/main/lgshell
LGCHECK=./inou/yosys/lgcheck

if [ ! -f $LGSHELL ]; then
    if [ -f ./main/lgshell ]; then
        LGSHELL=./main/lgshell
        echo "lgshell is in $(pwd)"
    else
        echo "ERROR: could not find lgshell binary in $(pwd)";
    fi
fi

for pt in $pts
do
    echo ""
    echo ""
    echo ""
    echo "===================================================="
    echo "Verify FIRRTL -> LNAST"
    echo "===================================================="

    echo "----------------------------------------------------"
    echo "FIRRTL (Proto) -> LNAST -> LGraph"
    echo "----------------------------------------------------"

    ${LGSHELL} "inou.firrtl.tolnast files:inou/firrtl/tests/proto/${pt}_proto.data |> inou.lnast_dfg.tolg"
    if [ $? -eq 0 ]; then
      echo "Successfully translated FIRRTL to LNAST to LGraph: ${pt}"
    else
      echo "ERROR: FIRRTL -> LNAST -> LGraph failed... testcase: ${pt}"
      exit 1
    fi


    echo ""
    echo ""
    echo ""
    echo "----------------------------------------------------"
    echo "Reduced_Or_Op Elimination"
    echo "----------------------------------------------------"

    ${LGSHELL} "lgraph.open name:${pt} |> inou.lnast_dfg.reduced_or_elimination"
    if [ $? -eq 0 ]; then
      echo "Successfully eliminate all reduced_or_op in new lg: ${pt}_proto.data"
    else
      echo "ERROR: Pyrope compiler failed on new lg: reduced_or_elimination, testcase: ${pt}_proto.data"
      exit 1
    fi


    echo ""
    echo ""
    echo ""
    echo "----------------------------------------------------"
    echo "Tuple Chain Resolve"
    echo "----------------------------------------------------"

    ${LGSHELL} "lgraph.open name:${pt} |> inou.lnast_dfg.resolve_tuples"
    if [ $? -eq 0 ]; then
      echo "Successfully resolve the tuple chain in new lg: ${pt}_proto.data"
    else
      echo "ERROR: Pyrope compiler failed on new lg: resolve tuples, testcase: ${pt}_proto.data"
      exit 1
    fi


    echo ""
    echo ""
    echo ""
    echo "----------------------------------------------------"
    echo "Bitwidth Optimization"
    echo "----------------------------------------------------"

    ${LGSHELL} "lgraph.open name:${pt} |> pass.bitwidth"
    if [ $? -eq 0 ]; then
      echo "Successfully optimize design bitwidth on new lg: ${pt}_proto.data"
    else
      echo "ERROR: Pyrope compiler failed on new lg: bitwidth optimization, testcase: ${pt}_proto.data"
      exit 1
    fi
    ${LGSHELL} "lgraph.open name:${pt} |> inou.graphviz.from verbose:false"
    mv ${pt}.dot ${pt}.newlg.dot


    echo ""
    echo ""
    echo ""
    echo "----------------------------------------------------"
    echo "LGraph -> Verilog"
    echo "----------------------------------------------------"

    ${LGSHELL} "lgraph.open name:${pt} |> inou.yosys.fromlg"
    if [ $? -eq 0 ] && [ -f ${pt}.v ]; then
      echo "Successfully generate Verilog: ${pt}.v"
      rm -f  yosys_script.*
    else
      echo "ERROR: Yosys failed: verilog generation, testcase: ${pt}_proto.data"
      exit 1
    fi


    echo ""
    echo ""
    echo ""
    echo "----------------------------------------------------"
    echo "Logic Equivalence Check"
    echo "----------------------------------------------------"

    ${LGCHECK} --implementation=${pt}.v --reference=./inou/firrtl/tests/verilog_gld/${pt}.v

    if [ $? -eq 0 ]; then
      echo "Successfully pass logic equivilence check!"
    else
      echo "FAIL: "${pt}".v !== "${pt}".gld.v"
      exit 1
    fi
    ${LGSHELL} "lgraph.open name:${pt} |> inou.graphviz.from verbose:false"

done #end of for