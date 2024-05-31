project "LibJPEG"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c" },
		["Docs"] = "**.md"
	}
	
	files {
		"%{!wks.location}/vendor/jpeg/jaricom.c", "%{!wks.location}/vendor/jpeg/jcapimin.c", "%{!wks.location}/vendor/jpeg/jcapistd.c", "%{!wks.location}/vendor/jpeg/jcarith.c", "%{!wks.location}/vendor/jpeg/jccoefct.c", "%{!wks.location}/vendor/jpeg/jccolor.c", 
		"%{!wks.location}/vendor/jpeg/jcdctmgr.c", "%{!wks.location}/vendor/jpeg/jchuff.c", "%{!wks.location}/vendor/jpeg/jcinit.c", "%{!wks.location}/vendor/jpeg/jcmainct.c", "%{!wks.location}/vendor/jpeg/jcmarker.c", "%{!wks.location}/vendor/jpeg/jcmaster.c", 
		"%{!wks.location}/vendor/jpeg/jcomapi.c", "%{!wks.location}/vendor/jpeg/jcparam.c", "%{!wks.location}/vendor/jpeg/jcprepct.c", "%{!wks.location}/vendor/jpeg/jcsample.c", "%{!wks.location}/vendor/jpeg/jctrans.c", "%{!wks.location}/vendor/jpeg/jdapimin.c", 
		"%{!wks.location}/vendor/jpeg/jdapistd.c", "%{!wks.location}/vendor/jpeg/jdarith.c", "%{!wks.location}/vendor/jpeg/jdatadst.c", "%{!wks.location}/vendor/jpeg/jdatasrc.c", "%{!wks.location}/vendor/jpeg/jdcoefct.c", "%{!wks.location}/vendor/jpeg/jdcolor.c", 
		"%{!wks.location}/vendor/jpeg/jddctmgr.c", "%{!wks.location}/vendor/jpeg/jdhuff.c", "%{!wks.location}/vendor/jpeg/jdinput.c", "%{!wks.location}/vendor/jpeg/jdmainct.c", "%{!wks.location}/vendor/jpeg/jdmarker.c", "%{!wks.location}/vendor/jpeg/jdmaster.c", 
		"%{!wks.location}/vendor/jpeg/jdmerge.c", "%{!wks.location}/vendor/jpeg/jdpostct.c", "%{!wks.location}/vendor/jpeg/jdsample.c", "%{!wks.location}/vendor/jpeg/jdtrans.c", "%{!wks.location}/vendor/jpeg/jerror.c", "%{!wks.location}/vendor/jpeg/jfdctflt.c", 
		"%{!wks.location}/vendor/jpeg/jfdctfst.c", "%{!wks.location}/vendor/jpeg/jfdctint.c", "%{!wks.location}/vendor/jpeg/jidctflt.c", "%{!wks.location}/vendor/jpeg/jidctfst.c", "%{!wks.location}/vendor/jpeg/jidctint.c", "%{!wks.location}/vendor/jpeg/jmemmgr.c", 
		"%{!wks.location}/vendor/jpeg/jmemnobs.c", "%{!wks.location}/vendor/jpeg/jquant1.c", "%{!wks.location}/vendor/jpeg/jquant2.c", "%{!wks.location}/vendor/jpeg/jutils.c"
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
