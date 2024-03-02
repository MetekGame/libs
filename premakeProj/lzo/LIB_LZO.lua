project "LibLZO"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	postbuildcommands { 
		"{COPYDIR} %[%{!wks.location}/vendor/lzo/include] %[%{!wks.location}/Libs/include/]"
	}

	includedirs {
		"%{!wks.location}/vendor/lzo/include",
		"%{!wks.location}/vendor/lzo/src"
	}

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c" },
		["Docs"] = "**.md"
	}

	files {
		"%{!wks.location}/vendor/lzo/src/*.c",
		"%{!wks.location}/vendor/lzo/include/*.h",
	}

	filter "system:Windows"
		disablewarnings { "4996" }
		defines { "_MBCS" }
		flags { "MultiProcessorCompile" }

	filter "system:bsd"
		buildoptions { "-fPIC -shared" }