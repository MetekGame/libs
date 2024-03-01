project "LibFMT"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"./include/"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources"] = { "**.cc" },
		["Docs"] = "**.md"
	}

	files {
		"include/**.h",
		"src/format.cc",
		"src/os.cc"
	}

	filter "system:Windows"
		characterset "MBCS"
		defines { "_WINDOWS", "WIN32" }
		flags { "MultiProcessorCompile" }

	filter "system:bsd"
		buildoptions { "-m32" }
