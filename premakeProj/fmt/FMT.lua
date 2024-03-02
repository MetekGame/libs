project "LibFMT"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	postbuildcommands { "{COPYDIR} %[%{!wks.location}vendor/fmt/include] %[%{!cfg.targetdir}/../include]" }

	includedirs {
		"../../vendor/fmt/include/"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources"] = { "**.cc" },
		["Docs"] = "**.md"
	}

	files {
		"../../vendor/fmt/include/**.h",
		"../../vendor/fmt/src/format.cc",
		"../../vendor/fmt/src/os.cc"
	}

	filter "system:Windows"
		defines { "_WINDOWS", "WIN32" }
		flags { "MultiProcessorCompile" }
