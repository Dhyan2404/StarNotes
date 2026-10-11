package okhttp3.internal.http1;

import com.couchbase.lite.internal.core.C4Replicator;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 F2\u00020\u0001:\u0007\u0010,2F\u0003\u000b\bB)\u0012\b\u0010*\u001a\u0004\u0018\u00010(\u0012\u0006\u00100\u001a\u00020+\u0012\u0006\u00104\u001a\u000201\u0012\u0006\u00107\u001a\u000205¢\u0006\u0004\bD\u0010EJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0005H\u0016J\b\u0010\u0015\u001a\u00020\u000fH\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010\u001c\u001a\u00020\u001bH\u0016J\b\u0010\u001d\u001a\u00020\u000fH\u0016J\b\u0010\u001e\u001a\u00020\u000fH\u0016J\u0016\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020 J\u0012\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010$\u001a\u00020#H\u0016J\u000e\u0010'\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017R\u0016\u0010*\u001a\u0004\u0018\u00010(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010)R\u001a\u00100\u001a\u00020+8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00107\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u00109R\u0014\u0010=\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010<R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010>R\u0018\u0010@\u001a\u00020#*\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b2\u0010?R\u0018\u0010@\u001a\u00020#*\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010AR\u0011\u0010B\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\bB\u0010C¨\u0006G"}, m61528d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "Lokio/Sink;", "d", C6998g.f39679a, "", "length", "Lokio/Source;", C6997f.f39671c, "Lokhttp3/HttpUrl;", "url", "e", C6999h.f39688c, "Lokio/ForwardingTimeout;", "timeout", "", "a", "Lokhttp3/Request;", AbstractLogger.REQUEST, "contentLength", "createRequestBody", "cancel", "writeRequestHeaders", "Lokhttp3/Response;", AbstractLogger.RESPONSE, "reportedContentLength", "openResponseBodySource", "Lokhttp3/Headers;", "trailers", "flushRequest", "finishRequest", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "", "requestLine", "writeRequest", "", "expectContinue", "Lokhttp3/Response$Builder;", "readResponseHeaders", "skipConnectBody", "Lokhttp3/OkHttpClient;", "Lokhttp3/OkHttpClient;", Constant.CLIENT, "Lokhttp3/internal/connection/RealConnection;", "b", "Lokhttp3/internal/connection/RealConnection;", "getConnection", "()Lokhttp3/internal/connection/RealConnection;", Http2ExchangeCodec.f103777g, "Lokio/BufferedSource;", "c", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "Lokio/BufferedSink;", "sink", "", "I", "state", "Lokhttp3/internal/http1/HeadersReader;", "Lokhttp3/internal/http1/HeadersReader;", "headersReader", "Lokhttp3/Headers;", "(Lokhttp3/Response;)Z", "isChunked", "(Lokhttp3/Request;)Z", "isClosed", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V", "Companion", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
/* loaded from: classes11.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {

    /* renamed from: h */
    public static final long f103653h = -1;

    /* renamed from: i */
    public static final int f103654i = 0;

    /* renamed from: j */
    public static final int f103655j = 1;

    /* renamed from: k */
    public static final int f103656k = 2;

    /* renamed from: l */
    public static final int f103657l = 3;

    /* renamed from: m */
    public static final int f103658m = 4;

    /* renamed from: n */
    public static final int f103659n = 5;

    /* renamed from: o */
    public static final int f103660o = 6;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final OkHttpClient client;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RealConnection connection;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final BufferedSource source;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final BufferedSink sink;

    /* renamed from: e, reason: from kotlin metadata */
    public int state;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final HeadersReader headersReader;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Headers trailers;

    /* renamed from: okhttp3.internal.http1.Http1ExchangeCodec$a */
    /* loaded from: classes11.dex */
    public abstract class AbstractC18604a implements Source {

        /* renamed from: e */
        @NotNull
        public final ForwardingTimeout f103668e;

        /* renamed from: f */
        public boolean f103669f;

        public AbstractC18604a() {
            this.f103668e = new ForwardingTimeout(Http1ExchangeCodec.this.source.getTimeout());
        }

        /* renamed from: H */
        public final void m64907H(boolean z) {
            this.f103669f = z;
        }

        /* renamed from: f */
        public final boolean m64908f() {
            return this.f103669f;
        }

        @NotNull
        /* renamed from: j */
        public final ForwardingTimeout m64909j() {
            return this.f103668e;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            try {
                return Http1ExchangeCodec.this.source.read(sink, j);
            } catch (IOException e) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                this.m64910w();
                throw e;
            }
        }

        @Override // okio.Source
        @NotNull
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f103668e;
        }

        /* renamed from: w */
        public final void m64910w() {
            if (Http1ExchangeCodec.this.state == 6) {
                return;
            }
            if (Http1ExchangeCodec.this.state == 5) {
                Http1ExchangeCodec.this.m64899a(this.f103668e);
                Http1ExchangeCodec.this.state = 6;
            } else {
                throw new IllegalStateException("state: " + Http1ExchangeCodec.this.state);
            }
        }
    }

    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* renamed from: okhttp3.internal.http1.Http1ExchangeCodec$b */
    /* loaded from: classes11.dex */
    public final class C18605b implements Sink {

        /* renamed from: e */
        @NotNull
        public final ForwardingTimeout f103671e;

        /* renamed from: f */
        public boolean f103672f;

        public C18605b() {
            this.f103671e = new ForwardingTimeout(Http1ExchangeCodec.this.sink.getTimeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public synchronized void close() {
            if (this.f103672f) {
                return;
            }
            this.f103672f = true;
            Http1ExchangeCodec.this.sink.writeUtf8("0\r\n\r\n");
            Http1ExchangeCodec.this.m64899a(this.f103671e);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() {
            if (this.f103672f) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // okio.Sink
        @NotNull
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f103671e;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!(!this.f103672f)) {
                throw new IllegalStateException("closed".toString());
            }
            if (j == 0) {
                return;
            }
            Http1ExchangeCodec.this.sink.writeHexadecimalUnsignedLong(j);
            Http1ExchangeCodec.this.sink.writeUtf8("\r\n");
            Http1ExchangeCodec.this.sink.write(source, j);
            Http1ExchangeCodec.this.sink.writeUtf8("\r\n");
        }
    }

    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* renamed from: okhttp3.internal.http1.Http1ExchangeCodec$c */
    /* loaded from: classes11.dex */
    public final class C18606c extends AbstractC18604a {

        /* renamed from: h */
        @NotNull
        public final HttpUrl f103674h;

        /* renamed from: i */
        public long f103675i;

        /* renamed from: j */
        public boolean f103676j;

        /* renamed from: k */
        public final /* synthetic */ Http1ExchangeCodec f103677k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18606c(@NotNull Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
            super();
            Intrinsics.checkNotNullParameter(url, "url");
            this.f103677k = http1ExchangeCodec;
            this.f103674h = url;
            this.f103675i = -1L;
            this.f103676j = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        
            if (r1 != false) goto L14;
         */
        /* renamed from: I */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m64911I() {
            /*
                r7 = this;
                long r0 = r7.f103675i
                r2 = -1
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 == 0) goto L11
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.f103677k
                okio.BufferedSource r0 = okhttp3.internal.http1.Http1ExchangeCodec.access$getSource$p(r0)
                r0.readUtf8LineStrict()
            L11:
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.f103677k     // Catch: java.lang.NumberFormatException -> La2
                okio.BufferedSource r0 = okhttp3.internal.http1.Http1ExchangeCodec.access$getSource$p(r0)     // Catch: java.lang.NumberFormatException -> La2
                long r0 = r0.readHexadecimalUnsignedLong()     // Catch: java.lang.NumberFormatException -> La2
                r7.f103675i = r0     // Catch: java.lang.NumberFormatException -> La2
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.f103677k     // Catch: java.lang.NumberFormatException -> La2
                okio.BufferedSource r0 = okhttp3.internal.http1.Http1ExchangeCodec.access$getSource$p(r0)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r0 = r0.readUtf8LineStrict()     // Catch: java.lang.NumberFormatException -> La2
                java.lang.CharSequence r0 = kotlin.text.StringsKt.trim(r0)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r0 = r0.toString()     // Catch: java.lang.NumberFormatException -> La2
                long r1 = r7.f103675i     // Catch: java.lang.NumberFormatException -> La2
                r3 = 0
                int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r1 < 0) goto L81
                int r1 = r0.length()     // Catch: java.lang.NumberFormatException -> La2
                r2 = 0
                if (r1 <= 0) goto L40
                r1 = 1
                goto L41
            L40:
                r1 = r2
            L41:
                if (r1 == 0) goto L4d
                java.lang.String r1 = ";"
                r5 = 2
                r6 = 0
                boolean r1 = kotlin.text.StringsKt.startsWith$default(r0, r1, r2, r5, r6)     // Catch: java.lang.NumberFormatException -> La2
                if (r1 == 0) goto L81
            L4d:
                long r0 = r7.f103675i
                int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                if (r0 != 0) goto L80
                r7.f103676j = r2
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.f103677k
                okhttp3.internal.http1.HeadersReader r1 = okhttp3.internal.http1.Http1ExchangeCodec.access$getHeadersReader$p(r0)
                okhttp3.Headers r1 = r1.readHeaders()
                okhttp3.internal.http1.Http1ExchangeCodec.access$setTrailers$p(r0, r1)
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.f103677k
                okhttp3.OkHttpClient r0 = okhttp3.internal.http1.Http1ExchangeCodec.access$getClient$p(r0)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                okhttp3.CookieJar r0 = r0.cookieJar()
                okhttp3.HttpUrl r1 = r7.f103674h
                okhttp3.internal.http1.Http1ExchangeCodec r2 = r7.f103677k
                okhttp3.Headers r2 = okhttp3.internal.http1.Http1ExchangeCodec.access$getTrailers$p(r2)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
                okhttp3.internal.http.HttpHeaders.receiveHeaders(r0, r1, r2)
                r7.m64910w()
            L80:
                return
            L81:
                java.net.ProtocolException r1 = new java.net.ProtocolException     // Catch: java.lang.NumberFormatException -> La2
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La2
                r2.<init>()     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r3 = "expected chunk size and optional extensions but was \""
                r2.append(r3)     // Catch: java.lang.NumberFormatException -> La2
                long r3 = r7.f103675i     // Catch: java.lang.NumberFormatException -> La2
                r2.append(r3)     // Catch: java.lang.NumberFormatException -> La2
                r2.append(r0)     // Catch: java.lang.NumberFormatException -> La2
                r7 = 34
                r2.append(r7)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r7 = r2.toString()     // Catch: java.lang.NumberFormatException -> La2
                r1.<init>(r7)     // Catch: java.lang.NumberFormatException -> La2
                throw r1     // Catch: java.lang.NumberFormatException -> La2
            La2:
                r7 = move-exception
                java.net.ProtocolException r0 = new java.net.ProtocolException
                java.lang.String r7 = r7.getMessage()
                r0.<init>(r7)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http1.Http1ExchangeCodec.C18606c.m64911I():void");
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (m64908f()) {
                return;
            }
            if (this.f103676j && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.f103677k.getConnection().noNewExchanges$okhttp();
                m64910w();
            }
            m64907H(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractC18604a, okio.Source
        public long read(@NotNull Buffer sink, long j) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (!(!m64908f())) {
                throw new IllegalStateException("closed".toString());
            }
            if (!this.f103676j) {
                return -1L;
            }
            long j2 = this.f103675i;
            if (j2 == 0 || j2 == -1) {
                m64911I();
                if (!this.f103676j) {
                    return -1L;
                }
            }
            long read = super.read(sink, Math.min(j, this.f103675i));
            if (read != -1) {
                this.f103675i -= read;
                return read;
            }
            this.f103677k.getConnection().noNewExchanges$okhttp();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            m64910w();
            throw protocolException;
        }
    }

    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* renamed from: okhttp3.internal.http1.Http1ExchangeCodec$d */
    /* loaded from: classes11.dex */
    public final class C18607d extends AbstractC18604a {

        /* renamed from: h */
        public long f103678h;

        public C18607d(long j) {
            super();
            this.f103678h = j;
            if (j == 0) {
                m64910w();
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (m64908f()) {
                return;
            }
            if (this.f103678h != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                m64910w();
            }
            m64907H(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractC18604a, okio.Source
        public long read(@NotNull Buffer sink, long j) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (!(!m64908f())) {
                throw new IllegalStateException("closed".toString());
            }
            long j2 = this.f103678h;
            if (j2 == 0) {
                return -1L;
            }
            long read = super.read(sink, Math.min(j2, j));
            if (read == -1) {
                Http1ExchangeCodec.this.getConnection().noNewExchanges$okhttp();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m64910w();
                throw protocolException;
            }
            long j3 = this.f103678h - read;
            this.f103678h = j3;
            if (j3 == 0) {
                m64910w();
            }
            return read;
        }
    }

    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* renamed from: okhttp3.internal.http1.Http1ExchangeCodec$e */
    /* loaded from: classes11.dex */
    public final class C18608e implements Sink {

        /* renamed from: e */
        @NotNull
        public final ForwardingTimeout f103680e;

        /* renamed from: f */
        public boolean f103681f;

        public C18608e() {
            this.f103680e = new ForwardingTimeout(Http1ExchangeCodec.this.sink.getTimeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() {
            if (this.f103681f) {
                return;
            }
            this.f103681f = true;
            Http1ExchangeCodec.this.m64899a(this.f103680e);
            Http1ExchangeCodec.this.state = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (this.f103681f) {
                return;
            }
            Http1ExchangeCodec.this.sink.flush();
        }

        @Override // okio.Sink
        @NotNull
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f103680e;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!(!this.f103681f)) {
                throw new IllegalStateException("closed".toString());
            }
            Util.checkOffsetAndCount(source.size(), 0L, j);
            Http1ExchangeCodec.this.sink.write(source, j);
        }
    }

    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* renamed from: okhttp3.internal.http1.Http1ExchangeCodec$f */
    /* loaded from: classes11.dex */
    public final class C18609f extends AbstractC18604a {

        /* renamed from: h */
        public boolean f103683h;

        public C18609f() {
            super();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (m64908f()) {
                return;
            }
            if (!this.f103683h) {
                m64910w();
            }
            m64907H(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractC18604a, okio.Source
        public long read(@NotNull Buffer sink, long j) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (!(!m64908f())) {
                throw new IllegalStateException("closed".toString());
            }
            if (this.f103683h) {
                return -1L;
            }
            long read = super.read(sink, j);
            if (read != -1) {
                return read;
            }
            this.f103683h = true;
            m64910w();
            return -1L;
        }
    }

    public Http1ExchangeCodec(@Nullable OkHttpClient okHttpClient, @NotNull RealConnection connection, @NotNull BufferedSource source, @NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.client = okHttpClient;
        this.connection = connection;
        this.source = source;
        this.sink = sink;
        this.headersReader = new HeadersReader(source);
    }

    /* renamed from: a */
    public final void m64899a(ForwardingTimeout timeout) {
        Timeout delegate = timeout.getDelegate();
        timeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    /* renamed from: b */
    public final boolean m64900b(Request request) {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals("chunked", request.header("Transfer-Encoding"), true);
        return equals;
    }

    /* renamed from: c */
    public final boolean m64901c(Response response) {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true);
        return equals;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getConnection().cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Sink createRequestBody(@NotNull Request request, long contentLength) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (request.body() != null && request.body().isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (m64900b(request)) {
            return m64902d();
        }
        if (contentLength != -1) {
            return m64905g();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    /* renamed from: d */
    public final Sink m64902d() {
        if (this.state == 1) {
            this.state = 2;
            return new C18605b();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    /* renamed from: e */
    public final Source m64903e(HttpUrl url) {
        if (this.state == 4) {
            this.state = 5;
            return new C18606c(this, url);
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    /* renamed from: f */
    public final Source m64904f(long length) {
        if (this.state == 4) {
            this.state = 5;
            return new C18607d(length);
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        this.sink.flush();
    }

    /* renamed from: g */
    public final Sink m64905g() {
        if (this.state == 1) {
            this.state = 2;
            return new C18608e();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public RealConnection getConnection() {
        return this.connection;
    }

    /* renamed from: h */
    public final Source m64906h() {
        if (this.state == 4) {
            this.state = 5;
            getConnection().noNewExchanges$okhttp();
            return new C18609f();
        }
        throw new IllegalStateException(("state: " + this.state).toString());
    }

    public final boolean isClosed() {
        return this.state == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Source openResponseBodySource(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return m64904f(0L);
        }
        if (m64901c(response)) {
            return m64903e(response.request().url());
        }
        long headersContentLength = Util.headersContentLength(response);
        return headersContentLength != -1 ? m64904f(headersContentLength) : m64906h();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @Nullable
    public Response.Builder readResponseHeaders(boolean expectContinue) {
        int i = this.state;
        boolean z = false;
        if (!(i == 1 || i == 2 || i == 3)) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        try {
            StatusLine parse = StatusLine.INSTANCE.parse(this.headersReader.readLine());
            Response.Builder headers = new Response.Builder().protocol(parse.protocol).code(parse.code).message(parse.message).headers(this.headersReader.readHeaders());
            if (expectContinue && parse.code == 100) {
                return null;
            }
            int i2 = parse.code;
            if (i2 == 100) {
                this.state = 3;
                return headers;
            }
            if (102 <= i2 && i2 < 200) {
                z = true;
            }
            if (z) {
                this.state = 3;
                return headers;
            }
            this.state = 4;
            return headers;
        } catch (EOFException e) {
            throw new IOException("unexpected end of stream on " + getConnection().getRoute().address().url().redact(), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        if (m64901c(response)) {
            return -1L;
        }
        return Util.headersContentLength(response);
    }

    public final void skipConnectBody(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        long headersContentLength = Util.headersContentLength(response);
        if (headersContentLength == -1) {
            return;
        }
        Source m64904f = m64904f(headersContentLength);
        Util.skipAll(m64904f, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        m64904f.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Headers trailers() {
        if (!(this.state == 6)) {
            throw new IllegalStateException("too early; can't read the trailers yet".toString());
        }
        Headers headers = this.trailers;
        return headers == null ? Util.EMPTY_HEADERS : headers;
    }

    public final void writeRequest(@NotNull Headers headers, @NotNull String requestLine) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(requestLine, "requestLine");
        if (!(this.state == 0)) {
            throw new IllegalStateException(("state: " + this.state).toString());
        }
        this.sink.writeUtf8(requestLine).writeUtf8("\r\n");
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            this.sink.writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8("\r\n");
        }
        this.sink.writeUtf8("\r\n");
        this.state = 1;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        RequestLine requestLine = RequestLine.INSTANCE;
        Proxy.Type type = getConnection().getRoute().proxy().type();
        Intrinsics.checkNotNullExpressionValue(type, "connection.route().proxy.type()");
        writeRequest(request.headers(), requestLine.get(request, type));
    }
}
