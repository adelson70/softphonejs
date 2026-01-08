cmd_Release/obj.target/pjsip_addon/src/sip_engine.o := g++ -o Release/obj.target/pjsip_addon/src/sip_engine.o ../src/sip_engine.cpp '-DNODE_GYP_MODULE_NAME=pjsip_addon' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_FILE_OFFSET_BITS=64' '-D_LARGEFILE_SOURCE' '-D__STDC_FORMAT_MACROS' '-DNAPI_VERSION=8' '-DNAPI_DISABLE_CPP_EXCEPTIONS' '-DPJ_LINUX=1' '-DPJ_IS_LITTLE_ENDIAN=1' '-DPJ_IS_BIG_ENDIAN=0' '-DBUILDING_NODE_EXTENSION' -I/home/dev/.cache/node-gyp/22.20.0/include/node -I/home/dev/.cache/node-gyp/22.20.0/src -I/home/dev/.cache/node-gyp/22.20.0/deps/openssl/config -I/home/dev/.cache/node-gyp/22.20.0/deps/openssl/openssl/include -I/home/dev/.cache/node-gyp/22.20.0/deps/uv/include -I/home/dev/.cache/node-gyp/22.20.0/deps/zlib -I/home/dev/.cache/node-gyp/22.20.0/deps/v8/include -I/home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api -I../deps/pjproject/pjlib/include -I../deps/pjproject/pjlib-util/include -I../deps/pjproject/pjnath/include -I../deps/pjproject/pjmedia/include -I../deps/pjproject/pjsip/include  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -fPIC -m64 -O3 -flto=4 -fuse-linker-plugin -ffat-lto-objects -fno-omit-frame-pointer -fno-rtti -fno-strict-aliasing -std=gnu++17 -std=c++17 -fPIC -std=c++17 -MMD -MF ./Release/.deps/Release/obj.target/pjsip_addon/src/sip_engine.o.d.raw   -c
Release/obj.target/pjsip_addon/src/sip_engine.o: ../src/sip_engine.cpp \
 ../src/sip_engine.h ../deps/pjproject/pjsip/include/pjsua-lib/pjsua.h \
 ../deps/pjproject/pjsip/include/pjsip.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_types.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_config.h \
 ../deps/pjproject/pjlib/include/pj/types.h \
 ../deps/pjproject/pjlib/include/pj/config.h \
 ../deps/pjproject/pjlib/include/pj/compat/cc_gcc.h \
 ../deps/pjproject/pjlib/include/pj/compat/os_linux.h \
 ../deps/pjproject/pjlib/include/pj/compat/size_t.h \
 ../deps/pjproject/pjlib/include/pj/config_site.h \
 ../deps/pjproject/pjlib/include/pj/limits.h \
 ../deps/pjproject/pjlib/include/pj/compat/limits.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_errno.h \
 ../deps/pjproject/pjlib/include/pj/errno.h \
 ../deps/pjproject/pjlib/include/pj/compat/errno.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_uri.h \
 ../deps/pjproject/pjlib/include/pj/assert.h \
 ../deps/pjproject/pjlib/include/pj/compat/assert.h \
 ../deps/pjproject/pjlib/include/pj/list.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/scanner.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/types.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/config.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/scanner_cis_bitwise.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_tel_uri.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_msg.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_multipart.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_parser.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_event.h \
 ../deps/pjproject/pjlib/include/pj/timer.h \
 ../deps/pjproject/pjlib/include/pj/lock.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_module.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_endpoint.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_transport.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_resolve.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/resolver.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/dns.h \
 ../deps/pjproject/pjlib/include/pj/sock.h \
 ../deps/pjproject/pjlib/include/pj/compat/socket.h \
 ../deps/pjproject/pjlib/include/pj/ioqueue.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_util.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_transport_udp.h \
 ../deps/pjproject/pjlib/include/pj/sock_qos.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_transport_loop.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_transport_tcp.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_transport_tls.h \
 ../deps/pjproject/pjlib/include/pj/pool.h \
 ../deps/pjproject/pjlib/include/pj/ssl_sock.h \
 ../deps/pjproject/pjlib/include/pj/string.h \
 ../deps/pjproject/pjlib/include/pj/compat/string.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_auth.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_auth_msg.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_auth_aka.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_auth_parser.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_transaction.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_ua_layer.h \
 ../deps/pjproject/pjsip/include/pjsip/sip_dialog.h \
 ../deps/pjproject/pjmedia/include/pjmedia.h \
 ../deps/pjproject/pjmedia/include/pjmedia/alaw_ulaw.h \
 ../deps/pjproject/pjmedia/include/pjmedia/types.h \
 ../deps/pjproject/pjmedia/include/pjmedia/config.h \
 ../deps/pjproject/pjmedia/include/pjmedia/avi_stream.h \
 ../deps/pjproject/pjmedia/include/pjmedia/port.h \
 ../deps/pjproject/pjmedia/include/pjmedia/clock.h \
 ../deps/pjproject/pjmedia/include/pjmedia/event.h \
 ../deps/pjproject/pjmedia/include/pjmedia/audiodev.h \
 ../deps/pjproject/pjmedia/include/pjmedia-audiodev/config.h \
 ../deps/pjproject/pjmedia/include/pjmedia-audiodev/errno.h \
 ../deps/pjproject/pjmedia/include/pjmedia/format.h \
 ../deps/pjproject/pjmedia/include/pjmedia/frame.h \
 ../deps/pjproject/pjmedia/include/pjmedia/rtcp_fb.h \
 ../deps/pjproject/pjmedia/include/pjmedia/rtcp.h \
 ../deps/pjproject/pjmedia/include/pjmedia/rtcp_xr.h \
 ../deps/pjproject/pjlib/include/pj/math.h \
 ../deps/pjproject/pjlib/include/pj/compat/high_precision.h \
 ../deps/pjproject/pjmedia/include/pjmedia/rtp.h \
 ../deps/pjproject/pjmedia/include/pjmedia/sdp.h \
 ../deps/pjproject/pjmedia/include/pjmedia/signatures.h \
 ../deps/pjproject/pjmedia/include/pjmedia/videodev.h \
 ../deps/pjproject/pjmedia/include/pjmedia-videodev/config.h \
 ../deps/pjproject/pjmedia/include/pjmedia-videodev/errno.h \
 ../deps/pjproject/pjlib/include/pj/os.h \
 ../deps/pjproject/pjmedia/include/pjmedia/bidirectional.h \
 ../deps/pjproject/pjmedia/include/pjmedia/circbuf.h \
 ../deps/pjproject/pjmedia/include/pjmedia/codec.h \
 ../deps/pjproject/pjmedia/include/pjmedia/conference.h \
 ../deps/pjproject/pjmedia/include/pjmedia/converter.h \
 ../deps/pjproject/pjmedia/include/pjmedia/delaybuf.h \
 ../deps/pjproject/pjmedia/include/pjmedia/echo.h \
 ../deps/pjproject/pjmedia/include/pjmedia/echo_port.h \
 ../deps/pjproject/pjmedia/include/pjmedia/endpoint.h \
 ../deps/pjproject/pjmedia/include/pjmedia/transport.h \
 ../deps/pjproject/pjmedia/include/pjmedia/errno.h \
 ../deps/pjproject/pjmedia/include/pjmedia-audiodev/audiodev.h \
 ../deps/pjproject/pjmedia/include/pjmedia/g711.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/types.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/config.h \
 ../deps/pjproject/pjmedia/include/pjmedia/jbuf.h \
 ../deps/pjproject/pjmedia/include/pjmedia/master_port.h \
 ../deps/pjproject/pjmedia/include/pjmedia/mem_port.h \
 ../deps/pjproject/pjmedia/include/pjmedia/null_port.h \
 ../deps/pjproject/pjmedia/include/pjmedia/plc.h \
 ../deps/pjproject/pjmedia/include/pjmedia/resample.h \
 ../deps/pjproject/pjmedia/include/pjmedia/sdp_neg.h \
 ../deps/pjproject/pjmedia/include/pjmedia/silencedet.h \
 ../deps/pjproject/pjmedia/include/pjmedia/sound.h \
 ../deps/pjproject/pjmedia/include/pjmedia/sound_port.h \
 ../deps/pjproject/pjmedia/include/pjmedia/splitcomb.h \
 ../deps/pjproject/pjmedia/include/pjmedia/stereo.h \
 ../deps/pjproject/pjmedia/include/pjmedia/stream.h \
 ../deps/pjproject/pjmedia/include/pjmedia/vid_codec.h \
 ../deps/pjproject/pjmedia/include/pjmedia/stream_common.h \
 ../deps/pjproject/pjmedia/include/pjmedia/tonegen.h \
 ../deps/pjproject/pjmedia/include/pjmedia/transport_adapter_sample.h \
 ../deps/pjproject/pjmedia/include/pjmedia/transport_ice.h \
 ../deps/pjproject/pjnath/include/pjnath/ice_strans.h \
 ../deps/pjproject/pjnath/include/pjnath/ice_session.h \
 ../deps/pjproject/pjnath/include/pjnath/types.h \
 ../deps/pjproject/pjnath/include/pjnath/config.h \
 ../deps/pjproject/pjnath/include/pjnath/stun_session.h \
 ../deps/pjproject/pjnath/include/pjnath/stun_msg.h \
 ../deps/pjproject/pjnath/include/pjnath/stun_auth.h \
 ../deps/pjproject/pjnath/include/pjnath/stun_config.h \
 ../deps/pjproject/pjnath/include/pjnath/stun_transaction.h \
 ../deps/pjproject/pjnath/include/pjnath/errno.h \
 ../deps/pjproject/pjnath/include/pjnath/stun_sock.h \
 ../deps/pjproject/pjnath/include/pjnath/turn_sock.h \
 ../deps/pjproject/pjnath/include/pjnath/turn_session.h \
 ../deps/pjproject/pjmedia/include/pjmedia/transport_loop.h \
 ../deps/pjproject/pjmedia/include/pjmedia/transport_srtp.h \
 ../deps/pjproject/pjmedia/include/pjmedia/transport_udp.h \
 ../deps/pjproject/pjmedia/include/pjmedia/vid_conf.h \
 ../deps/pjproject/pjmedia/include/pjmedia/vid_port.h \
 ../deps/pjproject/pjmedia/include/pjmedia-videodev/videodev.h \
 ../deps/pjproject/pjmedia/include/pjmedia/vid_stream.h \
 ../deps/pjproject/pjmedia/include/pjmedia/wav_playlist.h \
 ../deps/pjproject/pjmedia/include/pjmedia/wav_port.h \
 ../deps/pjproject/pjmedia/include/pjmedia/wave.h \
 ../deps/pjproject/pjmedia/include/pjmedia/wsola.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/and_aud_mediacodec.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/and_vid_mediacodec.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/audio_codecs.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/passthrough.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/bcg729.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/ffmpeg_vid_codecs.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/g722.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/g7221.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/gsm.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/ilbc.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/ipp_codecs.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/l16.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/opencore_amr.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/openh264.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/opus.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/silk.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/speex.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/vid_toolbox.h \
 ../deps/pjproject/pjmedia/include/pjmedia-codec/vpx.h \
 ../deps/pjproject/pjmedia/include/pjmedia_videodev.h \
 ../deps/pjproject/pjmedia/include/pjmedia-videodev/videodev_imp.h \
 ../deps/pjproject/pjmedia/include/pjmedia-videodev/avi_dev.h \
 ../deps/pjproject/pjsip/include/pjsip_ua.h \
 ../deps/pjproject/pjsip/include/pjsip-ua/sip_inv.h \
 ../deps/pjproject/pjsip/include/pjsip-ua/sip_regc.h \
 ../deps/pjproject/pjsip/include/pjsip-ua/sip_replaces.h \
 ../deps/pjproject/pjsip/include/pjsip-ua/sip_xfer.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/evsub.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/types.h \
 ../deps/pjproject/pjsip/include/pjsip-ua/sip_100rel.h \
 ../deps/pjproject/pjsip/include/pjsip-ua/sip_timer.h \
 ../deps/pjproject/pjsip/include/pjsip_simple.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/evsub_msg.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/iscomposing.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/xml.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/mwi.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/presence.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/pidf.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/xpidf.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/rpid.h \
 ../deps/pjproject/pjsip/include/pjsip-simple/publish.h \
 ../deps/pjproject/pjnath/include/pjnath.h \
 ../deps/pjproject/pjnath/include/pjnath/nat_detect.h \
 ../deps/pjproject/pjnath/include/pjnath/upnp.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/errno.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/getopt.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/base64.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/crc32.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/hmac_md5.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/md5.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/hmac_sha1.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/sha1.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/srv_resolver.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/dns_server.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/string.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/json.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/stun_simple.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/pcap.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/http_client.h \
 ../deps/pjproject/pjlib/include/pj/activesock.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/cli.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/cli_console.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/cli_imp.h \
 ../deps/pjproject/pjlib-util/include/pjlib-util/cli_telnet.h \
 ../deps/pjproject/pjlib/include/pjlib.h \
 ../deps/pjproject/pjlib/include/pj/addr_resolv.h \
 ../deps/pjproject/pjlib/include/pj/array.h \
 ../deps/pjproject/pjlib/include/pj/ctype.h \
 ../deps/pjproject/pjlib/include/pj/compat/ctype.h \
 ../deps/pjproject/pjlib/include/pj/except.h \
 ../deps/pjproject/pjlib/include/pj/compat/setjmp.h \
 ../deps/pjproject/pjlib/include/pj/log.h \
 ../deps/pjproject/pjlib/include/pj/fifobuf.h \
 ../deps/pjproject/pjlib/include/pj/file_access.h \
 ../deps/pjproject/pjlib/include/pj/file_io.h \
 ../deps/pjproject/pjlib/include/pj/guid.h \
 ../deps/pjproject/pjlib/include/pj/hash.h \
 ../deps/pjproject/pjlib/include/pj/ip_helper.h \
 ../deps/pjproject/pjlib/include/pj/pool_buf.h \
 ../deps/pjproject/pjlib/include/pj/rand.h \
 ../deps/pjproject/pjlib/include/pj/rbtree.h \
 ../deps/pjproject/pjlib/include/pj/sock_select.h \
 ../deps/pjproject/pjlib/include/pj/unicode.h ../src/event_emitter.h \
 /home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api/napi.h \
 /home/dev/.cache/node-gyp/22.20.0/include/node/node_api.h \
 /home/dev/.cache/node-gyp/22.20.0/include/node/js_native_api.h \
 /home/dev/.cache/node-gyp/22.20.0/include/node/js_native_api_types.h \
 /home/dev/.cache/node-gyp/22.20.0/include/node/node_api_types.h \
 /home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api/napi-inl.h \
 /home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api/napi.h \
 /home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api/napi-inl.deprecated.h
../src/sip_engine.cpp:
../src/sip_engine.h:
../deps/pjproject/pjsip/include/pjsua-lib/pjsua.h:
../deps/pjproject/pjsip/include/pjsip.h:
../deps/pjproject/pjsip/include/pjsip/sip_types.h:
../deps/pjproject/pjsip/include/pjsip/sip_config.h:
../deps/pjproject/pjlib/include/pj/types.h:
../deps/pjproject/pjlib/include/pj/config.h:
../deps/pjproject/pjlib/include/pj/compat/cc_gcc.h:
../deps/pjproject/pjlib/include/pj/compat/os_linux.h:
../deps/pjproject/pjlib/include/pj/compat/size_t.h:
../deps/pjproject/pjlib/include/pj/config_site.h:
../deps/pjproject/pjlib/include/pj/limits.h:
../deps/pjproject/pjlib/include/pj/compat/limits.h:
../deps/pjproject/pjsip/include/pjsip/sip_errno.h:
../deps/pjproject/pjlib/include/pj/errno.h:
../deps/pjproject/pjlib/include/pj/compat/errno.h:
../deps/pjproject/pjsip/include/pjsip/sip_uri.h:
../deps/pjproject/pjlib/include/pj/assert.h:
../deps/pjproject/pjlib/include/pj/compat/assert.h:
../deps/pjproject/pjlib/include/pj/list.h:
../deps/pjproject/pjlib-util/include/pjlib-util/scanner.h:
../deps/pjproject/pjlib-util/include/pjlib-util/types.h:
../deps/pjproject/pjlib-util/include/pjlib-util/config.h:
../deps/pjproject/pjlib-util/include/pjlib-util/scanner_cis_bitwise.h:
../deps/pjproject/pjsip/include/pjsip/sip_tel_uri.h:
../deps/pjproject/pjsip/include/pjsip/sip_msg.h:
../deps/pjproject/pjsip/include/pjsip/sip_multipart.h:
../deps/pjproject/pjsip/include/pjsip/sip_parser.h:
../deps/pjproject/pjsip/include/pjsip/sip_event.h:
../deps/pjproject/pjlib/include/pj/timer.h:
../deps/pjproject/pjlib/include/pj/lock.h:
../deps/pjproject/pjsip/include/pjsip/sip_module.h:
../deps/pjproject/pjsip/include/pjsip/sip_endpoint.h:
../deps/pjproject/pjsip/include/pjsip/sip_transport.h:
../deps/pjproject/pjsip/include/pjsip/sip_resolve.h:
../deps/pjproject/pjlib-util/include/pjlib-util/resolver.h:
../deps/pjproject/pjlib-util/include/pjlib-util/dns.h:
../deps/pjproject/pjlib/include/pj/sock.h:
../deps/pjproject/pjlib/include/pj/compat/socket.h:
../deps/pjproject/pjlib/include/pj/ioqueue.h:
../deps/pjproject/pjsip/include/pjsip/sip_util.h:
../deps/pjproject/pjsip/include/pjsip/sip_transport_udp.h:
../deps/pjproject/pjlib/include/pj/sock_qos.h:
../deps/pjproject/pjsip/include/pjsip/sip_transport_loop.h:
../deps/pjproject/pjsip/include/pjsip/sip_transport_tcp.h:
../deps/pjproject/pjsip/include/pjsip/sip_transport_tls.h:
../deps/pjproject/pjlib/include/pj/pool.h:
../deps/pjproject/pjlib/include/pj/ssl_sock.h:
../deps/pjproject/pjlib/include/pj/string.h:
../deps/pjproject/pjlib/include/pj/compat/string.h:
../deps/pjproject/pjsip/include/pjsip/sip_auth.h:
../deps/pjproject/pjsip/include/pjsip/sip_auth_msg.h:
../deps/pjproject/pjsip/include/pjsip/sip_auth_aka.h:
../deps/pjproject/pjsip/include/pjsip/sip_auth_parser.h:
../deps/pjproject/pjsip/include/pjsip/sip_transaction.h:
../deps/pjproject/pjsip/include/pjsip/sip_ua_layer.h:
../deps/pjproject/pjsip/include/pjsip/sip_dialog.h:
../deps/pjproject/pjmedia/include/pjmedia.h:
../deps/pjproject/pjmedia/include/pjmedia/alaw_ulaw.h:
../deps/pjproject/pjmedia/include/pjmedia/types.h:
../deps/pjproject/pjmedia/include/pjmedia/config.h:
../deps/pjproject/pjmedia/include/pjmedia/avi_stream.h:
../deps/pjproject/pjmedia/include/pjmedia/port.h:
../deps/pjproject/pjmedia/include/pjmedia/clock.h:
../deps/pjproject/pjmedia/include/pjmedia/event.h:
../deps/pjproject/pjmedia/include/pjmedia/audiodev.h:
../deps/pjproject/pjmedia/include/pjmedia-audiodev/config.h:
../deps/pjproject/pjmedia/include/pjmedia-audiodev/errno.h:
../deps/pjproject/pjmedia/include/pjmedia/format.h:
../deps/pjproject/pjmedia/include/pjmedia/frame.h:
../deps/pjproject/pjmedia/include/pjmedia/rtcp_fb.h:
../deps/pjproject/pjmedia/include/pjmedia/rtcp.h:
../deps/pjproject/pjmedia/include/pjmedia/rtcp_xr.h:
../deps/pjproject/pjlib/include/pj/math.h:
../deps/pjproject/pjlib/include/pj/compat/high_precision.h:
../deps/pjproject/pjmedia/include/pjmedia/rtp.h:
../deps/pjproject/pjmedia/include/pjmedia/sdp.h:
../deps/pjproject/pjmedia/include/pjmedia/signatures.h:
../deps/pjproject/pjmedia/include/pjmedia/videodev.h:
../deps/pjproject/pjmedia/include/pjmedia-videodev/config.h:
../deps/pjproject/pjmedia/include/pjmedia-videodev/errno.h:
../deps/pjproject/pjlib/include/pj/os.h:
../deps/pjproject/pjmedia/include/pjmedia/bidirectional.h:
../deps/pjproject/pjmedia/include/pjmedia/circbuf.h:
../deps/pjproject/pjmedia/include/pjmedia/codec.h:
../deps/pjproject/pjmedia/include/pjmedia/conference.h:
../deps/pjproject/pjmedia/include/pjmedia/converter.h:
../deps/pjproject/pjmedia/include/pjmedia/delaybuf.h:
../deps/pjproject/pjmedia/include/pjmedia/echo.h:
../deps/pjproject/pjmedia/include/pjmedia/echo_port.h:
../deps/pjproject/pjmedia/include/pjmedia/endpoint.h:
../deps/pjproject/pjmedia/include/pjmedia/transport.h:
../deps/pjproject/pjmedia/include/pjmedia/errno.h:
../deps/pjproject/pjmedia/include/pjmedia-audiodev/audiodev.h:
../deps/pjproject/pjmedia/include/pjmedia/g711.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/types.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/config.h:
../deps/pjproject/pjmedia/include/pjmedia/jbuf.h:
../deps/pjproject/pjmedia/include/pjmedia/master_port.h:
../deps/pjproject/pjmedia/include/pjmedia/mem_port.h:
../deps/pjproject/pjmedia/include/pjmedia/null_port.h:
../deps/pjproject/pjmedia/include/pjmedia/plc.h:
../deps/pjproject/pjmedia/include/pjmedia/resample.h:
../deps/pjproject/pjmedia/include/pjmedia/sdp_neg.h:
../deps/pjproject/pjmedia/include/pjmedia/silencedet.h:
../deps/pjproject/pjmedia/include/pjmedia/sound.h:
../deps/pjproject/pjmedia/include/pjmedia/sound_port.h:
../deps/pjproject/pjmedia/include/pjmedia/splitcomb.h:
../deps/pjproject/pjmedia/include/pjmedia/stereo.h:
../deps/pjproject/pjmedia/include/pjmedia/stream.h:
../deps/pjproject/pjmedia/include/pjmedia/vid_codec.h:
../deps/pjproject/pjmedia/include/pjmedia/stream_common.h:
../deps/pjproject/pjmedia/include/pjmedia/tonegen.h:
../deps/pjproject/pjmedia/include/pjmedia/transport_adapter_sample.h:
../deps/pjproject/pjmedia/include/pjmedia/transport_ice.h:
../deps/pjproject/pjnath/include/pjnath/ice_strans.h:
../deps/pjproject/pjnath/include/pjnath/ice_session.h:
../deps/pjproject/pjnath/include/pjnath/types.h:
../deps/pjproject/pjnath/include/pjnath/config.h:
../deps/pjproject/pjnath/include/pjnath/stun_session.h:
../deps/pjproject/pjnath/include/pjnath/stun_msg.h:
../deps/pjproject/pjnath/include/pjnath/stun_auth.h:
../deps/pjproject/pjnath/include/pjnath/stun_config.h:
../deps/pjproject/pjnath/include/pjnath/stun_transaction.h:
../deps/pjproject/pjnath/include/pjnath/errno.h:
../deps/pjproject/pjnath/include/pjnath/stun_sock.h:
../deps/pjproject/pjnath/include/pjnath/turn_sock.h:
../deps/pjproject/pjnath/include/pjnath/turn_session.h:
../deps/pjproject/pjmedia/include/pjmedia/transport_loop.h:
../deps/pjproject/pjmedia/include/pjmedia/transport_srtp.h:
../deps/pjproject/pjmedia/include/pjmedia/transport_udp.h:
../deps/pjproject/pjmedia/include/pjmedia/vid_conf.h:
../deps/pjproject/pjmedia/include/pjmedia/vid_port.h:
../deps/pjproject/pjmedia/include/pjmedia-videodev/videodev.h:
../deps/pjproject/pjmedia/include/pjmedia/vid_stream.h:
../deps/pjproject/pjmedia/include/pjmedia/wav_playlist.h:
../deps/pjproject/pjmedia/include/pjmedia/wav_port.h:
../deps/pjproject/pjmedia/include/pjmedia/wave.h:
../deps/pjproject/pjmedia/include/pjmedia/wsola.h:
../deps/pjproject/pjmedia/include/pjmedia-codec.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/and_aud_mediacodec.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/and_vid_mediacodec.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/audio_codecs.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/passthrough.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/bcg729.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/ffmpeg_vid_codecs.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/g722.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/g7221.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/gsm.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/ilbc.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/ipp_codecs.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/l16.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/opencore_amr.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/openh264.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/opus.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/silk.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/speex.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/vid_toolbox.h:
../deps/pjproject/pjmedia/include/pjmedia-codec/vpx.h:
../deps/pjproject/pjmedia/include/pjmedia_videodev.h:
../deps/pjproject/pjmedia/include/pjmedia-videodev/videodev_imp.h:
../deps/pjproject/pjmedia/include/pjmedia-videodev/avi_dev.h:
../deps/pjproject/pjsip/include/pjsip_ua.h:
../deps/pjproject/pjsip/include/pjsip-ua/sip_inv.h:
../deps/pjproject/pjsip/include/pjsip-ua/sip_regc.h:
../deps/pjproject/pjsip/include/pjsip-ua/sip_replaces.h:
../deps/pjproject/pjsip/include/pjsip-ua/sip_xfer.h:
../deps/pjproject/pjsip/include/pjsip-simple/evsub.h:
../deps/pjproject/pjsip/include/pjsip-simple/types.h:
../deps/pjproject/pjsip/include/pjsip-ua/sip_100rel.h:
../deps/pjproject/pjsip/include/pjsip-ua/sip_timer.h:
../deps/pjproject/pjsip/include/pjsip_simple.h:
../deps/pjproject/pjsip/include/pjsip-simple/evsub_msg.h:
../deps/pjproject/pjsip/include/pjsip-simple/iscomposing.h:
../deps/pjproject/pjlib-util/include/pjlib-util/xml.h:
../deps/pjproject/pjsip/include/pjsip-simple/mwi.h:
../deps/pjproject/pjsip/include/pjsip-simple/presence.h:
../deps/pjproject/pjsip/include/pjsip-simple/pidf.h:
../deps/pjproject/pjsip/include/pjsip-simple/xpidf.h:
../deps/pjproject/pjsip/include/pjsip-simple/rpid.h:
../deps/pjproject/pjsip/include/pjsip-simple/publish.h:
../deps/pjproject/pjnath/include/pjnath.h:
../deps/pjproject/pjnath/include/pjnath/nat_detect.h:
../deps/pjproject/pjnath/include/pjnath/upnp.h:
../deps/pjproject/pjlib-util/include/pjlib-util.h:
../deps/pjproject/pjlib-util/include/pjlib-util/errno.h:
../deps/pjproject/pjlib-util/include/pjlib-util/getopt.h:
../deps/pjproject/pjlib-util/include/pjlib-util/base64.h:
../deps/pjproject/pjlib-util/include/pjlib-util/crc32.h:
../deps/pjproject/pjlib-util/include/pjlib-util/hmac_md5.h:
../deps/pjproject/pjlib-util/include/pjlib-util/md5.h:
../deps/pjproject/pjlib-util/include/pjlib-util/hmac_sha1.h:
../deps/pjproject/pjlib-util/include/pjlib-util/sha1.h:
../deps/pjproject/pjlib-util/include/pjlib-util/srv_resolver.h:
../deps/pjproject/pjlib-util/include/pjlib-util/dns_server.h:
../deps/pjproject/pjlib-util/include/pjlib-util/string.h:
../deps/pjproject/pjlib-util/include/pjlib-util/json.h:
../deps/pjproject/pjlib-util/include/pjlib-util/stun_simple.h:
../deps/pjproject/pjlib-util/include/pjlib-util/pcap.h:
../deps/pjproject/pjlib-util/include/pjlib-util/http_client.h:
../deps/pjproject/pjlib/include/pj/activesock.h:
../deps/pjproject/pjlib-util/include/pjlib-util/cli.h:
../deps/pjproject/pjlib-util/include/pjlib-util/cli_console.h:
../deps/pjproject/pjlib-util/include/pjlib-util/cli_imp.h:
../deps/pjproject/pjlib-util/include/pjlib-util/cli_telnet.h:
../deps/pjproject/pjlib/include/pjlib.h:
../deps/pjproject/pjlib/include/pj/addr_resolv.h:
../deps/pjproject/pjlib/include/pj/array.h:
../deps/pjproject/pjlib/include/pj/ctype.h:
../deps/pjproject/pjlib/include/pj/compat/ctype.h:
../deps/pjproject/pjlib/include/pj/except.h:
../deps/pjproject/pjlib/include/pj/compat/setjmp.h:
../deps/pjproject/pjlib/include/pj/log.h:
../deps/pjproject/pjlib/include/pj/fifobuf.h:
../deps/pjproject/pjlib/include/pj/file_access.h:
../deps/pjproject/pjlib/include/pj/file_io.h:
../deps/pjproject/pjlib/include/pj/guid.h:
../deps/pjproject/pjlib/include/pj/hash.h:
../deps/pjproject/pjlib/include/pj/ip_helper.h:
../deps/pjproject/pjlib/include/pj/pool_buf.h:
../deps/pjproject/pjlib/include/pj/rand.h:
../deps/pjproject/pjlib/include/pj/rbtree.h:
../deps/pjproject/pjlib/include/pj/sock_select.h:
../deps/pjproject/pjlib/include/pj/unicode.h:
../src/event_emitter.h:
/home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api/napi.h:
/home/dev/.cache/node-gyp/22.20.0/include/node/node_api.h:
/home/dev/.cache/node-gyp/22.20.0/include/node/js_native_api.h:
/home/dev/.cache/node-gyp/22.20.0/include/node/js_native_api_types.h:
/home/dev/.cache/node-gyp/22.20.0/include/node/node_api_types.h:
/home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api/napi-inl.h:
/home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api/napi.h:
/home/dev/Documentos/Programas/softphonejs/native/node_modules/node-addon-api/napi-inl.deprecated.h:
