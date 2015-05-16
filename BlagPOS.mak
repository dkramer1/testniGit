
spremembe, narejena v veji1
# ---------------------------------------------------------------------------
!if !$d(BCB)
BCB = $(MAKEDIR)\..
!endif

# ---------------------------------------------------------------------------
# IDE SECTION
# ---------------------------------------------------------------------------
# The following section of the project makefile is managed by the BCB IDE.
# It is recommended to use the IDE to change any of the values in this
# section.
# ---------------------------------------------------------------------------

VERSION = BCB.06.00
# ---------------------------------------------------------------------------
PROJECT = c:\output\BlagPOS.EXE
OBJFILES = c:\output\BlagPOS0100.obj c:\output\BlagPOSDM.obj c:\output\untPostaviPOS.obj c:\output\BlagPOS.obj c:\output\BlagPOS0100_data.obj c:\output\BlagPOS_utils.obj
RESFILES = BlagPOS.res
MAINSOURCE = BlagPOS.CPP
RESDEPEN = $(RESFILES) BlagPOS0100.dfm BlagPOSDM.dfm untPostaviPOS.dfm
LIBFILES = c:\lib\link\Ktst2.lib
IDLFILES = 
IDLGENFILES = 
LIBRARIES =  
PACKAGES =  rtl.bpi vcl.bpi vcldb.bpi vcldbx.bpi vclx.bpi xmlrtl.bpi Indy60.bpi asgc6.bpi bdertl.bpi dbrtl.bpi inet.bpi pb200r65.bpi pc200r65.bpi ps200r65.bpi qrpt.bpi merlanguages.bpi ktsyst2.bpi kovsyst2.bpi KTLOOKUP2.bpi kov2.bpi Ktmp2.bpi
SPARELIBS = 
DEFFILE = 
OTHERFILES = 
# ---------------------------------------------------------------------------
DEBUGLIBPATH = $(BCB)\lib\debug
RELEASELIBPATH = $(BCB)\lib\release

!ifdef DEBUG
USERDEFINES = BTI_WIN_32;_DEBUG
!else
USERDEFINES = BTI_WIN_32
!endif

!ifdef DEBUG
SYSDEFINES = NO_STRICT;_RTLDLL;USEPACKAGES
!else
SYSDEFINES = NO_STRICT;_RTLDLL;USEPACKAGES
!endif

INCLUDEPATH = c:\include\System;$(BCB)\include;$(BCB)\include\vcl;c:\include\gnostice;c:\include\KbmMemTable;c:\include\Pos;c:\include\Rave;c:\include\Zlib;c:\include
LIBPATH = c:\komp\link;$(BCB)\lib\obj;$(BCB)\lib
WARNINGS= -w8092 -w8091 -w8090 -w8089 -w8087 -wprc -wuse -wucp -wstv -wstu -wsig \
    -wpin -w-par -w-use -wnod -wnak -w-8027 -w-8026 -wdef -wcln -wbbf -wasm -wamp -wamb -w-8058
PATHCPP = .;
PATHASM = .;
PATHPAS = .;
PATHRC = .;
PATHOBJ = .;$(LIBPATH)
# ---------------------------------------------------------------------------

!ifdef DEBUG
CFLAG1 = -Od -H=c:\vcl60.csm -Hc -Vx -Ve -X- -r- -a8 -b- -k -y -v -vi- -c -tWM -tW
IDLCFLAGS = -I$(BCB)\include -I$(BCB)\include\vcl -Ic:\include -src_suffix cpp \
    -DBTI_WIN_32 -D_DEBUG -boa
PFLAGS = -N2C:\OUTPUT -N0C:\OUTPUT -$Y- -$L- -$D- -$A8 -v -JPHNE -M
RFLAGS = 
AFLAGS = /mx /w2 /zi
LFLAGS = -IC:\OUTPUT -D"" -aa -Tpe -x -Gn -v
!else
CFLAG1 = -O2 -H=c:\vcl60.csm -Hc -Vx -Ve -X- -a8 -b- -k- -vi -c -tWM -tW
IDLCFLAGS = -I$(BCB)\include -I$(BCB)\include\vcl -Ic:\include -src_suffix cpp \
    -DBTI_WIN_32 -boa
PFLAGS = -N2C:\OUTPUT -N0C:\OUTPUT -$Y- -$L- -$D- -$A8 -v -JPHNE -M
RFLAGS = 
AFLAGS = /mx /w2 /zn
LFLAGS = -IC:\OUTPUT -D"" -aa -Tpe -x -Gn
!endif

# ---------------------------------------------------------------------------
ALLOBJ = c0w32.obj   $(PACKAGES) Memmgr.Lib sysinit.obj $(OBJFILES)
ALLRES = $(RESFILES)
ALLLIB = $(LIBFILES) $(LIBRARIES) import32.lib cp32mti.lib
# ---------------------------------------------------------------------------
!ifdef IDEOPTIONS

[Version Info]
IncludeVerInfo=0
AutoIncBuild=0
MajorVer=1
MinorVer=0
Release=0
Build=0
Debug=0
PreRelease=0
Special=0
Private=0
DLL=0

[Version Info Keys]
CompanyName=
FileDescription=
FileVersion=1.0.0.0
InternalName=
LegalCopyright=
LegalTrademarks=
OriginalFilename=
ProductName=
ProductVersion=1.0.0.0
Comments=

[Debugging]
DebugSourceDirs=$(BCB)\source\vcl

!endif





# ---------------------------------------------------------------------------
# MAKE SECTION
# ---------------------------------------------------------------------------
# This section of the project file is not used by the BCB IDE.  It is for
# the benefit of building from the command-line using the MAKE utility.
# ---------------------------------------------------------------------------

.autodepend
# ---------------------------------------------------------------------------
!if "$(USERDEFINES)" != ""
AUSERDEFINES = -d$(USERDEFINES:;= -d)
!else
AUSERDEFINES =
!endif

!if !$d(BCC32)
BCC32 = bcc32
!endif

!if !$d(CPP32)
CPP32 = cpp32
!endif

!if !$d(DCC32)
DCC32 = dcc32
!endif

!if !$d(TASM32)
TASM32 = tasm32
!endif

!if !$d(LINKER)
LINKER = ilink32
!endif

!if !$d(BRCC32)
BRCC32 = brcc32
!endif


# ---------------------------------------------------------------------------
!if $d(PATHCPP)
.PATH.CPP = $(PATHCPP)
.PATH.C   = $(PATHCPP)
!endif

!if $d(PATHPAS)
.PATH.PAS = $(PATHPAS)
!endif

!if $d(PATHASM)
.PATH.ASM = $(PATHASM)
!endif

!if $d(PATHRC)
.PATH.RC  = $(PATHRC)
!endif

!if $d(PATHOBJ)
.PATH.OBJ  = $(PATHOBJ)
!endif
# ---------------------------------------------------------------------------
$(PROJECT): $(OTHERFILES) $(IDLGENFILES) $(OBJFILES) $(RESDEPEN) $(DEFFILE)
    $(BCB)\BIN\$(LINKER) @&&!
    $(LFLAGS) -L$(LIBPATH) +
    $(ALLOBJ), +
    $(PROJECT),, +
    $(ALLLIB), +
    $(DEFFILE), +
    $(ALLRES)
!
# ---------------------------------------------------------------------------
.pas.hpp:
    $(BCB)\BIN\$(DCC32) $(PFLAGS) -U$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -O$(INCLUDEPATH) --BCB {$< }

.pas.obj:
    $(BCB)\BIN\$(DCC32) $(PFLAGS) -U$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -O$(INCLUDEPATH) --BCB {$< }

.cpp.obj:
    $(BCB)\BIN\$(BCC32) $(CFLAG1) $(WARNINGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -n$(@D) {$< }

.c.obj:
    $(BCB)\BIN\$(BCC32) $(CFLAG1) $(WARNINGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -n$(@D) {$< }

.c.i:
    $(BCB)\BIN\$(CPP32) $(CFLAG1) $(WARNINGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -n. {$< }

.cpp.i:
    $(BCB)\BIN\$(CPP32) $(CFLAG1) $(WARNINGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -n. {$< }

.asm.obj:
    $(BCB)\BIN\$(TASM32) $(AFLAGS) -i$(INCLUDEPATH:;= -i) $(AUSERDEFINES) -d$(SYSDEFINES:;= -d) $<, $@

.rc.res:
    $(BCB)\BIN\$(BRCC32) $(RFLAGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -fo$@ $<

 sedaj delamo spremembo na veji 24, dodatek

# ---------------------------------------------------------------------------




