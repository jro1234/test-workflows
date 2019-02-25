#!/bin/bash

source $ADMD_RUNTIME/wf_funcs.sh


MINUTES=20
EXECFLAG="mongo/cgn.db:22222"
PROJNAME="cgn-rttest"

SYSNAME="chignolin"
MFREQ=500
PFREQ=100
PLATFORM=CUDA

#==========================================#
#              WORKFLOW START              #
#------------------------------------------#
exec_workload 1 $PROJNAME trajs 10 100000 200000  0      0 explore_macrostates $MINUTES $EXECFLAG $SYSNAME $MFREQ $PFREQ $PLATFORM
exec_workload 1 $PROJNAME trajs 10 100000 200000  0      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 1 $PROJNAME model  1      0      0  0      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 2 $PROJNAME trajs 10 200000 200000  0      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 2 $PROJNAME model  1      0      0  0      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 3 $PROJNAME trajs  5 200000 400000 15      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 4 $PROJNAME trajs  5 200000 400000 20      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 4 $PROJNAME trajs  5 200000 400000 20      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 4 $PROJNAME model  1      0      0  0 400000 explore_macrostates $MINUTES $EXECFLAG
exec_workload 5 $PROJNAME trajs  5 400000 400000 20      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 5 $PROJNAME model  1      0      0  0 400000 explore_macrostates $MINUTES $EXECFLAG
exec_workload 6 $PROJNAME trajs  5 200000 400000 20      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 6 $PROJNAME trajs  5 200000 400000 20      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 6 $PROJNAME model  1      0      0  0 400000 explore_macrostates $MINUTES $EXECFLAG
exec_workload 7 $PROJNAME trajs  5 400000 400000 20      0 explore_macrostates $MINUTES $EXECFLAG
exec_workload 7 $PROJNAME model  1      0      0  0 400000 explore_macrostates $MINUTES $EXECFLAG
exec_workload 8 $PROJNAME model  1      0      0  5      0 explore_macrostates $MINUTES $EXECFLAG

echo "Test Workflow is complete!"
#------------------------------------------#
#              WORKFLOW DONE               #
#==========================================#
