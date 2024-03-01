project "LibLZO"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"./include",
		"./src"
	}

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c" },
		["Docs"] = "**.md"
	}

	files {
		"src/*.c",
		"include/*.h",
	}

	filter "system:Windows"
		disablewarnings { "4996" }
		characterset "MBCS"
		defines { "_MBCS" }
		flags { "MultiProcessorCompile" }

	filter "system:bsd"
		buildoptions { "-m32 -fPIC -shared" }