project "LibZeroMQ"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	defines { "ZMQ_STATIC", "ZMQ_CUSTOM_PLATFORM_HPP", "FD_SETSIZE=16384" }

	postbuildcommands { "{COPYDIR} %[%{!wks.location}vendor/libzmq/include] %[%{!cfg.targetdir}/../include]" }

	includedirs {
		"../../vendor/libzmq/include/",
		"../../vendor/libzmq/",
		"./"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources"] = { "**.cc" },
		["Docs"] = "**.md"
	}

	files {
		"../../vendor/libzmq/include/**.h",
		"../../vendor/libzmq/external/sha1/**.h",
		"../../vendor/libzmq/external/sha1/**.c",
		"../../vendor/libzmq/include/**.h",
	}

	files {
		"./platform.hpp"
	}

	-- CPP
	files {
		"../../vendor/libzmq/src/precompiled.cpp", "../../vendor/libzmq/src/address.cpp", "../../vendor/libzmq/src/channel.cpp", "../../vendor/libzmq/src/client.cpp",
		"../../vendor/libzmq/src/clock.cpp", "../../vendor/libzmq/src/ctx.cpp", "../../vendor/libzmq/src/curve_mechanism_base.cpp", "../../vendor/libzmq/src/curve_client.cpp",
		"../../vendor/libzmq/src/curve_server.cpp", "../../vendor/libzmq/src/dealer.cpp", "../../vendor/libzmq/src/devpoll.cpp", "../../vendor/libzmq/src/dgram.cpp",
		"../../vendor/libzmq/src/dist.cpp", "../../vendor/libzmq/src/endpoint.cpp", "../../vendor/libzmq/src/epoll.cpp", "../../vendor/libzmq/src/err.cpp", "../../vendor/libzmq/src/fq.cpp",
		"../../vendor/libzmq/src/io_object.cpp", "../../vendor/libzmq/src/io_thread.cpp", "../../vendor/libzmq/src/ip.cpp", "../../vendor/libzmq/src/ipc_address.cpp",
		"../../vendor/libzmq/src/ipc_connecter.cpp", "../../vendor/libzmq/src/ipc_listener.cpp", "../../vendor/libzmq/src/kqueue.cpp", "../../vendor/libzmq/src/lb.cpp",
		"../../vendor/libzmq/src/mailbox.cpp", "../../vendor/libzmq/src/mailbox_safe.cpp", "../../vendor/libzmq/src/mechanism.cpp", "../../vendor/libzmq/src/mechanism_base.cpp",
		"../../vendor/libzmq/src/metadata.cpp", "../../vendor/libzmq/src/msg.cpp", "../../vendor/libzmq/src/mtrie.cpp", "../../vendor/libzmq/src/norm_engine.cpp",
		"../../vendor/libzmq/src/object.cpp", "../../vendor/libzmq/src/options.cpp", "../../vendor/libzmq/src/own.cpp", "../../vendor/libzmq/src/null_mechanism.cpp",
		"../../vendor/libzmq/src/pair.cpp", "../../vendor/libzmq/src/peer.cpp", "../../vendor/libzmq/src/pgm_receiver.cpp", "../../vendor/libzmq/src/pgm_sender.cpp",
		"../../vendor/libzmq/src/pgm_socket.cpp", "../../vendor/libzmq/src/pipe.cpp", "../../vendor/libzmq/src/plain_client.cpp", "../../vendor/libzmq/src/plain_server.cpp",
		"../../vendor/libzmq/src/poll.cpp", "../../vendor/libzmq/src/poller_base.cpp", "../../vendor/libzmq/src/polling_util.cpp", "../../vendor/libzmq/src/pollset.cpp",
		"../../vendor/libzmq/src/proxy.cpp", "../../vendor/libzmq/src/pub.cpp", "../../vendor/libzmq/src/pull.cpp", "../../vendor/libzmq/src/push.cpp", "../../vendor/libzmq/src/random.cpp",
		"../../vendor/libzmq/src/raw_encoder.cpp", "../../vendor/libzmq/src/raw_decoder.cpp", "../../vendor/libzmq/src/raw_engine.cpp", "../../vendor/libzmq/src/reaper.cpp",
		"../../vendor/libzmq/src/rep.cpp", "../../vendor/libzmq/src/req.cpp", "../../vendor/libzmq/src/router.cpp", "../../vendor/libzmq/src/select.cpp", "../../vendor/libzmq/src/server.cpp",
		"../../vendor/libzmq/src/session_base.cpp", "../../vendor/libzmq/src/signaler.cpp", "../../vendor/libzmq/src/socket_base.cpp", "../../vendor/libzmq/src/socks.cpp",
		"../../vendor/libzmq/src/socks_connecter.cpp", "../../vendor/libzmq/src/stream.cpp", "../../vendor/libzmq/src/stream_engine_base.cpp", "../../vendor/libzmq/src/sub.cpp",
		"../../vendor/libzmq/src/tcp.cpp", "../../vendor/libzmq/src/tcp_address.cpp", "../../vendor/libzmq/src/tcp_connecter.cpp", "../../vendor/libzmq/src/tcp_listener.cpp",
		"../../vendor/libzmq/src/thread.cpp", "../../vendor/libzmq/src/trie.cpp", "../../vendor/libzmq/src/radix_tree.cpp", "../../vendor/libzmq/src/v1_decoder.cpp", "../../vendor/libzmq/src/v1_encoder.cpp",
		"../../vendor/libzmq/src/v2_decoder.cpp", "../../vendor/libzmq/src/v2_encoder.cpp", "../../vendor/libzmq/src/v3_1_encoder.cpp", "../../vendor/libzmq/src/xpub.cpp",
		"../../vendor/libzmq/src/xsub.cpp", "../../vendor/libzmq/src/zmq.cpp", "../../vendor/libzmq/src/zmq_utils.cpp", "../../vendor/libzmq/src/decoder_allocators.cpp", "../../vendor/libzmq/src/socket_poller.cpp",
		"../../vendor/libzmq/src/timers.cpp", "../../vendor/libzmq/src/radio.cpp", "../../vendor/libzmq/src/dish.cpp", "../../vendor/libzmq/src/udp_engine.cpp","../../vendor/libzmq/src/zap_client.cpp", "../../vendor/libzmq/src/zmtp_engine.cpp",
		"../../vendor/libzmq/src/udp_address.cpp", "../../vendor/libzmq/src/scatter.cpp", "../../vendor/libzmq/src/gather.cpp", "../../vendor/libzmq/src/ip_resolver.cpp",
	}

	-- HPP
	files {
		"../../vendor/libzmq/src/address.hpp", "../../vendor/libzmq/src/array.hpp", "../../vendor/libzmq/src/atomic_counter.hpp",
		"../../vendor/libzmq/src/atomic_ptr.hpp", "../../vendor/libzmq/src/blob.hpp", "../../vendor/libzmq/src/channel.hpp", "../../vendor/libzmq/src/client.hpp",  "../../vendor/libzmq/src/config.hpp",
		"../../vendor/libzmq/src/clock.hpp", "../../vendor/libzmq/src/command.hpp", "../../vendor/libzmq/src/compat.hpp", "../../vendor/libzmq/src/condition_variable.hpp",
		"../../vendor/libzmq/src/ctx.hpp", "../../vendor/libzmq/src/curve_client.hpp", "../../vendor/libzmq/src/curve_client_tools.hpp",
		"../../vendor/libzmq/src/curve_mechanism_base.hpp", "../../vendor/libzmq/src/curve_server.hpp", "../../vendor/libzmq/src/dbuffer.hpp", "../../vendor/libzmq/src/dealer.hpp",
		"../../vendor/libzmq/src/decoder.hpp", "../../vendor/libzmq/src/decoder_allocators.hpp", "../../vendor/libzmq/src/devpoll.hpp", "../../vendor/libzmq/src/dgram.hpp",
		"../../vendor/libzmq/src/dish.hpp", "../../vendor/libzmq/src/dist.hpp", "../../vendor/libzmq/src/encoder.hpp", "../../vendor/libzmq/src/endpoint.hpp", "../../vendor/libzmq/src/epoll.hpp",
		"../../vendor/libzmq/src/err.hpp", "../../vendor/libzmq/src/fd.hpp", "../../vendor/libzmq/src/fq.hpp", "../../vendor/libzmq/src/gather.hpp", "../../vendor/libzmq/src/generic_mtrie.hpp",
		"../../vendor/libzmq/src/generic_mtrie_impl.hpp", "../../vendor/libzmq/src/gssapi_client.hpp", "../../vendor/libzmq/src/gssapi_mechanism_base.hpp",
		"../../vendor/libzmq/src/gssapi_server.hpp", "../../vendor/libzmq/src/i_decoder.hpp", "../../vendor/libzmq/src/i_encoder.hpp", "../../vendor/libzmq/src/i_engine.hpp",
		"../../vendor/libzmq/src/i_mailbox.hpp", "../../vendor/libzmq/src/i_poll_events.hpp", "../../vendor/libzmq/src/io_object.hpp", "../../vendor/libzmq/src/io_thread.hpp",
		"../../vendor/libzmq/src/ip.hpp", "../../vendor/libzmq/src/ipc_address.hpp", "../../vendor/libzmq/src/ipc_connecter.hpp", "../../vendor/libzmq/src/ipc_listener.hpp",
		"../../vendor/libzmq/src/kqueue.hpp", "../../vendor/libzmq/src/lb.hpp", "../../vendor/libzmq/src/likely.hpp", "../../vendor/libzmq/src/macros.hpp", "../../vendor/libzmq/src/mailbox.hpp",
		"../../vendor/libzmq/src/mailbox_safe.hpp", "../../vendor/libzmq/src/mechanism.hpp", "../../vendor/libzmq/src/mechanism_base.hpp", "../../vendor/libzmq/src/metadata.hpp",
		"../../vendor/libzmq/src/msg.hpp", "../../vendor/libzmq/src/mtrie.hpp", "../../vendor/libzmq/src/mutex.hpp", "../../vendor/libzmq/src/norm_engine.hpp", "../../vendor/libzmq/src/null_mechanism.hpp",
		"../../vendor/libzmq/src/object.hpp", "../../vendor/libzmq/src/options.hpp", "../../vendor/libzmq/src/own.hpp", "../../vendor/libzmq/src/pair.hpp", "../../vendor/libzmq/src/peer.hpp",
		"../../vendor/libzmq/src/pgm_receiver.hpp", "../../vendor/libzmq/src/pgm_sender.hpp", "../../vendor/libzmq/src/pgm_socket.hpp", "../../vendor/libzmq/src/pipe.hpp",
		"../../vendor/libzmq/src/plain_client.hpp", "../../vendor/libzmq/src/plain_common.hpp", "../../vendor/libzmq/src/plain_server.hpp", "../../vendor/libzmq/src/poll.hpp",
		"../../vendor/libzmq/src/poller.hpp", "../../vendor/libzmq/src/poller_base.hpp", "../../vendor/libzmq/src/polling_util.hpp", "../../vendor/libzmq/src/pollset.hpp",
		"../../vendor/libzmq/src/precompiled.hpp", "../../vendor/libzmq/src/proxy.hpp", "../../vendor/libzmq/src/pub.hpp", "../../vendor/libzmq/src/pull.hpp", "../../vendor/libzmq/src/push.hpp",
		"../../vendor/libzmq/src/radio.hpp", "../../vendor/libzmq/src/random.hpp", "../../vendor/libzmq/src/raw_decoder.hpp", "../../vendor/libzmq/src/raw_encoder.hpp",
		"../../vendor/libzmq/src/raw_engine.hpp", "../../vendor/libzmq/src/reaper.hpp", "../../vendor/libzmq/src/rep.hpp", "../../vendor/libzmq/src/req.hpp", "../../vendor/libzmq/src/router.hpp",
		"../../vendor/libzmq/src/scatter.hpp", "../../vendor/libzmq/src/secure_allocator.hpp", "../../vendor/libzmq/src/select.hpp", "../../vendor/libzmq/src/server.hpp",
		"../../vendor/libzmq/src/session_base.hpp", "../../vendor/libzmq/src/signaler.hpp", "../../vendor/libzmq/src/socket_base.hpp", "../../vendor/libzmq/src/socket_poller.hpp",
		"../../vendor/libzmq/src/socks.hpp", "../../vendor/libzmq/src/socks_connecter.hpp", "../../vendor/libzmq/src/stdint.hpp", "../../vendor/libzmq/src/stream.hpp",
		"../../vendor/libzmq/src/stream_engine_base.hpp", "../../vendor/libzmq/src/stream_connecter_base.hpp", "../../vendor/libzmq/src/stream_connecter_base.cpp",
		"../../vendor/libzmq/src/stream_listener_base.hpp", "../../vendor/libzmq/src/stream_listener_base.cpp", "../../vendor/libzmq/src/sub.hpp", "../../vendor/libzmq/src/tcp.hpp",
		"../../vendor/libzmq/src/tcp_address.hpp", "../../vendor/libzmq/src/tcp_connecter.hpp", "../../vendor/libzmq/src/tcp_listener.hpp", "../../vendor/libzmq/src/thread.hpp",
		"../../vendor/libzmq/src/timers.hpp", "../../vendor/libzmq/src/tipc_address.hpp", "../../vendor/libzmq/src/tipc_connecter.hpp", "../../vendor/libzmq/src/tipc_listener.hpp",
		"../../vendor/libzmq/src/trie.hpp", "../../vendor/libzmq/src/udp_address.hpp", "../../vendor/libzmq/src/udp_engine.hpp", "../../vendor/libzmq/src/v1_decoder.hpp",
		"../../vendor/libzmq/src/v1_encoder.hpp", "../../vendor/libzmq/src/v2_decoder.hpp", "../../vendor/libzmq/src/v2_encoder.hpp", "../../vendor/libzmq/src/v3_1_encoder.hpp",
		"../../vendor/libzmq/src/v2_protocol.hpp", "../../vendor/libzmq/src/vmci.hpp", "../../vendor/libzmq/src/vmci_address.hpp", "../../vendor/libzmq/src/vmci_connecter.hpp", "../../vendor/libzmq/src/vmci_listener.hpp",
		"../../vendor/libzmq/src/wire.hpp", "../../vendor/libzmq/src/xpub.hpp", "../../vendor/libzmq/src/xsub.hpp", "../../vendor/libzmq/src/ypipe.hpp", "../../vendor/libzmq/src/ypipe_base.hpp", "../../vendor/libzmq/src/ypipe_conflate.hpp",
		"../../vendor/libzmq/src/yqueue.hpp", "../../vendor/libzmq/src/zap_client.hpp", "../../vendor/libzmq/src/zmtp_engine.hpp"
	}

	filter "configurations:Release"
		defines { "NDEBUG" }

	filter "configurations:Debug"
		defines { "_DEBUG" }

	filter "system:Windows"
		defines { "WIN32", "_WINDOWS", "_WIN32_WINNT=0x0A00", "_REENTRANT", "_THREAD_SAFE",
		"_CRT_SECURE_NO_WARNINGS", "_WINSOCK_DEPRECATED_NO_WARNINGS" }
		disablewarnings { "4221" }
		flags { "MultiProcessorCompile" }
		files {
			"../../vendor/libzmq/../../vendor/libzmq/src/windows.hpp",
			"../../vendor/libzmq/external/wepoll/**.h",
			"../../vendor/libzmq/external/wepoll/**.c",
		}
