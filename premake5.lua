workspace "Metek Game libs"
	configurations { "Debug", "Release" }
	platforms { "Clang", "MSVC" }
	architecture "x86"
	staticruntime "on"
	vectorextensions "SSE2"

	--Lib defines
	defines { "ZMQ_STATIC", "IL_STATIC_LIB" }
	defines { "CRYPTOPP_DISABLE_MIXED_ASM", "CRYPTOPP_DISABLE_SHANI", "CRYPTOPP_DISABLE_AESNI" }

	--postbuildcommands {
	--	"{MKDIR} %{!wks.location}/Libs/include",
	--}

	filter { "system:Windows", "platforms:MSVC" }
		system "Windows"
		toolset "v143"

	filter { "system:not windows", "platforms:MSVC" }
		toolset "clang"

	filter { "platforms:Clang" }
		toolset "clang"

	filter { "configurations:Debug" }
		defines { "DEBUG" }

	filter { "configurations:Release" }
		defines { "NDEBUG" }

	filter { "system:Windows", "configurations:Debug" }
		runtime "Debug"

	filter { "system:Windows", "configurations:Release" }
		runtime "Release"

	filter { "system:bsd", "configurations:Debug" }
		symbols "on"
		buildoptions { "-g -Og" }

	filter { "system:bsd", "configurations:Release" }
		symbols "off"
		buildoptions { "-O3" }

	filter { "system:bsd" }
		isaextensions { "PCLMUL", "AES" }
		vectorextensions "AVX2"
		buildoptions { "-m32" }
	
	filter { "system:Windows" }
		disablewarnings { "4996", "4100" }
		characterset "MBCS"
		--flags { "MultiProcessorCompile" }
		defines { "_MBCS", "WIN32", "__WIN32__", "_WIN32" }
		buildoptions { "/Zc:__cplusplus" }

	if os.target() == "windows" then
		disablewarnings {
			"4100", --  unreferenced formal parameter
		}
	else
		disablewarnings {
			"unused-parameter",
		}
	end

	group "External"
		--include "/vendor-shared/lua-5.0.3/LUA.lua"
		include "/premakeProj/jpeg/LIB_JPEG.lua"
		include "/premakeProj/argon2/LIB_ARGON2.lua"
		include "/premakeProj/mariadb-connector-c/MARIA_DB_CONNECTOR.lua"
		include "/premakeProj/lzo/LIB_LZO.lua"
		include "/premakeProj/fmt/FMT.lua"
		include "/premakeProj/spdlog/SPDLOG.lua"
		include "/premakeProj/libzmq/LibZeroMQ.lua"
		include "/premakeProj/zlib/ZLIB.lua"
		include "/premakeProj/libPng/LIB_PNG.lua"
		--include "/premakeProj/cryptopp/CRYPTO_PP.lua"

	group "External/DevIL"
		include "/premakeProj/DevIL/IL.lua"
		include "/premakeProj/DevIL/ILU.lua"
		--include "/premakeProj/DevIL/ILUT.lua"