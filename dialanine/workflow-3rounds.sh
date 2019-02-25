#!/bin/bash

source $ADMD_RUNTIME/wf_funcs.sh


MINUTES=20
EXECFLAG="mongo/cgn.db:22222"
PROJNAME="test"

SYSNAME="alanine"
MFREQ=500
PFREQ=100
PLATFORM=CUDA

#==========================================#
#              WORKFLOW START              #
#------------------------------------------#
exec_workload 1 $PROJNAME trajs 10 100000 100000 0 0 explore_macrostates $MINUTES $EXECFLAG $SYSNAME $MFREQ $PFREQ $PLATFORM
exec_workload 1 $PROJNAME model  1      0      0 0 0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 1 $PROJNAME trajs 10 100000 100000 0 0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 1 $PROJNAME model  1      0      0 0 0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 1 $PROJNAME trajs 10 100000 100000 0 0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 1 $PROJNAME model  1      0      0 0 0 explore_macrostates $MINUTES $EXECFLAG

echo "Test Workflow is complete!"
#------------------------------------------#
#              WORKFLOW DONE               #
#==========================================#
