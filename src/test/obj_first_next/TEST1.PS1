# SPDX-License-Identifier: BSD-3-Clause
# Copyright 2015-2019, Intel Corporation

#
# src/test/obj_first_next/TEST1 -- unit test for POBJ_FIRST macro
#
# Returns first object on the proper list
#

. ..\unittest\unittest.ps1

require_test_type medium

setup

expect_normal_exit $Env:EXE_DIR\obj_first_next$Env:EXESUFFIX $DIR\testfile `
	a:0:1 a:0:0 a:1:1 a:0:2 a:1:2 P:0 P:1 `
	f:0 f:1 r:0:0 r:1:0 P:0 P:1 `
	f:0 f:1 a:0:3 a:1:3 P:0 P:1 `
	f:0 f:1

check

pass
