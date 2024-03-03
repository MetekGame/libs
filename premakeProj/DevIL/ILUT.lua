project "LibILUT"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"%{!wks.location}/vendor/DevIL/DevIL/src-ILU/include",
		"%{!wks.location}/vendor/DevIL/DevIL/include"
	}

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md"
	}

	files {
		"%{!wks.location}/vendor/DevIL/DevIL/src-ILU/include/**.h",
		"%{!wks.location}/vendor/DevIL/DevIL/include/**.h",
		"%{!wks.location}/vendor/DevIL/DevIL/src-ILU/src/**.cpp",
	}
	defines { "IL_STATIC_LIB", "IL_USE_PRAGMA_LIBS" }

	filter "configurations:Release"
		defines {"NDEBUG"}

	filter "configurations:Debug"
		symbols "On"
		defines { "_DEBUG" }

	filter "system:Windows"
		disablewarnings { "4996" }
		defines { "WIN32", "ALLEGRO_MSVC", "_WINDOWS" }
		postbuildcommands {
			"{COPYFILE} %[%{!wks.location}vendor/DevIL/DevIL/include/*.h] %[%{!wks.location}Libs/include/]",
			"{COPYFILE} %[%{!wks.location}vendor/DevIL/DevIL/include/devil_cpp_wrapper.hpp] %[%{!wks.location}Libs/include/]",
			"{COPYFILE} %[%{!wks.location}premakeProj/DevIL/config.h] %[%{!wks.location}Libs/include/]"
		}

	filter "system:not windows"
		postbuildcommands {
			"{MKDIR} %{!wks.location}/Libs/include/IL",
			"{COPYFILE} -n %{!wks.location}/vendor/DevIL/DevIL/include/IL/*.h %{!wks.location}/Libs/include/IL/ 2>&1",
			"{COPYFILE} -n %{!wks.location}/vendor/DevIL/DevIL/include/IL/devil_cpp_wrapper.hpp %{!wks.location}/Libs/include/IL/ 2>&1",
			"{COPYFILE} -n %{!wks.location}/premakeProj/DevIL/config.h %{!wks.location}/Libs/include/IL/ 2>&1"
		}