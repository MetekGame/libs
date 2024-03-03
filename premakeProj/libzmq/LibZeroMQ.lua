project "LibZeroMQ"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	defines { "ZMQ_STATIC", "ZMQ_CUSTOM_PLATFORM_HPP", "FD_SETSIZE=16384" }

	postbuildcommands { 
		"{COPYDIR} %[%{!wks.location}/vendor/libzmq/include] %[%{!wks.location}/Libs/include/]",
		"{COPYFILE} %{!wks.location}/premakeProj/libzmq/platform.hpp %{!wks.location}/Libs/include"
	}

	includedirs {
		"%{!wks.location}/vendor/libzmq/include/",
		"%{!wks.location}/vendor/libzmq/",
		"./"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources"] = { "**.cc" },
		["Docs"] = "**.md"
	}

	files {
		"%{!wks.location}/vendor/libzmq/include/**.h",
		"%{!wks.location}/vendor/libzmq/external/sha1/**.h",
		"%{!wks.location}/vendor/libzmq/external/sha1/**.c",
		"%{!wks.location}/vendor/libzmq/include/**.h",
	}

	files {
		"./platform.hpp"
	}

	-- CPP
	files {
		"%{!wks.location}/vendor/libzmq/src/precompiled.cpp", "%{!wks.location}/vendor/libzmq/src/address.cpp", "%{!wks.location}/vendor/libzmq/src/channel.cpp", "%{!wks.location}/vendor/libzmq/src/client.cpp",
		"%{!wks.location}/vendor/libzmq/src/clock.cpp", "%{!wks.location}/vendor/libzmq/src/ctx.cpp", "%{!wks.location}/vendor/libzmq/src/curve_mechanism_base.cpp", "%{!wks.location}/vendor/libzmq/src/curve_client.cpp",
		"%{!wks.location}/vendor/libzmq/src/curve_server.cpp", "%{!wks.location}/vendor/libzmq/src/dealer.cpp", "%{!wks.location}/vendor/libzmq/src/devpoll.cpp", "%{!wks.location}/vendor/libzmq/src/dgram.cpp",
		"%{!wks.location}/vendor/libzmq/src/dist.cpp", "%{!wks.location}/vendor/libzmq/src/endpoint.cpp", "%{!wks.location}/vendor/libzmq/src/epoll.cpp", "%{!wks.location}/vendor/libzmq/src/err.cpp", "%{!wks.location}/vendor/libzmq/src/fq.cpp",
		"%{!wks.location}/vendor/libzmq/src/io_object.cpp", "%{!wks.location}/vendor/libzmq/src/io_thread.cpp", "%{!wks.location}/vendor/libzmq/src/ip.cpp", "%{!wks.location}/vendor/libzmq/src/ipc_address.cpp",
		"%{!wks.location}/vendor/libzmq/src/ipc_connecter.cpp", "%{!wks.location}/vendor/libzmq/src/ipc_listener.cpp", "%{!wks.location}/vendor/libzmq/src/kqueue.cpp", "%{!wks.location}/vendor/libzmq/src/lb.cpp",
		"%{!wks.location}/vendor/libzmq/src/mailbox.cpp", "%{!wks.location}/vendor/libzmq/src/mailbox_safe.cpp", "%{!wks.location}/vendor/libzmq/src/mechanism.cpp", "%{!wks.location}/vendor/libzmq/src/mechanism_base.cpp",
		"%{!wks.location}/vendor/libzmq/src/metadata.cpp", "%{!wks.location}/vendor/libzmq/src/msg.cpp", "%{!wks.location}/vendor/libzmq/src/mtrie.cpp", "%{!wks.location}/vendor/libzmq/src/norm_engine.cpp",
		"%{!wks.location}/vendor/libzmq/src/object.cpp", "%{!wks.location}/vendor/libzmq/src/options.cpp", "%{!wks.location}/vendor/libzmq/src/own.cpp", "%{!wks.location}/vendor/libzmq/src/null_mechanism.cpp",
		"%{!wks.location}/vendor/libzmq/src/pair.cpp", "%{!wks.location}/vendor/libzmq/src/peer.cpp", "%{!wks.location}/vendor/libzmq/src/pgm_receiver.cpp", "%{!wks.location}/vendor/libzmq/src/pgm_sender.cpp",
		"%{!wks.location}/vendor/libzmq/src/pgm_socket.cpp", "%{!wks.location}/vendor/libzmq/src/pipe.cpp", "%{!wks.location}/vendor/libzmq/src/plain_client.cpp", "%{!wks.location}/vendor/libzmq/src/plain_server.cpp",
		"%{!wks.location}/vendor/libzmq/src/poll.cpp", "%{!wks.location}/vendor/libzmq/src/poller_base.cpp", "%{!wks.location}/vendor/libzmq/src/polling_util.cpp", "%{!wks.location}/vendor/libzmq/src/pollset.cpp",
		"%{!wks.location}/vendor/libzmq/src/proxy.cpp", "%{!wks.location}/vendor/libzmq/src/pub.cpp", "%{!wks.location}/vendor/libzmq/src/pull.cpp", "%{!wks.location}/vendor/libzmq/src/push.cpp", "%{!wks.location}/vendor/libzmq/src/random.cpp",
		"%{!wks.location}/vendor/libzmq/src/raw_encoder.cpp", "%{!wks.location}/vendor/libzmq/src/raw_decoder.cpp", "%{!wks.location}/vendor/libzmq/src/raw_engine.cpp", "%{!wks.location}/vendor/libzmq/src/reaper.cpp",
		"%{!wks.location}/vendor/libzmq/src/rep.cpp", "%{!wks.location}/vendor/libzmq/src/req.cpp", "%{!wks.location}/vendor/libzmq/src/router.cpp", "%{!wks.location}/vendor/libzmq/src/select.cpp", "%{!wks.location}/vendor/libzmq/src/server.cpp",
		"%{!wks.location}/vendor/libzmq/src/session_base.cpp", "%{!wks.location}/vendor/libzmq/src/signaler.cpp", "%{!wks.location}/vendor/libzmq/src/socket_base.cpp", "%{!wks.location}/vendor/libzmq/src/socks.cpp",
		"%{!wks.location}/vendor/libzmq/src/socks_connecter.cpp", "%{!wks.location}/vendor/libzmq/src/stream.cpp", "%{!wks.location}/vendor/libzmq/src/stream_engine_base.cpp", "%{!wks.location}/vendor/libzmq/src/sub.cpp",
		"%{!wks.location}/vendor/libzmq/src/tcp.cpp", "%{!wks.location}/vendor/libzmq/src/tcp_address.cpp", "%{!wks.location}/vendor/libzmq/src/tcp_connecter.cpp", "%{!wks.location}/vendor/libzmq/src/tcp_listener.cpp",
		"%{!wks.location}/vendor/libzmq/src/thread.cpp", "%{!wks.location}/vendor/libzmq/src/trie.cpp", "%{!wks.location}/vendor/libzmq/src/radix_tree.cpp", "%{!wks.location}/vendor/libzmq/src/v1_decoder.cpp", "%{!wks.location}/vendor/libzmq/src/v1_encoder.cpp",
		"%{!wks.location}/vendor/libzmq/src/v2_decoder.cpp", "%{!wks.location}/vendor/libzmq/src/v2_encoder.cpp", "%{!wks.location}/vendor/libzmq/src/v3_1_encoder.cpp", "%{!wks.location}/vendor/libzmq/src/xpub.cpp",
		"%{!wks.location}/vendor/libzmq/src/xsub.cpp", "%{!wks.location}/vendor/libzmq/src/zmq.cpp", "%{!wks.location}/vendor/libzmq/src/zmq_utils.cpp", "%{!wks.location}/vendor/libzmq/src/decoder_allocators.cpp", "%{!wks.location}/vendor/libzmq/src/socket_poller.cpp",
		"%{!wks.location}/vendor/libzmq/src/timers.cpp", "%{!wks.location}/vendor/libzmq/src/radio.cpp", "%{!wks.location}/vendor/libzmq/src/dish.cpp", "%{!wks.location}/vendor/libzmq/src/udp_engine.cpp","%{!wks.location}/vendor/libzmq/src/zap_client.cpp", "%{!wks.location}/vendor/libzmq/src/zmtp_engine.cpp",
		"%{!wks.location}/vendor/libzmq/src/udp_address.cpp", "%{!wks.location}/vendor/libzmq/src/scatter.cpp", "%{!wks.location}/vendor/libzmq/src/gather.cpp", "%{!wks.location}/vendor/libzmq/src/ip_resolver.cpp",
	}

	-- HPP
	files {
		"%{!wks.location}/vendor/libzmq/src/address.hpp", "%{!wks.location}/vendor/libzmq/src/array.hpp", "%{!wks.location}/vendor/libzmq/src/atomic_counter.hpp",
		"%{!wks.location}/vendor/libzmq/src/atomic_ptr.hpp", "%{!wks.location}/vendor/libzmq/src/blob.hpp", "%{!wks.location}/vendor/libzmq/src/channel.hpp", "%{!wks.location}/vendor/libzmq/src/client.hpp",  "%{!wks.location}/vendor/libzmq/src/config.hpp",
		"%{!wks.location}/vendor/libzmq/src/clock.hpp", "%{!wks.location}/vendor/libzmq/src/command.hpp", "%{!wks.location}/vendor/libzmq/src/compat.hpp", "%{!wks.location}/vendor/libzmq/src/condition_variable.hpp",
		"%{!wks.location}/vendor/libzmq/src/ctx.hpp", "%{!wks.location}/vendor/libzmq/src/curve_client.hpp", "%{!wks.location}/vendor/libzmq/src/curve_client_tools.hpp",
		"%{!wks.location}/vendor/libzmq/src/curve_mechanism_base.hpp", "%{!wks.location}/vendor/libzmq/src/curve_server.hpp", "%{!wks.location}/vendor/libzmq/src/dbuffer.hpp", "%{!wks.location}/vendor/libzmq/src/dealer.hpp",
		"%{!wks.location}/vendor/libzmq/src/decoder.hpp", "%{!wks.location}/vendor/libzmq/src/decoder_allocators.hpp", "%{!wks.location}/vendor/libzmq/src/devpoll.hpp", "%{!wks.location}/vendor/libzmq/src/dgram.hpp",
		"%{!wks.location}/vendor/libzmq/src/dish.hpp", "%{!wks.location}/vendor/libzmq/src/dist.hpp", "%{!wks.location}/vendor/libzmq/src/encoder.hpp", "%{!wks.location}/vendor/libzmq/src/endpoint.hpp", "%{!wks.location}/vendor/libzmq/src/epoll.hpp",
		"%{!wks.location}/vendor/libzmq/src/err.hpp", "%{!wks.location}/vendor/libzmq/src/fd.hpp", "%{!wks.location}/vendor/libzmq/src/fq.hpp", "%{!wks.location}/vendor/libzmq/src/gather.hpp", "%{!wks.location}/vendor/libzmq/src/generic_mtrie.hpp",
		"%{!wks.location}/vendor/libzmq/src/generic_mtrie_impl.hpp", "%{!wks.location}/vendor/libzmq/src/gssapi_client.hpp", "%{!wks.location}/vendor/libzmq/src/gssapi_mechanism_base.hpp",
		"%{!wks.location}/vendor/libzmq/src/gssapi_server.hpp", "%{!wks.location}/vendor/libzmq/src/i_decoder.hpp", "%{!wks.location}/vendor/libzmq/src/i_encoder.hpp", "%{!wks.location}/vendor/libzmq/src/i_engine.hpp",
		"%{!wks.location}/vendor/libzmq/src/i_mailbox.hpp", "%{!wks.location}/vendor/libzmq/src/i_poll_events.hpp", "%{!wks.location}/vendor/libzmq/src/io_object.hpp", "%{!wks.location}/vendor/libzmq/src/io_thread.hpp",
		"%{!wks.location}/vendor/libzmq/src/ip.hpp", "%{!wks.location}/vendor/libzmq/src/ipc_address.hpp", "%{!wks.location}/vendor/libzmq/src/ipc_connecter.hpp", "%{!wks.location}/vendor/libzmq/src/ipc_listener.hpp",
		"%{!wks.location}/vendor/libzmq/src/kqueue.hpp", "%{!wks.location}/vendor/libzmq/src/lb.hpp", "%{!wks.location}/vendor/libzmq/src/likely.hpp", "%{!wks.location}/vendor/libzmq/src/macros.hpp", "%{!wks.location}/vendor/libzmq/src/mailbox.hpp",
		"%{!wks.location}/vendor/libzmq/src/mailbox_safe.hpp", "%{!wks.location}/vendor/libzmq/src/mechanism.hpp", "%{!wks.location}/vendor/libzmq/src/mechanism_base.hpp", "%{!wks.location}/vendor/libzmq/src/metadata.hpp",
		"%{!wks.location}/vendor/libzmq/src/msg.hpp", "%{!wks.location}/vendor/libzmq/src/mtrie.hpp", "%{!wks.location}/vendor/libzmq/src/mutex.hpp", "%{!wks.location}/vendor/libzmq/src/norm_engine.hpp", "%{!wks.location}/vendor/libzmq/src/null_mechanism.hpp",
		"%{!wks.location}/vendor/libzmq/src/object.hpp", "%{!wks.location}/vendor/libzmq/src/options.hpp", "%{!wks.location}/vendor/libzmq/src/own.hpp", "%{!wks.location}/vendor/libzmq/src/pair.hpp", "%{!wks.location}/vendor/libzmq/src/peer.hpp",
		"%{!wks.location}/vendor/libzmq/src/pgm_receiver.hpp", "%{!wks.location}/vendor/libzmq/src/pgm_sender.hpp", "%{!wks.location}/vendor/libzmq/src/pgm_socket.hpp", "%{!wks.location}/vendor/libzmq/src/pipe.hpp",
		"%{!wks.location}/vendor/libzmq/src/plain_client.hpp", "%{!wks.location}/vendor/libzmq/src/plain_common.hpp", "%{!wks.location}/vendor/libzmq/src/plain_server.hpp", "%{!wks.location}/vendor/libzmq/src/poll.hpp",
		"%{!wks.location}/vendor/libzmq/src/poller.hpp", "%{!wks.location}/vendor/libzmq/src/poller_base.hpp", "%{!wks.location}/vendor/libzmq/src/polling_util.hpp", "%{!wks.location}/vendor/libzmq/src/pollset.hpp",
		"%{!wks.location}/vendor/libzmq/src/precompiled.hpp", "%{!wks.location}/vendor/libzmq/src/proxy.hpp", "%{!wks.location}/vendor/libzmq/src/pub.hpp", "%{!wks.location}/vendor/libzmq/src/pull.hpp", "%{!wks.location}/vendor/libzmq/src/push.hpp",
		"%{!wks.location}/vendor/libzmq/src/radio.hpp", "%{!wks.location}/vendor/libzmq/src/random.hpp", "%{!wks.location}/vendor/libzmq/src/raw_decoder.hpp", "%{!wks.location}/vendor/libzmq/src/raw_encoder.hpp",
		"%{!wks.location}/vendor/libzmq/src/raw_engine.hpp", "%{!wks.location}/vendor/libzmq/src/reaper.hpp", "%{!wks.location}/vendor/libzmq/src/rep.hpp", "%{!wks.location}/vendor/libzmq/src/req.hpp", "%{!wks.location}/vendor/libzmq/src/router.hpp",
		"%{!wks.location}/vendor/libzmq/src/scatter.hpp", "%{!wks.location}/vendor/libzmq/src/secure_allocator.hpp", "%{!wks.location}/vendor/libzmq/src/select.hpp", "%{!wks.location}/vendor/libzmq/src/server.hpp",
		"%{!wks.location}/vendor/libzmq/src/session_base.hpp", "%{!wks.location}/vendor/libzmq/src/signaler.hpp", "%{!wks.location}/vendor/libzmq/src/socket_base.hpp", "%{!wks.location}/vendor/libzmq/src/socket_poller.hpp",
		"%{!wks.location}/vendor/libzmq/src/socks.hpp", "%{!wks.location}/vendor/libzmq/src/socks_connecter.hpp", "%{!wks.location}/vendor/libzmq/src/stdint.hpp", "%{!wks.location}/vendor/libzmq/src/stream.hpp",
		"%{!wks.location}/vendor/libzmq/src/stream_engine_base.hpp", "%{!wks.location}/vendor/libzmq/src/stream_connecter_base.hpp", "%{!wks.location}/vendor/libzmq/src/stream_connecter_base.cpp",
		"%{!wks.location}/vendor/libzmq/src/stream_listener_base.hpp", "%{!wks.location}/vendor/libzmq/src/stream_listener_base.cpp", "%{!wks.location}/vendor/libzmq/src/sub.hpp", "%{!wks.location}/vendor/libzmq/src/tcp.hpp",
		"%{!wks.location}/vendor/libzmq/src/tcp_address.hpp", "%{!wks.location}/vendor/libzmq/src/tcp_connecter.hpp", "%{!wks.location}/vendor/libzmq/src/tcp_listener.hpp", "%{!wks.location}/vendor/libzmq/src/thread.hpp",
		"%{!wks.location}/vendor/libzmq/src/timers.hpp", "%{!wks.location}/vendor/libzmq/src/tipc_address.hpp", "%{!wks.location}/vendor/libzmq/src/tipc_connecter.hpp", "%{!wks.location}/vendor/libzmq/src/tipc_listener.hpp",
		"%{!wks.location}/vendor/libzmq/src/trie.hpp", "%{!wks.location}/vendor/libzmq/src/udp_address.hpp", "%{!wks.location}/vendor/libzmq/src/udp_engine.hpp", "%{!wks.location}/vendor/libzmq/src/v1_decoder.hpp",
		"%{!wks.location}/vendor/libzmq/src/v1_encoder.hpp", "%{!wks.location}/vendor/libzmq/src/v2_decoder.hpp", "%{!wks.location}/vendor/libzmq/src/v2_encoder.hpp", "%{!wks.location}/vendor/libzmq/src/v3_1_encoder.hpp",
		"%{!wks.location}/vendor/libzmq/src/v2_protocol.hpp", "%{!wks.location}/vendor/libzmq/src/vmci.hpp", "%{!wks.location}/vendor/libzmq/src/vmci_address.hpp", "%{!wks.location}/vendor/libzmq/src/vmci_connecter.hpp", "%{!wks.location}/vendor/libzmq/src/vmci_listener.hpp",
		"%{!wks.location}/vendor/libzmq/src/wire.hpp", "%{!wks.location}/vendor/libzmq/src/xpub.hpp", "%{!wks.location}/vendor/libzmq/src/xsub.hpp", "%{!wks.location}/vendor/libzmq/src/ypipe.hpp", "%{!wks.location}/vendor/libzmq/src/ypipe_base.hpp", "%{!wks.location}/vendor/libzmq/src/ypipe_conflate.hpp",
		"%{!wks.location}/vendor/libzmq/src/yqueue.hpp", "%{!wks.location}/vendor/libzmq/src/zap_client.hpp", "%{!wks.location}/vendor/libzmq/src/zmtp_engine.hpp"
	}

	filter "configurations:Release"
		defines { "NDEBUG" }

	filter "configurations:Debug"
		defines { "_DEBUG" }

	filter "system:Windows"
		defines { "WIN32", "_WINDOWS", "_WIN32_WINNT=0x0A00", "_REENTRANT", "_THREAD_SAFE",
		"_CRT_SECURE_NO_WARNINGS", "_WINSOCK_DEPRECATED_NO_WARNINGS" }
		disablewarnings { "4221" }
		files {
			"%{!wks.location}/vendor/libzmq/%{!wks.location}/vendor/libzmq/src/windows.hpp",
			"%{!wks.location}/vendor/libzmq/external/wepoll/**.h",
			"%{!wks.location}/vendor/libzmq/external/wepoll/**.c",
		}
