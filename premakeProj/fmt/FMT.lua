project "LibFMT"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	postbuildcommands { 
		"{COPYDIR} %[%{!wks.location}/vendor/fmt/include] %[%{!wks.location}/Libs/include/]"
	}

	includedirs {
		"%{!wks.location}/vendor/fmt/include/"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources"] = { "**.cc" },
		["Docs"] = "**.md"
	}

	files {
		"%{!wks.location}/vendor/fmt/include/**.h",
		"%{!wks.location}/vendor/fmt/src/format.cc",
		"%{!wks.location}/vendor/fmt/src/os.cc"
	}

	filter "system:Windows"
		defines { "_WINDOWS", "WIN32" }
