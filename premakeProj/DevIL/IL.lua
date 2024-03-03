project "LibIL"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"%{!wks.location}/vendor/DevIL/DevIL/src-IL/include",
		"%{!wks.location}/vendor/DevIL/DevIL/include",
		"./"
	}

	externalincludedirs {
		"%{!wks.location}/vendor/jpeg/"
	}

	defines { "IL_STATIC_LIB", "JPEGSTATIC", "HAVE_CONFIG_H" }

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md"
	}

	files {
		"%{!wks.location}/vendor/DevIL/DevIL/src-IL/include/**.h",
		"%{!wks.location}/vendor/DevIL/DevIL/include/**.h",
		"%{!wks.location}/vendor/DevIL/DevIL/src-IL/src/**.cpp",
	}

	filter "configurations:Release"
		defines { "NDEBUG" }

	filter "configurations:Debug"
		symbols "On"
		defines { "_DEBUG" }
	
	filter "system:Windows"
		disablewarnings { "4996" }
		defines { "WIN32", "_WINDOWS" }
		postbuildcommands {
			"{MKDIR} %{!wks.location}/Libs/include/IL",
			"{COPYFILE} %[%{!wks.location}vendor/DevIL/DevIL/include/IL/*.h] %[%{!wks.location}Libs/include/IL/]",
			"{COPYFILE} %[%{!wks.location}vendor/DevIL/DevIL/include/IL/devil_cpp_wrapper.hpp] %[%{!wks.location}Libs/include/IL/]",
			"{COPYFILE} %[%{!wks.location}premakeProj/DevIL/config.h] %[%{!wks.location}Libs/include/IL/]"
		}

	filter "system:not windows"
		postbuildcommands {
			"{MKDIR} %{!wks.location}/Libs/include/IL",
			"{COPYFILE} -n %{!wks.location}/vendor/DevIL/DevIL/include/IL/*.h %{!wks.location}/Libs/include/IL/",
			"{COPYFILE} -n %{!wks.location}/vendor/DevIL/DevIL/include/IL/devil_cpp_wrapper.hpp %{!wks.location}/Libs/include/IL/",
			"{COPYFILE} -n %{!wks.location}/premakeProj/DevIL/config.h %{!wks.location}/Libs/include/IL/"
		}