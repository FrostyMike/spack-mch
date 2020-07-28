#!/usr/bin/env python
# -*- coding: utf-8 -*-

__author__      = "Mikhail Zhigun"
__copyright__   = "Copyright 2020, MeteoSwiss"

from sys import version_info as v

assert v[0] == 3 and v[1] >= 5, 'Python should be 3.5 or older'

from shutil import which

def check_install(name):
	assert which(name), '%s not installed' % name

check_install("make")
check_install("git")
check_install("curl")
check_install("gpg")
check_install("make")

