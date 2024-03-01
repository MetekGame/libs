project "LibArgon2"
	kind "StaticLib"
	language "C"
	warnings "Extra"
	staticruntime "on"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
        "./include",
        "./src"
    }

	vpaths {
        ["Headers"] = { "**.h" },
        ["Sources"] = { "**.c", "**.cpp" },
        ["Docs"] = "**.md"
    }

	files {
		"include/**.h",
		"src/argon2.c",
		"src/core.c",
		"src/blake2/blake2b.c",
		"src/thread.c",
		"src/encoding.c",
		"src/ref.c",
		"src/run.c"
	}

	filter "system:Windows"
        disablewarnings { "4996" }
        characterset "MBCS"
        defines { "_MBCS" }
        flags { "MultiProcessorCompile" }

    filter "system:bsd"
        buildoptions { "-m32 -std=c89 -O3 -fPIC -fvisibility=hidden -DA2_VISCTL=1 -Werror=declaration-after-statement -D_FORTIFY_SOURCE=2 -Wextra -Wno-type-limits -Werror -DTEST_LARGE_RAM"}