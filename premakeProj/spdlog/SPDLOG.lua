project "LibSpdLog"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"
	staticruntime "on"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	defines { "SPDLOG_COMPILED_LIB", "SPDLOG_FMT_EXTERNAL" }

	includedirs {
		"%{!wks.location}/vendor/spdlog/include/"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources/*"] = { "**.cpp" },
		["Docs"] = "**.md"
	}

	externalincludedirs { 
		"%{!wks.location}/vendor/fmt/include/"
	}

	files {
		"%{!wks.location}/vendor/spdlog/include/**.h",
		"%{!wks.location}/vendor/spdlog/src/**.cpp",
	}

	removefiles {
		"%{!wks.location}/vendor/spdlog/src/bundled_fmtlib_format.cpp",
	}

	filter "system:Windows"
		disablewarnings { "4324", "4100" }
		postbuildcommands {
			"{MKDIR} %{!wks.location}/Libs/include/spdlog",
			"{COPYFILE} %[%{!wks.location}vendor/spdlog/include/spdlog/*.h] %[%{!wks.location}Libs/include/spdlog/]",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/cfg",
			"{COPYFILE} %[%{!wks.location}vendor/spdlog/include/spdlog/cfg/*.h] %[%{!wks.location}Libs/include/spdlog/cfg/]",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/details",
			"{COPYFILE} %[%{!wks.location}vendor/spdlog/include/spdlog/details/*.h] %[%{!wks.location}Libs/include/spdlog/details/]",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/fmt",
			"{COPYFILE} %[%{!wks.location}vendor/spdlog/include/spdlog/fmt/*.h] %[%{!wks.location}Libs/include/spdlog/fmt/]",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/fmt/bundled",
			"{COPYFILE} %[%{!wks.location}vendor/spdlog/include/spdlog/fmt/bundled/*.h] %[%{!wks.location}Libs/include/spdlog/fmt/bundled/]",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/sinks",
			"{COPYFILE} %[%{!wks.location}vendor/spdlog/include/spdlog/sinks/*.h] %[%{!wks.location}Libs/include/spdlog/sinks/]",
		}

	filter "system:not windows"
		postbuildcommands {
			"{MKDIR} %{!wks.location}/Libs/include/spdlog",
			"{COPYFILE} -n %{!wks.location}/vendor/spdlog/include/spdlog/*.h %{!wks.location}/Libs/include/spdlog/",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/cfg",
			"{COPYFILE} -n %{!wks.location}/vendor/spdlog/include/spdlog/cfg/*.h %{!wks.location}/Libs/include/spdlog/cfg/",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/details",
			"{COPYFILE} -n %{!wks.location}/vendor/spdlog/include/spdlog/details/*.h %{!wks.location}/Libs/include/spdlog/details/",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/fmt",
			"{COPYFILE} -n %{!wks.location}/vendor/spdlog/include/spdlog/fmt/*.h %{!wks.location}/Libs/include/spdlog/fmt/",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/fmt/bundled",
			"{COPYFILE} -n %{!wks.location}/vendor/spdlog/include/spdlog/fmt/bundled/*.h %{!wks.location}/Libs/include/spdlog/fmt/bundled/",
			"{MKDIR} %{!wks.location}/Libs/include/spdlog/sinks",
			"{COPYFILE} -n %{!wks.location}/vendor/spdlog/include/spdlog/sinks/*.h %{!wks.location}/Libs/include/spdlog/sinks/",
		}