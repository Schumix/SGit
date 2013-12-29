#!/bin/bash

git submodule update --init --recursive
xbuild /p:Configuration="Debug" SGit.sln /flp:LogFile=xbuild.log;Verbosity=Detailed

#cd Run/Tests/Debug
#nunit-console SGit.Test.dll
