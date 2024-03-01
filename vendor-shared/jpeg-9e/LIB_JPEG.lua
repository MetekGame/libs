project "LibJPEG"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c" },
		["Docs"] = "**.md"
	}

	files {
		"jaricom.c", "jcapimin.c", "jcapistd.c", "jcarith.c", "jccoefct.c", "jccolor.c", 
		"jcdctmgr.c", "jchuff.c", "jcinit.c", "jcmainct.c", "jcmarker.c", "jcmaster.c", 
		"jcomapi.c", "jcparam.c", "jcprepct.c", "jcsample.c", "jctrans.c", "jdapimin.c", 
		"jdapistd.c", "jdarith.c", "jdatadst.c", "jdatasrc.c", "jdcoefct.c", "jdcolor.c", 
		"jddctmgr.c", "jdhuff.c", "jdinput.c", "jdmainct.c", "jdmarker.c", "jdmaster.c", 
		"jdmerge.c", "jdpostct.c", "jdsample.c", "jdtrans.c", "jerror.c", "jfdctflt.c", 
		"jfdctfst.c", "jfdctint.c", "jidctflt.c", "jidctfst.c", "jidctint.c", "jmemmgr.c", 
		"jmemnobs.c", "jquant1.c", "jquant2.c", "jutils.c"
	}

	filter "configurations:Debug"
		symbols "On"
		defines { "_DEBUG" }

	filter "configurations:Release"
		optimize "On"
		defines { "NDEBUG" }

	filter "system:Windows"
		disablewarnings { "4996" }
		characterset "MBCS"
		defines { "_LIB", "WIN32", "_CRT_SECURE_NO_WARNINGS" }
		flags { "MultiProcessorCompile" }
