package com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b'\b\u0086\b\u0018\u00002\u00020\u0001:\u0003IJKBy\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0005\u0012\u0006\u0010\u0019\u001a\u00020\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0005\u0012\u0006\u0010\u001b\u001a\u00020\u0005\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0007\u0012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002\u0012\u0006\u0010 \u001a\u00020\u0007¢\u0006\u0004\bG\u0010HJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0005HÆ\u0003J\t\u0010\n\u001a\u00020\u0007HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0005HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0002HÆ\u0003J\t\u0010\u0010\u001a\u00020\u000fHÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\u0093\u0001\u0010!\u001a\u00020\u00002\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00052\b\b\u0002\u0010\u0019\u001a\u00020\u00072\b\b\u0002\u0010\u001a\u001a\u00020\u00052\b\b\u0002\u0010\u001b\u001a\u00020\u00052\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\u00022\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\b\u0002\u0010\u001e\u001a\u00020\u00072\u000e\b\u0002\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00120\u00022\b\b\u0002\u0010 \u001a\u00020\u0007HÆ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\t\u0010#\u001a\u00020\u0007HÖ\u0001J\u0013\u0010&\u001a\u00020%2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0017\u0010\u0016\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u0017\u0010\u0017\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u0017\u0010\u0018\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b3\u0010,\u001a\u0004\b4\u0010.R\u0017\u0010\u0019\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b5\u00100\u001a\u0004\b6\u00102R\u0017\u0010\u001a\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b7\u0010,\u001a\u0004\b8\u0010.R\u0017\u0010\u001b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b9\u0010,\u001a\u0004\b:\u0010.R\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\u00028\u0006¢\u0006\f\n\u0004\b;\u0010(\u001a\u0004\b<\u0010*R\u0017\u0010\u001d\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u0017\u0010\u001e\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bA\u00100\u001a\u0004\bB\u00102R\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00120\u00028\u0006¢\u0006\f\n\u0004\bC\u0010(\u001a\u0004\bD\u0010*R\u0017\u0010 \u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bE\u00100\u001a\u0004\bF\u00102¨\u0006L"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;", "", "", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;", "component1", "", "component2", "", "component3", "component4", "component5", "component6", "component7", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;", "component8", "", "component9", "component10", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;", "component11", "component12", "bak_servers", "client_ip", "error_code", "error_msg", "expire", Http2ExchangeCodec.f103778h, "newno", "quic_servers", "request_id", "server_time", "servers", "sl", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getBak_servers", "()Ljava/util/List;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getClient_ip", "()Ljava/lang/String;", "c", "I", "getError_code", "()I", "d", "getError_msg", "e", "getExpire", C6997f.f39671c, "getHost", C6998g.f39679a, "getNewno", C6999h.f39688c, "getQuic_servers", "i", "J", "getRequest_id", "()J", "j", "getServer_time", C4921e.f26537n, "getServers", "l", "getSl", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JILjava/util/List;I)V", "BakServer", "QuicServer", "Server", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class BaiduYunUploadHostBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<BakServer> bak_servers;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String client_ip;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int error_code;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final String error_msg;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final int expire;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @NotNull
    public final String host;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @NotNull
    public final String newno;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<QuicServer> quic_servers;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public final long request_id;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    public final int server_time;

    /* renamed from: k, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Server> servers;

    /* renamed from: l, reason: from kotlin metadata and from toString */
    public final int sl;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;", "", "", "component1", "server", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getServer", "()Ljava/lang/String;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final /* data */ class BakServer {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final String server;

        public BakServer(@NotNull String server) {
            Intrinsics.checkNotNullParameter(server, "server");
            this.server = server;
        }

        public static /* synthetic */ BakServer copy$default(BakServer bakServer, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = bakServer.server;
            }
            return bakServer.copy(str);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getServer() {
            return this.server;
        }

        @NotNull
        public final BakServer copy(@NotNull String server) {
            Intrinsics.checkNotNullParameter(server, "server");
            return new BakServer(server);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof BakServer) && Intrinsics.areEqual(this.server, ((BakServer) other).server);
        }

        @NotNull
        public final String getServer() {
            return this.server;
        }

        public int hashCode() {
            return this.server.hashCode();
        }

        @NotNull
        public String toString() {
            return "BakServer(server=" + this.server + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;", "", "", "component1", "server", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getServer", "()Ljava/lang/String;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final /* data */ class QuicServer {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final String server;

        public QuicServer(@NotNull String server) {
            Intrinsics.checkNotNullParameter(server, "server");
            this.server = server;
        }

        public static /* synthetic */ QuicServer copy$default(QuicServer quicServer, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = quicServer.server;
            }
            return quicServer.copy(str);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getServer() {
            return this.server;
        }

        @NotNull
        public final QuicServer copy(@NotNull String server) {
            Intrinsics.checkNotNullParameter(server, "server");
            return new QuicServer(server);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof QuicServer) && Intrinsics.areEqual(this.server, ((QuicServer) other).server);
        }

        @NotNull
        public final String getServer() {
            return this.server;
        }

        public int hashCode() {
            return this.server.hashCode();
        }

        @NotNull
        public String toString() {
            return "QuicServer(server=" + this.server + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;", "", "", "component1", "server", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getServer", "()Ljava/lang/String;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final /* data */ class Server {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final String server;

        public Server(@NotNull String server) {
            Intrinsics.checkNotNullParameter(server, "server");
            this.server = server;
        }

        public static /* synthetic */ Server copy$default(Server server, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = server.server;
            }
            return server.copy(str);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getServer() {
            return this.server;
        }

        @NotNull
        public final Server copy(@NotNull String server) {
            Intrinsics.checkNotNullParameter(server, "server");
            return new Server(server);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Server) && Intrinsics.areEqual(this.server, ((Server) other).server);
        }

        @NotNull
        public final String getServer() {
            return this.server;
        }

        public int hashCode() {
            return this.server.hashCode();
        }

        @NotNull
        public String toString() {
            return "Server(server=" + this.server + ')';
        }
    }

    public BaiduYunUploadHostBean(@NotNull List<BakServer> bak_servers, @NotNull String client_ip, int i, @NotNull String error_msg, int i2, @NotNull String host, @NotNull String newno, @NotNull List<QuicServer> quic_servers, long j, int i3, @NotNull List<Server> servers, int i4) {
        Intrinsics.checkNotNullParameter(bak_servers, "bak_servers");
        Intrinsics.checkNotNullParameter(client_ip, "client_ip");
        Intrinsics.checkNotNullParameter(error_msg, "error_msg");
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(newno, "newno");
        Intrinsics.checkNotNullParameter(quic_servers, "quic_servers");
        Intrinsics.checkNotNullParameter(servers, "servers");
        this.bak_servers = bak_servers;
        this.client_ip = client_ip;
        this.error_code = i;
        this.error_msg = error_msg;
        this.expire = i2;
        this.host = host;
        this.newno = newno;
        this.quic_servers = quic_servers;
        this.request_id = j;
        this.server_time = i3;
        this.servers = servers;
        this.sl = i4;
    }

    @NotNull
    public final List<BakServer> component1() {
        return this.bak_servers;
    }

    /* renamed from: component10, reason: from getter */
    public final int getServer_time() {
        return this.server_time;
    }

    @NotNull
    public final List<Server> component11() {
        return this.servers;
    }

    /* renamed from: component12, reason: from getter */
    public final int getSl() {
        return this.sl;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getClient_ip() {
        return this.client_ip;
    }

    /* renamed from: component3, reason: from getter */
    public final int getError_code() {
        return this.error_code;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getError_msg() {
        return this.error_msg;
    }

    /* renamed from: component5, reason: from getter */
    public final int getExpire() {
        return this.expire;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final String getHost() {
        return this.host;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final String getNewno() {
        return this.newno;
    }

    @NotNull
    public final List<QuicServer> component8() {
        return this.quic_servers;
    }

    /* renamed from: component9, reason: from getter */
    public final long getRequest_id() {
        return this.request_id;
    }

    @NotNull
    public final BaiduYunUploadHostBean copy(@NotNull List<BakServer> bak_servers, @NotNull String client_ip, int error_code, @NotNull String error_msg, int expire, @NotNull String host, @NotNull String newno, @NotNull List<QuicServer> quic_servers, long request_id, int server_time, @NotNull List<Server> servers, int sl) {
        Intrinsics.checkNotNullParameter(bak_servers, "bak_servers");
        Intrinsics.checkNotNullParameter(client_ip, "client_ip");
        Intrinsics.checkNotNullParameter(error_msg, "error_msg");
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(newno, "newno");
        Intrinsics.checkNotNullParameter(quic_servers, "quic_servers");
        Intrinsics.checkNotNullParameter(servers, "servers");
        return new BaiduYunUploadHostBean(bak_servers, client_ip, error_code, error_msg, expire, host, newno, quic_servers, request_id, server_time, servers, sl);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BaiduYunUploadHostBean)) {
            return false;
        }
        BaiduYunUploadHostBean baiduYunUploadHostBean = (BaiduYunUploadHostBean) other;
        return Intrinsics.areEqual(this.bak_servers, baiduYunUploadHostBean.bak_servers) && Intrinsics.areEqual(this.client_ip, baiduYunUploadHostBean.client_ip) && this.error_code == baiduYunUploadHostBean.error_code && Intrinsics.areEqual(this.error_msg, baiduYunUploadHostBean.error_msg) && this.expire == baiduYunUploadHostBean.expire && Intrinsics.areEqual(this.host, baiduYunUploadHostBean.host) && Intrinsics.areEqual(this.newno, baiduYunUploadHostBean.newno) && Intrinsics.areEqual(this.quic_servers, baiduYunUploadHostBean.quic_servers) && this.request_id == baiduYunUploadHostBean.request_id && this.server_time == baiduYunUploadHostBean.server_time && Intrinsics.areEqual(this.servers, baiduYunUploadHostBean.servers) && this.sl == baiduYunUploadHostBean.sl;
    }

    @NotNull
    public final List<BakServer> getBak_servers() {
        return this.bak_servers;
    }

    @NotNull
    public final String getClient_ip() {
        return this.client_ip;
    }

    public final int getError_code() {
        return this.error_code;
    }

    @NotNull
    public final String getError_msg() {
        return this.error_msg;
    }

    public final int getExpire() {
        return this.expire;
    }

    @NotNull
    public final String getHost() {
        return this.host;
    }

    @NotNull
    public final String getNewno() {
        return this.newno;
    }

    @NotNull
    public final List<QuicServer> getQuic_servers() {
        return this.quic_servers;
    }

    public final long getRequest_id() {
        return this.request_id;
    }

    public final int getServer_time() {
        return this.server_time;
    }

    @NotNull
    public final List<Server> getServers() {
        return this.servers;
    }

    public final int getSl() {
        return this.sl;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.bak_servers.hashCode() * 31) + this.client_ip.hashCode()) * 31) + Integer.hashCode(this.error_code)) * 31) + this.error_msg.hashCode()) * 31) + Integer.hashCode(this.expire)) * 31) + this.host.hashCode()) * 31) + this.newno.hashCode()) * 31) + this.quic_servers.hashCode()) * 31) + Long.hashCode(this.request_id)) * 31) + Integer.hashCode(this.server_time)) * 31) + this.servers.hashCode()) * 31) + Integer.hashCode(this.sl);
    }

    @NotNull
    public String toString() {
        return "BaiduYunUploadHostBean(bak_servers=" + this.bak_servers + ", client_ip=" + this.client_ip + ", error_code=" + this.error_code + ", error_msg=" + this.error_msg + ", expire=" + this.expire + ", host=" + this.host + ", newno=" + this.newno + ", quic_servers=" + this.quic_servers + ", request_id=" + this.request_id + ", server_time=" + this.server_time + ", servers=" + this.servers + ", sl=" + this.sl + ')';
    }
}
