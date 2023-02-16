#!/bin/bash

## See https://github.com/conda-forge/r-base-feedstock/issues/163#issuecomment-989515053
sed -ie 's/PKG_CPPFLAGS =/PKG_CPPFLAGS= -DHAVE_WORKING_LOG1P/g'

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
