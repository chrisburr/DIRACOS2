# DIRACOS2

Experimental repository using conda constructor to build a Python 3 DIRACOS installer.

```bash
constructor . --platform=linux-64

bash DIRACOS-2.0.0a1-Linux-x86_64.sh -b -p /tmp/diracos2

docker run --rm --cap-add=SYS_PTRACE -v $PWD:/diracos-repo centos:8 bash -c \
    'bash /diracos-repo/DIRACOS-2.0.0a1-Linux-x86_64.sh -b -p diracos && && source diracos/diracosrc && pytest -v /diracos-repo/tests/test_import.py && bash /diracos-repo/tests/test_cli.sh'
```
