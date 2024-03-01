project "LibZeroMQ"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	defines { "ZMQ_STATIC", "ZMQ_CUSTOM_PLATFORM_HPP", "FD_SETSIZE=16384" }

	includedirs {
		"./include/",
		"./"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources"] = { "**.cc" },
		["Docs"] = "**.md"
	}

	files {
		"include/**.h",
		"external/sha1/**.h",
		"external/sha1/**.c",
		"include/**.h",
	}

	-- CPP
	files {
		"src/precompiled.cpp", "src/address.cpp", "src/channel.cpp", "src/client.cpp",
		"src/clock.cpp", "src/ctx.cpp", "src/curve_mechanism_base.cpp", "src/curve_client.cpp",
		"src/curve_server.cpp", "src/dealer.cpp", "src/devpoll.cpp", "src/dgram.cpp",
		"src/dist.cpp", "src/endpoint.cpp", "src/epoll.cpp", "src/err.cpp", "src/fq.cpp",
		"src/io_object.cpp", "src/io_thread.cpp", "src/ip.cpp", "src/ipc_address.cpp",
		"src/ipc_connecter.cpp", "src/ipc_listener.cpp", "src/kqueue.cpp", "src/lb.cpp",
		"src/mailbox.cpp", "src/mailbox_safe.cpp", "src/mechanism.cpp", "src/mechanism_base.cpp",
		"src/metadata.cpp", "src/msg.cpp", "src/mtrie.cpp", "src/norm_engine.cpp",
		"src/object.cpp", "src/options.cpp", "src/own.cpp", "src/null_mechanism.cpp",
		"src/pair.cpp", "src/peer.cpp", "src/pgm_receiver.cpp", "src/pgm_sender.cpp",
		"src/pgm_socket.cpp", "src/pipe.cpp", "src/plain_client.cpp", "src/plain_server.cpp",
		"src/poll.cpp", "src/poller_base.cpp", "src/polling_util.cpp", "src/pollset.cpp",
		"src/proxy.cpp", "src/pub.cpp", "src/pull.cpp", "src/push.cpp", "src/random.cpp",
		"src/raw_encoder.cpp", "src/raw_decoder.cpp", "src/raw_engine.cpp", "src/reaper.cpp",
		"src/rep.cpp", "src/req.cpp", "src/router.cpp", "src/select.cpp", "src/server.cpp",
		"src/session_base.cpp", "src/signaler.cpp", "src/socket_base.cpp", "src/socks.cpp",
		"src/socks_connecter.cpp", "src/stream.cpp", "src/stream_engine_base.cpp", "src/sub.cpp",
		"src/tcp.cpp", "src/tcp_address.cpp", "src/tcp_connecter.cpp", "src/tcp_listener.cpp",
		"src/thread.cpp", "src/trie.cpp", "src/radix_tree.cpp", "src/v1_decoder.cpp", "src/v1_encoder.cpp",
		"src/v2_decoder.cpp", "src/v2_encoder.cpp", "src/v3_1_encoder.cpp", "src/xpub.cpp",
		"src/xsub.cpp", "src/zmq.cpp", "src/zmq_utils.cpp", "src/decoder_allocators.cpp", "src/socket_poller.cpp",
		"src/timers.cpp", "src/radio.cpp", "src/dish.cpp", "src/udp_engine.cpp","src/zap_client.cpp", "src/zmtp_engine.cpp",
		"src/udp_address.cpp", "src/scatter.cpp", "src/gather.cpp", "src/ip_resolver.cpp",
	}

	-- HPP
	files {
		"src/address.hpp", "src/array.hpp", "src/atomic_counter.hpp",
		"src/atomic_ptr.hpp", "src/blob.hpp", "src/channel.hpp", "src/client.hpp",  "src/config.hpp",
		"src/clock.hpp", "src/command.hpp", "src/compat.hpp", "src/condition_variable.hpp",
		"src/ctx.hpp", "src/curve_client.hpp", "src/curve_client_tools.hpp",
		"src/curve_mechanism_base.hpp", "src/curve_server.hpp", "src/dbuffer.hpp", "src/dealer.hpp",
		"src/decoder.hpp", "src/decoder_allocators.hpp", "src/devpoll.hpp", "src/dgram.hpp",
		"src/dish.hpp", "src/dist.hpp", "src/encoder.hpp", "src/endpoint.hpp", "src/epoll.hpp",
		"src/err.hpp", "src/fd.hpp", "src/fq.hpp", "src/gather.hpp", "src/generic_mtrie.hpp",
		"src/generic_mtrie_impl.hpp", "src/gssapi_client.hpp", "src/gssapi_mechanism_base.hpp",
		"src/gssapi_server.hpp", "src/i_decoder.hpp", "src/i_encoder.hpp", "src/i_engine.hpp",
		"src/i_mailbox.hpp", "src/i_poll_events.hpp", "src/io_object.hpp", "src/io_thread.hpp",
		"src/ip.hpp", "src/ipc_address.hpp", "src/ipc_connecter.hpp", "src/ipc_listener.hpp",
		"src/kqueue.hpp", "src/lb.hpp", "src/likely.hpp", "src/macros.hpp", "src/mailbox.hpp",
		"src/mailbox_safe.hpp", "src/mechanism.hpp", "src/mechanism_base.hpp", "src/metadata.hpp",
		"src/msg.hpp", "src/mtrie.hpp", "src/mutex.hpp", "src/norm_engine.hpp", "src/null_mechanism.hpp",
		"src/object.hpp", "src/options.hpp", "src/own.hpp", "src/pair.hpp", "src/peer.hpp",
		"src/pgm_receiver.hpp", "src/pgm_sender.hpp", "src/pgm_socket.hpp", "src/pipe.hpp",
		"src/plain_client.hpp", "src/plain_common.hpp", "src/plain_server.hpp", "src/poll.hpp",
		"src/poller.hpp", "src/poller_base.hpp", "src/polling_util.hpp", "src/pollset.hpp",
		"src/precompiled.hpp", "src/proxy.hpp", "src/pub.hpp", "src/pull.hpp", "src/push.hpp",
		"src/radio.hpp", "src/random.hpp", "src/raw_decoder.hpp", "src/raw_encoder.hpp",
		"src/raw_engine.hpp", "src/reaper.hpp", "src/rep.hpp", "src/req.hpp", "src/router.hpp",
		"src/scatter.hpp", "src/secure_allocator.hpp", "src/select.hpp", "src/server.hpp",
		"src/session_base.hpp", "src/signaler.hpp", "src/socket_base.hpp", "src/socket_poller.hpp",
		"src/socks.hpp", "src/socks_connecter.hpp", "src/stdint.hpp", "src/stream.hpp",
		"src/stream_engine_base.hpp", "src/stream_connecter_base.hpp", "src/stream_connecter_base.cpp",
		"src/stream_listener_base.hpp", "src/stream_listener_base.cpp", "src/sub.hpp", "src/tcp.hpp",
		"src/tcp_address.hpp", "src/tcp_connecter.hpp", "src/tcp_listener.hpp", "src/thread.hpp",
		"src/timers.hpp", "src/tipc_address.hpp", "src/tipc_connecter.hpp", "src/tipc_listener.hpp",
		"src/trie.hpp", "src/udp_address.hpp", "src/udp_engine.hpp", "src/v1_decoder.hpp",
		"src/v1_encoder.hpp", "src/v2_decoder.hpp", "src/v2_encoder.hpp", "src/v3_1_encoder.hpp",
		"src/v2_protocol.hpp", "src/vmci.hpp", "src/vmci_address.hpp", "src/vmci_connecter.hpp", "src/vmci_listener.hpp",
		"src/wire.hpp", "src/xpub.hpp", "src/xsub.hpp", "src/ypipe.hpp", "src/ypipe_base.hpp", "src/ypipe_conflate.hpp",
		"src/yqueue.hpp", "src/zap_client.hpp", "src/zmtp_engine.hpp", "./platform.hpp",
	}

	filter "configurations:Release"
		defines { "NDEBUG" }

	filter "configurations:Debug"
		defines { "_DEBUG" }

	filter "system:Windows"
		characterset "MBCS"
		defines { "WIN32", "_WINDOWS", "_WIN32_WINNT=0x0A00", "_REENTRANT", "_THREAD_SAFE",
		"_CRT_SECURE_NO_WARNINGS", "_WINSOCK_DEPRECATED_NO_WARNINGS" }
		disablewarnings { "4221" }
		flags { "MultiProcessorCompile" }
		files {
			"src/windows.hpp",
			"external/wepoll/**.h",
			"external/wepoll/**.c",
		}

	filter "system:bsd"
		buildoptions { "-m32" }
