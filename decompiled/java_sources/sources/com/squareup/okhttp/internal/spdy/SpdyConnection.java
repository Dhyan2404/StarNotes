package com.squareup.okhttp.internal.spdy;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.spdy.FrameReader;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;

/* loaded from: classes9.dex */
public final class SpdyConnection implements Closeable {

    /* renamed from: O */
    public static final ExecutorService f63923O = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp SpdyConnection", true));

    /* renamed from: Q */
    public static final int f63924Q = 16777216;

    /* renamed from: Z */
    public static final /* synthetic */ boolean f63925Z = false;

    /* renamed from: J */
    public final Set<Integer> f63926J;

    /* renamed from: e */
    public final Protocol f63927e;

    /* renamed from: f */
    public final boolean f63928f;

    /* renamed from: g */
    public final IncomingStreamHandler f63929g;

    /* renamed from: h */
    public final Map<Integer, SpdyStream> f63930h;

    /* renamed from: i */
    public final String f63931i;

    /* renamed from: j */
    public int f63932j;

    /* renamed from: k */
    public int f63933k;

    /* renamed from: l */
    public boolean f63934l;

    /* renamed from: m */
    public long f63935m;

    /* renamed from: n */
    public final ExecutorService f63936n;

    /* renamed from: o */
    public Map<Integer, Ping> f63937o;

    /* renamed from: p */
    public final PushObserver f63938p;

    /* renamed from: q */
    public int f63939q;

    /* renamed from: r */
    public long f63940r;

    /* renamed from: s */
    public long f63941s;

    /* renamed from: t */
    public final Settings f63942t;

    /* renamed from: u */
    public final Settings f63943u;

    /* renamed from: v */
    public boolean f63944v;

    /* renamed from: w */
    public final Variant f63945w;

    /* renamed from: x */
    public final Socket f63946x;

    /* renamed from: y */
    public final FrameWriter f63947y;

    /* renamed from: z */
    public final C13203h f63948z;

    /* loaded from: classes9.dex */
    public static class Builder {

        /* renamed from: a */
        public String f63949a;

        /* renamed from: b */
        public Socket f63950b;

        /* renamed from: c */
        public IncomingStreamHandler f63951c;

        /* renamed from: d */
        public Protocol f63952d;

        /* renamed from: e */
        public PushObserver f63953e;

        /* renamed from: f */
        public boolean f63954f;

        public Builder(boolean z, Socket socket) throws IOException {
            this(((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), z, socket);
        }

        public SpdyConnection build() throws IOException {
            return new SpdyConnection(this, null);
        }

        public Builder handler(IncomingStreamHandler incomingStreamHandler) {
            this.f63951c = incomingStreamHandler;
            return this;
        }

        public Builder protocol(Protocol protocol) {
            this.f63952d = protocol;
            return this;
        }

        public Builder pushObserver(PushObserver pushObserver) {
            this.f63953e = pushObserver;
            return this;
        }

        public Builder(String str, boolean z, Socket socket) throws IOException {
            this.f63951c = IncomingStreamHandler.REFUSE_INCOMING_STREAMS;
            this.f63952d = Protocol.SPDY_3;
            this.f63953e = PushObserver.CANCEL;
            this.f63949a = str;
            this.f63954f = z;
            this.f63950b = socket;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$a */
    /* loaded from: classes9.dex */
    public class C13196a extends NamedRunnable {

        /* renamed from: e */
        public final /* synthetic */ int f63955e;

        /* renamed from: f */
        public final /* synthetic */ ErrorCode f63956f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13196a(String str, Object[] objArr, int i, ErrorCode errorCode) {
            super(str, objArr);
            this.f63955e = i;
            this.f63956f = errorCode;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            try {
                SpdyConnection.this.m52817J0(this.f63955e, this.f63956f);
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$b */
    /* loaded from: classes9.dex */
    public class C13197b extends NamedRunnable {

        /* renamed from: e */
        public final /* synthetic */ int f63958e;

        /* renamed from: f */
        public final /* synthetic */ long f63959f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13197b(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            this.f63958e = i;
            this.f63959f = j;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            try {
                SpdyConnection.this.f63947y.windowUpdate(this.f63958e, this.f63959f);
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$c */
    /* loaded from: classes9.dex */
    public class C13198c extends NamedRunnable {

        /* renamed from: e */
        public final /* synthetic */ boolean f63961e;

        /* renamed from: f */
        public final /* synthetic */ int f63962f;

        /* renamed from: g */
        public final /* synthetic */ int f63963g;

        /* renamed from: h */
        public final /* synthetic */ Ping f63964h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13198c(String str, Object[] objArr, boolean z, int i, int i2, Ping ping) {
            super(str, objArr);
            this.f63961e = z;
            this.f63962f = i;
            this.f63963g = i2;
            this.f63964h = ping;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            try {
                SpdyConnection.this.m52814G0(this.f63961e, this.f63962f, this.f63963g, this.f63964h);
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$d */
    /* loaded from: classes9.dex */
    public class C13199d extends NamedRunnable {

        /* renamed from: e */
        public final /* synthetic */ int f63966e;

        /* renamed from: f */
        public final /* synthetic */ List f63967f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13199d(String str, Object[] objArr, int i, List list) {
            super(str, objArr);
            this.f63966e = i;
            this.f63967f = list;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            if (SpdyConnection.this.f63938p.onRequest(this.f63966e, this.f63967f)) {
                try {
                    SpdyConnection.this.f63947y.rstStream(this.f63966e, ErrorCode.CANCEL);
                    synchronized (SpdyConnection.this) {
                        SpdyConnection.this.f63926J.remove(Integer.valueOf(this.f63966e));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$e */
    /* loaded from: classes9.dex */
    public class C13200e extends NamedRunnable {

        /* renamed from: e */
        public final /* synthetic */ int f63969e;

        /* renamed from: f */
        public final /* synthetic */ List f63970f;

        /* renamed from: g */
        public final /* synthetic */ boolean f63971g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13200e(String str, Object[] objArr, int i, List list, boolean z) {
            super(str, objArr);
            this.f63969e = i;
            this.f63970f = list;
            this.f63971g = z;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            boolean onHeaders = SpdyConnection.this.f63938p.onHeaders(this.f63969e, this.f63970f, this.f63971g);
            if (onHeaders) {
                try {
                    SpdyConnection.this.f63947y.rstStream(this.f63969e, ErrorCode.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (onHeaders || this.f63971g) {
                synchronized (SpdyConnection.this) {
                    SpdyConnection.this.f63926J.remove(Integer.valueOf(this.f63969e));
                }
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$f */
    /* loaded from: classes9.dex */
    public class C13201f extends NamedRunnable {

        /* renamed from: e */
        public final /* synthetic */ int f63973e;

        /* renamed from: f */
        public final /* synthetic */ Buffer f63974f;

        /* renamed from: g */
        public final /* synthetic */ int f63975g;

        /* renamed from: h */
        public final /* synthetic */ boolean f63976h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13201f(String str, Object[] objArr, int i, Buffer buffer, int i2, boolean z) {
            super(str, objArr);
            this.f63973e = i;
            this.f63974f = buffer;
            this.f63975g = i2;
            this.f63976h = z;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            try {
                boolean onData = SpdyConnection.this.f63938p.onData(this.f63973e, this.f63974f, this.f63975g, this.f63976h);
                if (onData) {
                    SpdyConnection.this.f63947y.rstStream(this.f63973e, ErrorCode.CANCEL);
                }
                if (onData || this.f63976h) {
                    synchronized (SpdyConnection.this) {
                        SpdyConnection.this.f63926J.remove(Integer.valueOf(this.f63973e));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$g */
    /* loaded from: classes9.dex */
    public class C13202g extends NamedRunnable {

        /* renamed from: e */
        public final /* synthetic */ int f63978e;

        /* renamed from: f */
        public final /* synthetic */ ErrorCode f63979f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13202g(String str, Object[] objArr, int i, ErrorCode errorCode) {
            super(str, objArr);
            this.f63978e = i;
            this.f63979f = errorCode;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            SpdyConnection.this.f63938p.onReset(this.f63978e, this.f63979f);
            synchronized (SpdyConnection.this) {
                SpdyConnection.this.f63926J.remove(Integer.valueOf(this.f63978e));
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$h */
    /* loaded from: classes9.dex */
    public class C13203h extends NamedRunnable implements FrameReader.Handler {

        /* renamed from: e */
        public FrameReader f63981e;

        /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$h$a */
        /* loaded from: classes9.dex */
        public class a extends NamedRunnable {

            /* renamed from: e */
            public final /* synthetic */ SpdyStream f63983e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, Object[] objArr, SpdyStream spdyStream) {
                super(str, objArr);
                this.f63983e = spdyStream;
            }

            @Override // com.squareup.okhttp.internal.NamedRunnable
            public void execute() {
                try {
                    SpdyConnection.this.f63929g.receive(this.f63983e);
                } catch (IOException e) {
                    Internal.logger.log(Level.INFO, "StreamHandler failure for " + SpdyConnection.this.f63931i, (Throwable) e);
                    try {
                        this.f63983e.close(ErrorCode.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        /* renamed from: com.squareup.okhttp.internal.spdy.SpdyConnection$h$b */
        /* loaded from: classes9.dex */
        public class b extends NamedRunnable {

            /* renamed from: e */
            public final /* synthetic */ Settings f63985e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, Object[] objArr, Settings settings) {
                super(str, objArr);
                this.f63985e = settings;
            }

            @Override // com.squareup.okhttp.internal.NamedRunnable
            public void execute() {
                try {
                    SpdyConnection.this.f63947y.ackSettings(this.f63985e);
                } catch (IOException unused) {
                }
            }
        }

        public /* synthetic */ C13203h(SpdyConnection spdyConnection, C13196a c13196a) {
            this();
        }

        /* renamed from: a */
        public final void m52832a(Settings settings) {
            SpdyConnection.f63923O.execute(new b("OkHttp %s ACK Settings", new Object[]{SpdyConnection.this.f63931i}, settings));
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void ackSettings() {
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j) {
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException {
            if (SpdyConnection.this.m52810C0(i)) {
                SpdyConnection.this.m52824y0(i, bufferedSource, i2, z);
                return;
            }
            SpdyStream m52822w0 = SpdyConnection.this.m52822w0(i);
            if (m52822w0 == null) {
                SpdyConnection.this.m52818K0(i, ErrorCode.INVALID_STREAM);
                bufferedSource.skip(i2);
            } else {
                m52822w0.m52845m(bufferedSource, i2);
                if (z) {
                    m52822w0.m52846n();
                }
            }
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            ErrorCode errorCode;
            ErrorCode errorCode2;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    SpdyConnection spdyConnection = SpdyConnection.this;
                    FrameReader newReader = spdyConnection.f63945w.newReader(Okio.buffer(Okio.source(spdyConnection.f63946x)), SpdyConnection.this.f63928f);
                    this.f63981e = newReader;
                    if (!SpdyConnection.this.f63928f) {
                        newReader.readConnectionPreface();
                    }
                    do {
                    } while (this.f63981e.nextFrame(this));
                    errorCode2 = ErrorCode.NO_ERROR;
                    try {
                        try {
                            SpdyConnection.this.m52821v0(errorCode2, ErrorCode.CANCEL);
                        } catch (IOException unused) {
                            ErrorCode errorCode4 = ErrorCode.PROTOCOL_ERROR;
                            SpdyConnection.this.m52821v0(errorCode4, errorCode4);
                            Util.closeQuietly(this.f63981e);
                        }
                    } catch (Throwable th) {
                        errorCode = errorCode2;
                        th = th;
                        try {
                            SpdyConnection.this.m52821v0(errorCode, errorCode3);
                        } catch (IOException unused2) {
                        }
                        Util.closeQuietly(this.f63981e);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                errorCode2 = errorCode3;
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode3;
                SpdyConnection.this.m52821v0(errorCode, errorCode3);
                Util.closeQuietly(this.f63981e);
                throw th;
            }
            Util.closeQuietly(this.f63981e);
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
            SpdyStream[] spdyStreamArr;
            byteString.size();
            synchronized (SpdyConnection.this) {
                spdyStreamArr = (SpdyStream[]) SpdyConnection.this.f63930h.values().toArray(new SpdyStream[SpdyConnection.this.f63930h.size()]);
                SpdyConnection.this.f63934l = true;
            }
            for (SpdyStream spdyStream : spdyStreamArr) {
                if (spdyStream.getId() > i && spdyStream.isLocallyInitiated()) {
                    spdyStream.m52848p(ErrorCode.REFUSED_STREAM);
                    SpdyConnection.this.m52812E0(spdyStream.getId());
                }
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void headers(boolean z, boolean z2, int i, int i2, List<Header> list, HeadersMode headersMode) {
            if (SpdyConnection.this.m52810C0(i)) {
                SpdyConnection.this.m52825z0(i, list, z2);
                return;
            }
            synchronized (SpdyConnection.this) {
                if (SpdyConnection.this.f63934l) {
                    return;
                }
                SpdyStream m52822w0 = SpdyConnection.this.m52822w0(i);
                if (m52822w0 != null) {
                    if (headersMode.failIfStreamPresent()) {
                        m52822w0.closeLater(ErrorCode.PROTOCOL_ERROR);
                        SpdyConnection.this.m52812E0(i);
                        return;
                    } else {
                        m52822w0.m52847o(list, headersMode);
                        if (z2) {
                            m52822w0.m52846n();
                            return;
                        }
                        return;
                    }
                }
                if (headersMode.failIfStreamAbsent()) {
                    SpdyConnection.this.m52818K0(i, ErrorCode.INVALID_STREAM);
                    return;
                }
                if (i <= SpdyConnection.this.f63932j) {
                    return;
                }
                if (i % 2 == SpdyConnection.this.f63933k % 2) {
                    return;
                }
                SpdyStream spdyStream = new SpdyStream(i, SpdyConnection.this, z, z2, list);
                SpdyConnection.this.f63932j = i;
                SpdyConnection.this.f63930h.put(Integer.valueOf(i), spdyStream);
                SpdyConnection.f63923O.execute(new a("OkHttp %s stream %d", new Object[]{SpdyConnection.this.f63931i, Integer.valueOf(i)}, spdyStream));
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void ping(boolean z, int i, int i2) {
            if (!z) {
                SpdyConnection.this.m52815H0(true, i, i2, null);
                return;
            }
            Ping m52811D0 = SpdyConnection.this.m52811D0(i);
            if (m52811D0 != null) {
                m52811D0.m52751b();
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void priority(int i, int i2, int i3, boolean z) {
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void pushPromise(int i, int i2, List<Header> list) {
            SpdyConnection.this.m52808A0(i2, list);
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void rstStream(int i, ErrorCode errorCode) {
            if (SpdyConnection.this.m52810C0(i)) {
                SpdyConnection.this.m52809B0(i, errorCode);
                return;
            }
            SpdyStream m52812E0 = SpdyConnection.this.m52812E0(i);
            if (m52812E0 != null) {
                m52812E0.m52848p(errorCode);
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void settings(boolean z, Settings settings) {
            SpdyStream[] spdyStreamArr;
            long j;
            synchronized (SpdyConnection.this) {
                int m52762j = SpdyConnection.this.f63943u.m52762j(65536);
                if (z) {
                    SpdyConnection.this.f63943u.m52753a();
                }
                SpdyConnection.this.f63943u.m52771s(settings);
                if (SpdyConnection.this.getProtocol() == Protocol.HTTP_2) {
                    m52832a(settings);
                }
                int m52762j2 = SpdyConnection.this.f63943u.m52762j(65536);
                spdyStreamArr = null;
                if (m52762j2 == -1 || m52762j2 == m52762j) {
                    j = 0;
                } else {
                    j = m52762j2 - m52762j;
                    if (!SpdyConnection.this.f63944v) {
                        SpdyConnection.this.m52820u0(j);
                        SpdyConnection.this.f63944v = true;
                    }
                    if (!SpdyConnection.this.f63930h.isEmpty()) {
                        spdyStreamArr = (SpdyStream[]) SpdyConnection.this.f63930h.values().toArray(new SpdyStream[SpdyConnection.this.f63930h.size()]);
                    }
                }
            }
            if (spdyStreamArr == null || j == 0) {
                return;
            }
            for (SpdyStream spdyStream : spdyStreamArr) {
                synchronized (spdyStream) {
                    spdyStream.m52841i(j);
                }
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader.Handler
        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (SpdyConnection.this) {
                    SpdyConnection spdyConnection = SpdyConnection.this;
                    spdyConnection.f63941s += j;
                    spdyConnection.notifyAll();
                }
                return;
            }
            SpdyStream m52822w0 = SpdyConnection.this.m52822w0(i);
            if (m52822w0 != null) {
                synchronized (m52822w0) {
                    m52822w0.m52841i(j);
                }
            }
        }

        public C13203h() {
            super("OkHttp %s", SpdyConnection.this.f63931i);
        }
    }

    public /* synthetic */ SpdyConnection(Builder builder, C13196a c13196a) throws IOException {
        this(builder);
    }

    /* renamed from: A0 */
    public final void m52808A0(int i, List<Header> list) {
        synchronized (this) {
            if (this.f63926J.contains(Integer.valueOf(i))) {
                m52818K0(i, ErrorCode.PROTOCOL_ERROR);
            } else {
                this.f63926J.add(Integer.valueOf(i));
                this.f63936n.execute(new C13199d("OkHttp %s Push Request[%s]", new Object[]{this.f63931i, Integer.valueOf(i)}, i, list));
            }
        }
    }

    /* renamed from: B0 */
    public final void m52809B0(int i, ErrorCode errorCode) {
        this.f63936n.execute(new C13202g("OkHttp %s Push Reset[%s]", new Object[]{this.f63931i, Integer.valueOf(i)}, i, errorCode));
    }

    /* renamed from: C0 */
    public final boolean m52810C0(int i) {
        return this.f63927e == Protocol.HTTP_2 && i != 0 && (i & 1) == 0;
    }

    /* renamed from: D0 */
    public final synchronized Ping m52811D0(int i) {
        Map<Integer, Ping> map;
        map = this.f63937o;
        return map != null ? map.remove(Integer.valueOf(i)) : null;
    }

    /* renamed from: E0 */
    public synchronized SpdyStream m52812E0(int i) {
        SpdyStream remove;
        remove = this.f63930h.remove(Integer.valueOf(i));
        if (remove != null && this.f63930h.isEmpty()) {
            m52813F0(true);
        }
        notifyAll();
        return remove;
    }

    /* renamed from: F0 */
    public final synchronized void m52813F0(boolean z) {
        long nanoTime;
        if (z) {
            try {
                nanoTime = System.nanoTime();
            } catch (Throwable th) {
                throw th;
            }
        } else {
            nanoTime = Long.MAX_VALUE;
        }
        this.f63935m = nanoTime;
    }

    /* renamed from: G0 */
    public final void m52814G0(boolean z, int i, int i2, Ping ping) throws IOException {
        synchronized (this.f63947y) {
            if (ping != null) {
                ping.m52752c();
            }
            this.f63947y.ping(z, i, i2);
        }
    }

    /* renamed from: H0 */
    public final void m52815H0(boolean z, int i, int i2, Ping ping) {
        f63923O.execute(new C13198c("OkHttp %s ping %08x%08x", new Object[]{this.f63931i, Integer.valueOf(i), Integer.valueOf(i2)}, z, i, i2, ping));
    }

    /* renamed from: I0 */
    public void m52816I0(int i, boolean z, List<Header> list) throws IOException {
        this.f63947y.synReply(z, i, list);
    }

    /* renamed from: J0 */
    public void m52817J0(int i, ErrorCode errorCode) throws IOException {
        this.f63947y.rstStream(i, errorCode);
    }

    /* renamed from: K0 */
    public void m52818K0(int i, ErrorCode errorCode) {
        f63923O.submit(new C13196a("OkHttp %s stream %d", new Object[]{this.f63931i, Integer.valueOf(i)}, i, errorCode));
    }

    /* renamed from: L0 */
    public void m52819L0(int i, long j) {
        f63923O.execute(new C13197b("OkHttp Window Update %s stream %d", new Object[]{this.f63931i, Integer.valueOf(i)}, i, j));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m52821v0(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public void flush() throws IOException {
        this.f63947y.flush();
    }

    public synchronized long getIdleStartTimeNs() {
        return this.f63935m;
    }

    public Protocol getProtocol() {
        return this.f63927e;
    }

    public synchronized boolean isIdle() {
        return this.f63935m != Long.MAX_VALUE;
    }

    public SpdyStream newStream(List<Header> list, boolean z, boolean z2) throws IOException {
        return m52823x0(0, list, z, z2);
    }

    public synchronized int openStreamCount() {
        return this.f63930h.size();
    }

    public Ping ping() throws IOException {
        int i;
        Ping ping = new Ping();
        synchronized (this) {
            if (this.f63934l) {
                throw new IOException("shutdown");
            }
            i = this.f63939q;
            this.f63939q = i + 2;
            if (this.f63937o == null) {
                this.f63937o = new HashMap();
            }
            this.f63937o.put(Integer.valueOf(i), ping);
        }
        m52814G0(false, i, 1330343787, ping);
        return ping;
    }

    public SpdyStream pushStream(int i, List<Header> list, boolean z) throws IOException {
        if (this.f63928f) {
            throw new IllegalStateException("Client cannot push requests.");
        }
        if (this.f63927e == Protocol.HTTP_2) {
            return m52823x0(i, list, z, false);
        }
        throw new IllegalStateException("protocol != HTTP_2");
    }

    public void sendConnectionPreface() throws IOException {
        this.f63947y.connectionPreface();
        this.f63947y.settings(this.f63942t);
        if (this.f63942t.m52762j(65536) != 65536) {
            this.f63947y.windowUpdate(0, r0 - 65536);
        }
    }

    public void shutdown(ErrorCode errorCode) throws IOException {
        synchronized (this.f63947y) {
            synchronized (this) {
                if (this.f63934l) {
                    return;
                }
                this.f63934l = true;
                this.f63947y.goAway(this.f63932j, errorCode, Util.EMPTY_BYTE_ARRAY);
            }
        }
    }

    /* renamed from: u0 */
    public void m52820u0(long j) {
        this.f63941s += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: v0 */
    public final void m52821v0(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        int i;
        SpdyStream[] spdyStreamArr;
        Ping[] pingArr = null;
        try {
            shutdown(errorCode);
            e = null;
        } catch (IOException e) {
            e = e;
        }
        synchronized (this) {
            if (this.f63930h.isEmpty()) {
                spdyStreamArr = null;
            } else {
                spdyStreamArr = (SpdyStream[]) this.f63930h.values().toArray(new SpdyStream[this.f63930h.size()]);
                this.f63930h.clear();
                m52813F0(false);
            }
            Map<Integer, Ping> map = this.f63937o;
            if (map != null) {
                Ping[] pingArr2 = (Ping[]) map.values().toArray(new Ping[this.f63937o.size()]);
                this.f63937o = null;
                pingArr = pingArr2;
            }
        }
        if (spdyStreamArr != null) {
            for (SpdyStream spdyStream : spdyStreamArr) {
                try {
                    spdyStream.close(errorCode2);
                } catch (IOException e2) {
                    if (e != null) {
                        e = e2;
                    }
                }
            }
        }
        if (pingArr != null) {
            for (Ping ping : pingArr) {
                ping.m52750a();
            }
        }
        try {
            this.f63947y.close();
        } catch (IOException e3) {
            if (e == null) {
                e = e3;
            }
        }
        try {
            this.f63946x.close();
        } catch (IOException e4) {
            e = e4;
        }
        if (e != null) {
            throw e;
        }
    }

    /* renamed from: w0 */
    public synchronized SpdyStream m52822w0(int i) {
        return this.f63930h.get(Integer.valueOf(i));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r4), r8.f63947y.maxDataLength());
        r6 = r2;
        r8.f63941s -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeData(int r9, boolean r10, okio.Buffer r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            com.squareup.okhttp.internal.spdy.FrameWriter r8 = r8.f63947y
            r8.data(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L60
            monitor-enter(r8)
        L12:
            long r4 = r8.f63941s     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 > 0) goto L30
            java.util.Map<java.lang.Integer, com.squareup.okhttp.internal.spdy.SpdyStream> r2 = r8.f63930h     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            if (r2 == 0) goto L28
            r8.wait()     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            goto L12
        L28:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            throw r9     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
        L30:
            long r4 = java.lang.Math.min(r12, r4)     // Catch: java.lang.Throwable -> L56
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L56
            com.squareup.okhttp.internal.spdy.FrameWriter r4 = r8.f63947y     // Catch: java.lang.Throwable -> L56
            int r4 = r4.maxDataLength()     // Catch: java.lang.Throwable -> L56
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L56
            long r4 = r8.f63941s     // Catch: java.lang.Throwable -> L56
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L56
            long r4 = r4 - r6
            r8.f63941s = r4     // Catch: java.lang.Throwable -> L56
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L56
            long r12 = r12 - r6
            com.squareup.okhttp.internal.spdy.FrameWriter r4 = r8.f63947y
            if (r10 == 0) goto L51
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L51
            r5 = 1
            goto L52
        L51:
            r5 = r3
        L52:
            r4.data(r5, r9, r11, r2)
            goto Ld
        L56:
            r9 = move-exception
            goto L5e
        L58:
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L56
            r9.<init>()     // Catch: java.lang.Throwable -> L56
            throw r9     // Catch: java.lang.Throwable -> L56
        L5e:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L56
            throw r9
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.spdy.SpdyConnection.writeData(int, boolean, okio.Buffer, long):void");
    }

    /* renamed from: x0 */
    public final SpdyStream m52823x0(int i, List<Header> list, boolean z, boolean z2) throws IOException {
        int i2;
        SpdyStream spdyStream;
        boolean z3 = !z;
        boolean z4 = !z2;
        synchronized (this.f63947y) {
            synchronized (this) {
                if (this.f63934l) {
                    throw new IOException("shutdown");
                }
                i2 = this.f63933k;
                this.f63933k = i2 + 2;
                spdyStream = new SpdyStream(i2, this, z3, z4, list);
                if (spdyStream.isOpen()) {
                    this.f63930h.put(Integer.valueOf(i2), spdyStream);
                    m52813F0(false);
                }
            }
            if (i == 0) {
                this.f63947y.synStream(z3, z4, i2, i, list);
            } else {
                if (this.f63928f) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
                this.f63947y.pushPromise(i, i2, list);
            }
        }
        if (!z) {
            this.f63947y.flush();
        }
        return spdyStream;
    }

    /* renamed from: y0 */
    public final void m52824y0(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException {
        Buffer buffer = new Buffer();
        long j = i2;
        bufferedSource.require(j);
        bufferedSource.read(buffer, j);
        if (buffer.size() == j) {
            this.f63936n.execute(new C13201f("OkHttp %s Push Data[%s]", new Object[]{this.f63931i, Integer.valueOf(i)}, i, buffer, i2, z));
            return;
        }
        throw new IOException(buffer.size() + CloudStorageConstants.OPERATION_NOT_EQUAL + i2);
    }

    /* renamed from: z0 */
    public final void m52825z0(int i, List<Header> list, boolean z) {
        this.f63936n.execute(new C13200e("OkHttp %s Push Headers[%s]", new Object[]{this.f63931i, Integer.valueOf(i)}, i, list, z));
    }

    public SpdyConnection(Builder builder) throws IOException {
        this.f63930h = new HashMap();
        this.f63935m = System.nanoTime();
        this.f63940r = 0L;
        Settings settings = new Settings();
        this.f63942t = settings;
        Settings settings2 = new Settings();
        this.f63943u = settings2;
        this.f63944v = false;
        this.f63926J = new LinkedHashSet();
        Protocol protocol = builder.f63952d;
        this.f63927e = protocol;
        this.f63938p = builder.f63953e;
        boolean z = builder.f63954f;
        this.f63928f = z;
        this.f63929g = builder.f63951c;
        this.f63933k = builder.f63954f ? 1 : 2;
        if (builder.f63954f && protocol == Protocol.HTTP_2) {
            this.f63933k += 2;
        }
        this.f63939q = builder.f63954f ? 1 : 2;
        if (builder.f63954f) {
            settings.m52773u(7, 0, 16777216);
        }
        String str = builder.f63949a;
        this.f63931i = str;
        C13196a c13196a = null;
        if (protocol == Protocol.HTTP_2) {
            this.f63945w = new Http2();
            this.f63936n = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(String.format("OkHttp %s Push Observer", str), true));
            settings2.m52773u(7, 0, 65535);
            settings2.m52773u(5, 0, 16384);
        } else if (protocol == Protocol.SPDY_3) {
            this.f63945w = new Spdy3();
            this.f63936n = null;
        } else {
            throw new AssertionError(protocol);
        }
        this.f63941s = settings2.m52762j(65536);
        this.f63946x = builder.f63950b;
        this.f63947y = this.f63945w.newWriter(Okio.buffer(Okio.sink(builder.f63950b)), z);
        C13203h c13203h = new C13203h(this, c13196a);
        this.f63948z = c13203h;
        new Thread(c13203h).start();
    }
}
