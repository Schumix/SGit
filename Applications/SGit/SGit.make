

# Warning: This is an automatically generated file, do not edit!

if ENABLE_DEBUG
ASSEMBLY_COMPILER_COMMAND = dmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -optimize- -debug "-define:DEBUG;"
ASSEMBLY = ../../Run/Debug/SGit.exe
ASSEMBLY_MDB = $(ASSEMBLY).mdb
COMPILE_TARGET = exe
PROJECT_REFERENCES =  \
	../../External/ngit/External/SharpZipLib/bin/Debug/ICSharpCode.SharpZipLib.dll \
	../../External/ngit/bin/NGit.dll \
	../../External/ngit/bin/NSch.dll \
	../../External/ngit/bin/Sharpen.dll \
	../../External/ngit/bin/Sharpen.Unix.dll
BUILD_DIR = ../../Run/Debug

SGIT_EXE_MDB_SOURCE=../../Run/Debug/SGit.exe.mdb
SGIT_EXE_MDB=$(BUILD_DIR)/SGit.exe.mdb
ICSHARPCODE_SHARPZIPLIB_DLL_SOURCE=../../External/ngit/External/SharpZipLib/bin/Debug/ICSharpCode.SharpZipLib.dll
ICSHARPCODE_SHARPZIPLIB_DLL_MDB_SOURCE=../../External/ngit/External/SharpZipLib/bin/Debug/ICSharpCode.SharpZipLib.dll.mdb
ICSHARPCODE_SHARPZIPLIB_DLL_MDB=$(BUILD_DIR)/ICSharpCode.SharpZipLib.dll.mdb
NGIT_DLL_SOURCE=../../External/ngit/bin/NGit.dll
NGIT_DLL_MDB_SOURCE=../../External/ngit/bin/NGit.dll.mdb
NGIT_DLL_MDB=$(BUILD_DIR)/NGit.dll.mdb
SHARPEN_DLL_SOURCE=../../External/ngit/bin/Sharpen.dll
SHARPEN_DLL_MDB_SOURCE=../../External/ngit/bin/Sharpen.dll.mdb
SHARPEN_DLL_MDB=$(BUILD_DIR)/Sharpen.dll.mdb
NSCH_DLL_SOURCE=../../External/ngit/bin/NSch.dll
NSCH_DLL_MDB_SOURCE=../../External/ngit/bin/NSch.dll.mdb
NSCH_DLL_MDB=$(BUILD_DIR)/NSch.dll.mdb
MONO_SECURITY_DLL_SOURCE=../../External/ngit/Dependencies/Mono.Security.dll
SHARPEN_UNIX_DLL_SOURCE=../../External/ngit/bin/Sharpen.Unix.dll
SHARPEN_UNIX_DLL_MDB_SOURCE=../../External/ngit/bin/Sharpen.Unix.dll.mdb
SHARPEN_UNIX_DLL_MDB=$(BUILD_DIR)/Sharpen.Unix.dll.mdb
MONO_POSIX_DLL_SOURCE=../../External/ngit/Dependencies/Mono.Posix.dll

endif

if ENABLE_RELEASE
ASSEMBLY_COMPILER_COMMAND = dmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -optimize+ "-define:RELEASE"
ASSEMBLY = ../../Run/Release/SGit.exe
ASSEMBLY_MDB = 
COMPILE_TARGET = exe
PROJECT_REFERENCES =  \
	../../External/ngit/External/SharpZipLib/bin/Release/ICSharpCode.SharpZipLib.dll \
	../../External/ngit/bin/NGit.dll \
	../../External/ngit/bin/NSch.dll \
	../../External/ngit/bin/Sharpen.dll \
	../../External/ngit/bin/Sharpen.Unix.dll
BUILD_DIR = ../../Run/Release

SGIT_EXE_MDB=
ICSHARPCODE_SHARPZIPLIB_DLL_SOURCE=../../External/ngit/External/SharpZipLib/bin/Release/ICSharpCode.SharpZipLib.dll
ICSHARPCODE_SHARPZIPLIB_DLL_MDB=
NGIT_DLL_SOURCE=../../External/ngit/bin/NGit.dll
NGIT_DLL_MDB=
SHARPEN_DLL_SOURCE=../../External/ngit/bin/Sharpen.dll
SHARPEN_DLL_MDB=
NSCH_DLL_SOURCE=../../External/ngit/bin/NSch.dll
NSCH_DLL_MDB=
MONO_SECURITY_DLL_SOURCE=../../External/ngit/Dependencies/Mono.Security.dll
SHARPEN_UNIX_DLL_SOURCE=../../External/ngit/bin/Sharpen.Unix.dll
SHARPEN_UNIX_DLL_MDB=
MONO_POSIX_DLL_SOURCE=../../External/ngit/Dependencies/Mono.Posix.dll

endif

AL=al
SATELLITE_ASSEMBLY_NAME=$(notdir $(basename $(ASSEMBLY))).resources.dll

PROGRAMFILES = \
	$(SGIT_EXE_MDB) \
	$(ICSHARPCODE_SHARPZIPLIB_DLL) \
	$(ICSHARPCODE_SHARPZIPLIB_DLL_MDB) \
	$(NGIT_DLL) \
	$(NGIT_DLL_MDB) \
	$(SHARPEN_DLL) \
	$(SHARPEN_DLL_MDB) \
	$(NSCH_DLL) \
	$(NSCH_DLL_MDB) \
	$(MONO_SECURITY_DLL) \
	$(SHARPEN_UNIX_DLL) \
	$(SHARPEN_UNIX_DLL_MDB) \
	$(MONO_POSIX_DLL)  

BINARIES = \
	$(SGIT)  


RESGEN=resgen2
	
all: $(ASSEMBLY) $(PROGRAMFILES) $(BINARIES) 

FILES = \
	Main.cs \
	Properties/AssemblyInfo.cs \
	Config/Consts.cs \
	Options/ActionOption.cs \
	Options/ArgumentEnumerator.cs \
	Options/ArgumentSource.cs \
	Options/Category.cs \
	Options/Option.cs \
	Options/OptionContext.cs \
	Options/OptionDelegate.cs \
	Options/OptionSet.cs \
	Options/OptionValueCollection.cs \
	Options/OptionValueType.cs \
	Options/ResponseFileSource.cs \
	Options/StringCoda.cs \
	Exceptions/OptionException.cs \
	Extensions/GeneralExtensions.cs 

DATA_FILES = 

RESOURCES = 

EXTRAS = \
	Properties \
	Config \
	sgit.in 

REFERENCES =  \
	System

DLL_REFERENCES = 

CLEANFILES = $(PROGRAMFILES) $(BINARIES) 

include $(top_srcdir)/Makefile.include

ICSHARPCODE_SHARPZIPLIB_DLL = $(BUILD_DIR)/ICSharpCode.SharpZipLib.dll
NGIT_DLL = $(BUILD_DIR)/NGit.dll
SHARPEN_DLL = $(BUILD_DIR)/Sharpen.dll
NSCH_DLL = $(BUILD_DIR)/NSch.dll
MONO_SECURITY_DLL = $(BUILD_DIR)/Mono.Security.dll
SHARPEN_UNIX_DLL = $(BUILD_DIR)/Sharpen.Unix.dll
MONO_POSIX_DLL = $(BUILD_DIR)/Mono.Posix.dll
SGIT = $(BUILD_DIR)/sgit

$(eval $(call emit-deploy-target,ICSHARPCODE_SHARPZIPLIB_DLL))
$(eval $(call emit-deploy-target,ICSHARPCODE_SHARPZIPLIB_DLL_MDB))
$(eval $(call emit-deploy-target,NGIT_DLL))
$(eval $(call emit-deploy-target,NGIT_DLL_MDB))
$(eval $(call emit-deploy-target,SHARPEN_DLL))
$(eval $(call emit-deploy-target,SHARPEN_DLL_MDB))
$(eval $(call emit-deploy-target,NSCH_DLL))
$(eval $(call emit-deploy-target,NSCH_DLL_MDB))
$(eval $(call emit-deploy-target,MONO_SECURITY_DLL))
$(eval $(call emit-deploy-target,SHARPEN_UNIX_DLL))
$(eval $(call emit-deploy-target,SHARPEN_UNIX_DLL_MDB))
$(eval $(call emit-deploy-target,MONO_POSIX_DLL))
$(eval $(call emit-deploy-wrapper,SGIT,sgit,x))


$(eval $(call emit_resgen_targets))
$(build_xamlg_list): %.xaml.g.cs: %.xaml
	xamlg '$<'

$(ASSEMBLY_MDB): $(ASSEMBLY)

$(ASSEMBLY): $(build_sources) $(build_resources) $(build_datafiles) $(DLL_REFERENCES) $(PROJECT_REFERENCES) $(build_xamlg_list) $(build_satellite_assembly_list)
	mkdir -p $(shell dirname $(ASSEMBLY))
	$(ASSEMBLY_COMPILER_COMMAND) $(ASSEMBLY_COMPILER_FLAGS) -out:$(ASSEMBLY) -target:$(COMPILE_TARGET) $(build_sources_embed) $(build_resources_embed) $(build_references_ref)
