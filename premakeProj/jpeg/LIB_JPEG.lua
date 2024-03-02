project "LibJPEG"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	postbuildcommands { "{COPYFILE} %[%{!wks.location}/vendor/jpeg/*.h] %[%{!cfg.targetdir}/../include/]" }

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c" },
		["Docs"] = "**.md"
	}
	
	files {
		"../../vendor/jpeg/jaricom.c", "../../vendor/jpeg/jcapimin.c", "../../vendor/jpeg/jcapistd.c", "../../vendor/jpeg/jcarith.c", "../../vendor/jpeg/jccoefct.c", "../../vendor/jpeg/jccolor.c", 
		"../../vendor/jpeg/jcdctmgr.c", "../../vendor/jpeg/jchuff.c", "../../vendor/jpeg/jcinit.c", "../../vendor/jpeg/jcmainct.c", "../../vendor/jpeg/jcmarker.c", "../../vendor/jpeg/jcmaster.c", 
		"../../vendor/jpeg/jcomapi.c", "../../vendor/jpeg/jcparam.c", "../../vendor/jpeg/jcprepct.c", "../../vendor/jpeg/jcsample.c", "../../vendor/jpeg/jctrans.c", "../../vendor/jpeg/jdapimin.c", 
		"../../vendor/jpeg/jdapistd.c", "../../vendor/jpeg/jdarith.c", "../../vendor/jpeg/jdatadst.c", "../../vendor/jpeg/jdatasrc.c", "../../vendor/jpeg/jdcoefct.c", "../../vendor/jpeg/jdcolor.c", 
		"../../vendor/jpeg/jddctmgr.c", "../../vendor/jpeg/jdhuff.c", "../../vendor/jpeg/jdinput.c", "../../vendor/jpeg/jdmainct.c", "../../vendor/jpeg/jdmarker.c", "../../vendor/jpeg/jdmaster.c", 
		"../../vendor/jpeg/jdmerge.c", "../../vendor/jpeg/jdpostct.c", "../../vendor/jpeg/jdsample.c", "../../vendor/jpeg/jdtrans.c", "../../vendor/jpeg/jerror.c", "../../vendor/jpeg/jfdctflt.c", 
		"../../vendor/jpeg/jfdctfst.c", "../../vendor/jpeg/jfdctint.c", "../../vendor/jpeg/jidctflt.c", "../../vendor/jpeg/jidctfst.c", "../../vendor/jpeg/jidctint.c", "../../vendor/jpeg/jmemmgr.c", 
		"../../vendor/jpeg/jmemnobs.c", "../../vendor/jpeg/jquant1.c", "../../vendor/jpeg/jquant2.c", "../../vendor/jpeg/jutils.c"
	}

	filter "configurations:Debug"
		symbols "On"
		defines { "_DEBUG" }

	filter "configurations:Release"
		optimize "On"
		defines { "NDEBUG" }

	filter "system:Windows"
		disablewarnings { "4996" }
		defines { "_LIB", "WIN32", "_CRT_SECURE_NO_WARNINGS" }
		flags { "MultiProcessorCompile" }
