# chignolin-wkftest

If you are on a platform with AdaptiveMD installed and
a runtime system configured, you can clone this repository
to $ADMD_WORKFLOWS (or wherever you'd like) and run
these workflow templates with
`./workflow-xxx.sh`

First, make sure your bashrc has all the necessary
AdaptiveMD environment variables.

Currently, these are:
ADMD_ENV_ACTIVATE
ADMD_GENERATOR
ADMD_RUNTIME
ADMD_FILES
ADMD_DATA
ADMD_SANDBOX

If you have used the example `.bashrc` directly or as
a guide for this, you will have more than just these
variables, but these are directly utilized while
executing a workflow.
