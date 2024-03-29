project "LibLZO"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

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
		postbuildcommands {
			"{MKDIR} %{!wks.location}/Libs/include/lzo",
			"{COPYFILE} %[%{!wks.location}vendor/lzo/include/lzo/*.h] %[%{!wks.location}Libs/include/lzo/]",
		}

	filter "system:not windows"
		postbuildcommands {
			"{MKDIR} %{!wks.location}/Libs/include/lzo",
			"{COPYFILE} -n %{!wks.location}/vendor/lzo/include/lzo/*.h %{!wks.location}/Libs/include/lzo/ 2>&1 || true",
		}

	filter "system:bsd"
		buildoptions { "-fPIC" }