project "CryptoPP"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	defines { "USE_PRECOMPILED_HEADERS" }

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md",
	}

	includedirs {
		"./"
	}

	files {
		"%{!wks.location}/premakeProj/cryptopp/*.h",
		"%{!wks.location}/vendor/cryptopp/*.h",
		--"%{!wks.location}/vendor/cryptopp/*.cpp",
	}

	-- removefiles {
	-- 	"%{!wks.location}/vendor/cryptopp/config_os.h",
	-- }

	-- excludes {
	-- 	"%{!wks.location}/vendor/cryptopp/bench1.cpp",
	-- 	"%{!wks.location}/vendor/cryptopp/bench2.cpp",
	-- 	"%{!wks.location}/vendor/cryptopp/bench3.cpp",
	-- 	"%{!wks.location}/vendor/cryptopp/dll.cpp",
	-- 	"%{!wks.location}/vendor/cryptopp/power7_ppc.cpp",
	-- 	"%{!wks.location}/vendor/cryptopp/power8_ppc.cpp",
	-- 	"%{!wks.location}/vendor/cryptopp/power9_ppc.cpp",
	-- 	"%{!wks.location}/vendor/cryptopp/ppc_simd.cpp",
	-- }

	files {
		"%{!wks.location}/vendor/cryptopp/cryptlib.cpp",
		"%{!wks.location}/vendor/cryptopp/cpu.cpp",
		"%{!wks.location}/vendor/cryptopp/integer.cpp",
		"%{!wks.location}/vendor/cryptopp/3way.cpp",
		"%{!wks.location}/vendor/cryptopp/adler32.cpp",
		"%{!wks.location}/vendor/cryptopp/algebra.cpp",
		"%{!wks.location}/vendor/cryptopp/algparam.cpp",
		"%{!wks.location}/vendor/cryptopp/allocate.cpp",
		"%{!wks.location}/vendor/cryptopp/arc4.cpp",
		"%{!wks.location}/vendor/cryptopp/aria.cpp",
		"%{!wks.location}/vendor/cryptopp/ariatab.cpp",
		"%{!wks.location}/vendor/cryptopp/asn.cpp",
		"%{!wks.location}/vendor/cryptopp/authenc.cpp",
		"%{!wks.location}/vendor/cryptopp/base32.cpp",
		"%{!wks.location}/vendor/cryptopp/base64.cpp",
		"%{!wks.location}/vendor/cryptopp/basecode.cpp",
		"%{!wks.location}/vendor/cryptopp/bfinit.cpp",
		"%{!wks.location}/vendor/cryptopp/blake2.cpp",
		"%{!wks.location}/vendor/cryptopp/blowfish.cpp",
		"%{!wks.location}/vendor/cryptopp/blumshub.cpp",
		"%{!wks.location}/vendor/cryptopp/camellia.cpp",
		"%{!wks.location}/vendor/cryptopp/cast.cpp",
		"%{!wks.location}/vendor/cryptopp/casts.cpp",
		"%{!wks.location}/vendor/cryptopp/cbcmac.cpp",
		"%{!wks.location}/vendor/cryptopp/ccm.cpp",
		"%{!wks.location}/vendor/cryptopp/chacha.cpp",
		"%{!wks.location}/vendor/cryptopp/chacha_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/chachapoly.cpp",
		"%{!wks.location}/vendor/cryptopp/cham.cpp",
		"%{!wks.location}/vendor/cryptopp/channels.cpp",
		"%{!wks.location}/vendor/cryptopp/cmac.cpp",
		"%{!wks.location}/vendor/cryptopp/crc.cpp",
		"%{!wks.location}/vendor/cryptopp/darn.cpp",
		"%{!wks.location}/vendor/cryptopp/default.cpp",
		"%{!wks.location}/vendor/cryptopp/des.cpp",
		"%{!wks.location}/vendor/cryptopp/dessp.cpp",
		"%{!wks.location}/vendor/cryptopp/dh.cpp",
		"%{!wks.location}/vendor/cryptopp/dh2.cpp",
		"%{!wks.location}/vendor/cryptopp/dll.cpp",
		"%{!wks.location}/vendor/cryptopp/donna_32.cpp",
		"%{!wks.location}/vendor/cryptopp/donna_64.cpp",
		"%{!wks.location}/vendor/cryptopp/donna_sse.cpp",
		"%{!wks.location}/vendor/cryptopp/dsa.cpp",
		"%{!wks.location}/vendor/cryptopp/eax.cpp",
		"%{!wks.location}/vendor/cryptopp/ec2n.cpp",
		"%{!wks.location}/vendor/cryptopp/ecp.cpp",
		"%{!wks.location}/vendor/cryptopp/elgamal.cpp",
		"%{!wks.location}/vendor/cryptopp/emsa2.cpp",
		"%{!wks.location}/vendor/cryptopp/esign.cpp",
		"%{!wks.location}/vendor/cryptopp/files.cpp",
		"%{!wks.location}/vendor/cryptopp/filters.cpp",
		"%{!wks.location}/vendor/cryptopp/fips140.cpp",
		"%{!wks.location}/vendor/cryptopp/fipstest.cpp",
		"%{!wks.location}/vendor/cryptopp/gcm.cpp",
		"%{!wks.location}/vendor/cryptopp/gcm_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/gf256.cpp",
		"%{!wks.location}/vendor/cryptopp/gf2_32.cpp",
		"%{!wks.location}/vendor/cryptopp/gf2n.cpp",
		"%{!wks.location}/vendor/cryptopp/gf2n_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/gfpcrypt.cpp",
		"%{!wks.location}/vendor/cryptopp/gost.cpp",
		"%{!wks.location}/vendor/cryptopp/gzip.cpp",
		"%{!wks.location}/vendor/cryptopp/hc128.cpp",
		"%{!wks.location}/vendor/cryptopp/hc256.cpp",
		"%{!wks.location}/vendor/cryptopp/hex.cpp",
		"%{!wks.location}/vendor/cryptopp/hight.cpp",
		"%{!wks.location}/vendor/cryptopp/hmac.cpp",
		"%{!wks.location}/vendor/cryptopp/hrtimer.cpp",
		"%{!wks.location}/vendor/cryptopp/ida.cpp",
		"%{!wks.location}/vendor/cryptopp/idea.cpp",
		"%{!wks.location}/vendor/cryptopp/iterhash.cpp",
		"%{!wks.location}/vendor/cryptopp/kalyna.cpp",
		"%{!wks.location}/vendor/cryptopp/kalynatab.cpp",
		"%{!wks.location}/vendor/cryptopp/keccak.cpp",
		"%{!wks.location}/vendor/cryptopp/keccak_core.cpp",
		"%{!wks.location}/vendor/cryptopp/keccak_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/lea.cpp",
		"%{!wks.location}/vendor/cryptopp/lea_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/lsh256.cpp",
		"%{!wks.location}/vendor/cryptopp/lsh256_sse.cpp",
		"%{!wks.location}/vendor/cryptopp/lsh512.cpp",
		"%{!wks.location}/vendor/cryptopp/lsh512_sse.cpp",
		"%{!wks.location}/vendor/cryptopp/luc.cpp",
		"%{!wks.location}/vendor/cryptopp/mars.cpp",
		"%{!wks.location}/vendor/cryptopp/marss.cpp",
		"%{!wks.location}/vendor/cryptopp/md2.cpp",
		"%{!wks.location}/vendor/cryptopp/md4.cpp",
		"%{!wks.location}/vendor/cryptopp/md5.cpp",
		"%{!wks.location}/vendor/cryptopp/misc.cpp",
		"%{!wks.location}/vendor/cryptopp/modes.cpp",
		"%{!wks.location}/vendor/cryptopp/mqueue.cpp",
		"%{!wks.location}/vendor/cryptopp/mqv.cpp",
		"%{!wks.location}/vendor/cryptopp/nbtheory.cpp",
		"%{!wks.location}/vendor/cryptopp/oaep.cpp",
		"%{!wks.location}/vendor/cryptopp/osrng.cpp",
		"%{!wks.location}/vendor/cryptopp/padlkrng.cpp",
		"%{!wks.location}/vendor/cryptopp/panama.cpp",
		"%{!wks.location}/vendor/cryptopp/pch.cpp",
		"%{!wks.location}/vendor/cryptopp/pkcspad.cpp",
		"%{!wks.location}/vendor/cryptopp/poly1305.cpp",
		"%{!wks.location}/vendor/cryptopp/polynomi.cpp",
		"%{!wks.location}/vendor/cryptopp/pssr.cpp",
		"%{!wks.location}/vendor/cryptopp/pubkey.cpp",
		"%{!wks.location}/vendor/cryptopp/queue.cpp",
		"%{!wks.location}/vendor/cryptopp/rabin.cpp",
		"%{!wks.location}/vendor/cryptopp/randpool.cpp",
		"%{!wks.location}/vendor/cryptopp/rabbit.cpp",
		"%{!wks.location}/vendor/cryptopp/rc2.cpp",
		"%{!wks.location}/vendor/cryptopp/rc5.cpp",
		"%{!wks.location}/vendor/cryptopp/rc6.cpp",
		"%{!wks.location}/vendor/cryptopp/rdrand.cpp",
		"%{!wks.location}/vendor/cryptopp/rdtables.cpp",
		"%{!wks.location}/vendor/cryptopp/rijndael.cpp",
		"%{!wks.location}/vendor/cryptopp/rijndael_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/ripemd.cpp",
		"%{!wks.location}/vendor/cryptopp/rng.cpp",
		"%{!wks.location}/vendor/cryptopp/rsa.cpp",
		"%{!wks.location}/vendor/cryptopp/rw.cpp",
		"%{!wks.location}/vendor/cryptopp/safer.cpp",
		"%{!wks.location}/vendor/cryptopp/salsa.cpp",
		"%{!wks.location}/vendor/cryptopp/scrypt.cpp",
		"%{!wks.location}/vendor/cryptopp/seal.cpp",
		"%{!wks.location}/vendor/cryptopp/seed.cpp",
		"%{!wks.location}/vendor/cryptopp/serpent.cpp",
		"%{!wks.location}/vendor/cryptopp/sha.cpp",
		"%{!wks.location}/vendor/cryptopp/sha_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/sha3.cpp",
		"%{!wks.location}/vendor/cryptopp/shacal2.cpp",
		"%{!wks.location}/vendor/cryptopp/shacal2_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/shake.cpp",
		"%{!wks.location}/vendor/cryptopp/shark.cpp",
		"%{!wks.location}/vendor/cryptopp/sharkbox.cpp",
		"%{!wks.location}/vendor/cryptopp/simeck.cpp",
		"%{!wks.location}/vendor/cryptopp/simon.cpp",
		"%{!wks.location}/vendor/cryptopp/simon128_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/simple.cpp",
		"%{!wks.location}/vendor/cryptopp/skipjack.cpp",
		"%{!wks.location}/vendor/cryptopp/sm3.cpp",
		"%{!wks.location}/vendor/cryptopp/sm4.cpp",
		"%{!wks.location}/vendor/cryptopp/sm4_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/sosemanuk.cpp",
		"%{!wks.location}/vendor/cryptopp/speck.cpp",
		"%{!wks.location}/vendor/cryptopp/speck128_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/square.cpp",
		"%{!wks.location}/vendor/cryptopp/squaretb.cpp",
		"%{!wks.location}/vendor/cryptopp/sse_simd.cpp",
		"%{!wks.location}/vendor/cryptopp/strciphr.cpp",
		"%{!wks.location}/vendor/cryptopp/tea.cpp",
		"%{!wks.location}/vendor/cryptopp/tftables.cpp",
		"%{!wks.location}/vendor/cryptopp/threefish.cpp",
		"%{!wks.location}/vendor/cryptopp/tiger.cpp",
		"%{!wks.location}/vendor/cryptopp/tigertab.cpp",
		"%{!wks.location}/vendor/cryptopp/ttmac.cpp",
		"%{!wks.location}/vendor/cryptopp/tweetnacl.cpp",
		"%{!wks.location}/vendor/cryptopp/twofish.cpp",
		"%{!wks.location}/vendor/cryptopp/vmac.cpp",
		"%{!wks.location}/vendor/cryptopp/wake.cpp",
		"%{!wks.location}/vendor/cryptopp/whrlpool.cpp",
		"%{!wks.location}/vendor/cryptopp/xed25519.cpp",
		"%{!wks.location}/vendor/cryptopp/xtr.cpp",
		"%{!wks.location}/vendor/cryptopp/xtrcrypt.cpp",
		"%{!wks.location}/vendor/cryptopp/xts.cpp",
		"%{!wks.location}/vendor/cryptopp/zdeflate.cpp",
		"%{!wks.location}/vendor/cryptopp/zinflate.cpp",
		--"%{!wks.location}/vendor/cryptopp/zlib.cpp",
	}

	filter "system:Windows"
		disablewarnings { "4996" }
		defines {"WIN32"}
		files {

		}

	filter { "system:bsd" }
		files {
			"%{!wks.location}/vendor/cryptopp/blake2b_simd.cpp",
			"%{!wks.location}/vendor/cryptopp/blake2s_simd.cpp",
			"%{!wks.location}/vendor/cryptopp/chacha_avx.cpp",
			"%{!wks.location}/vendor/cryptopp/cham_simd.cpp",
			"%{!wks.location}/vendor/cryptopp/crc_simd.cpp",
			"%{!wks.location}/vendor/cryptopp/lsh256_avx.cpp",
			"%{!wks.location}/vendor/cryptopp/lsh512_avx.cpp",

		}

	filter "configurations:Debug"
		symbols "On"
		defines {"_DEBUG"}

	filter "configurations:Release"
		optimize "On"
		defines {"NDEBUG"}

	filter "configurations:Distribute"
		optimize "On"
		defines {"NDEBUG"}

	filter { "system:Windows", "platforms:Clang" }
		buildoptions {"-Wmicrosoft-include"}