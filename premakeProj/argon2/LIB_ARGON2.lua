project "LibArgon2"
	kind "StaticLib"
	language "C"
	warnings "Extra"
	staticruntime "on"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"%{!wks.location}/vendor/argon2/include/",
		"%{!wks.location}/vendor/argon2/src/"
	}

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md"
	}

	files {
		"%{!wks.location}/vendor/argon2/include/**.h",
		"%{!wks.location}/vendor/argon2/src/argon2.c",
		"%{!wks.location}/vendor/argon2/src/core.c",
		"%{!wks.location}/vendor/argon2/src/blake2/blake2b.c",
		"%{!wks.location}/vendor/argon2/src/thread.c",
		"%{!wks.location}/vendor/argon2/src/encoding.c",
		"%{!wks.location}/vendor/argon2/src/ref.c",
		"%{!wks.location}/vendor/argon2/src/run.c"
	}

	filter "system:bsd"
		defines {
			"A2_VISCTL=1",
			"_FORTIFY_SOURCE=2",
			"TEST_LARGE_RAM",
		}
		buildoptions { "-std=c89 -fPIC -fvisibility=hidden -Werror=declaration-after-statement -Wno-type-limits -Werror"}
