# Test Workflows for AdaptiveMD Platform

If you are on a resource with AdaptiveMD installed and
a runtime system configured, you can clone this repository
to `$ADMD_WORKFLOWS` (or wherever you'd like) and run
these workflow templates with
```bash
./workflow-xxx.sh
```

First, make sure your bashrc has all the necessary
AdaptiveMD environment variables. [See the installer repo][https://github.com/jrossyra/admdinstaller]
for more guidance on this.

Start by moving to either chignolin or dialanine (not currently
working) and run a first test like this:
```bash
./workflow-simplest.sh
```

All installed functionality will be tested, and after this you can run additional
tests if you'd like.

This repo is a work in progress, and will eventually serve to provide
robust workflow tests with automated state checks to detect problems
or confirm successful installation. 

NOTE!!!
Different OpenMM versions will complain about our MD setup files,
so if the simulation system files can't be read, then you have to
make new ones with the correct OpenMM version. [See this repo][https://github.com/jrossyra/mk-openmm-system]
