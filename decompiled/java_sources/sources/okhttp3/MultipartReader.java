package okhttp3;

import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.http1.HeadersReader;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.Source;
import okio.Timeout;
import org.apache.poi.smtp.MIMEHeaders;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.util.MultiPartWriter;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 *2\u00020\u0001:\u0003*+,B\u0017\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b%\u0010&B\u0011\b\u0016\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b%\u0010)J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0017\u0010\u000f\u001a\u00020\r8\u0007¢\u0006\f\n\u0004\b\b\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u001c\u0010$\u001a\b\u0018\u00010!R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006-"}, m61528d2 = {"Lokhttp3/MultipartReader;", "Ljava/io/Closeable;", "Lokhttp3/MultipartReader$Part;", "nextPart", "", "close", "", "maxResult", C6997f.f39671c, "Lokio/BufferedSource;", "e", "Lokio/BufferedSource;", "source", "", Constants.STRING_SIG, MIMEHeaders.KEY_BOUNDARY, "()Ljava/lang/String;", "Lokio/ByteString;", C6998g.f39679a, "Lokio/ByteString;", "dashDashBoundary", C6999h.f39688c, "crlfDashDashBoundary", "", "i", "I", "partCount", "", "j", Constants.HASIDCALL_INDEX_SIG, "closed", C4921e.f26537n, "noMoreParts", "Lokhttp3/MultipartReader$a;", "l", "Lokhttp3/MultipartReader$a;", "currentPart", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lokio/BufferedSource;Ljava/lang/String;)V", "Lokhttp3/ResponseBody;", AbstractLogger.RESPONSE, "(Lokhttp3/ResponseBody;)V", "Companion", "Part", "a", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"})
/* loaded from: classes11.dex */
public final class MultipartReader implements Closeable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: m */
    @NotNull
    public static final Options f103289m;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BufferedSource source;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String boundary;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ByteString dashDashBoundary;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ByteString crlfDashDashBoundary;

    /* renamed from: i, reason: from kotlin metadata */
    public int partCount;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean closed;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean noMoreParts;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public C18601a currentPart;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lokhttp3/MultipartReader$Companion;", "", "()V", "afterBoundaryOptions", "Lokio/Options;", "getAfterBoundaryOptions", "()Lokio/Options;", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes11.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Options getAfterBoundaryOptions() {
            return MultipartReader.f103289m;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0001R\u0017\u0010\u0007\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\f\u001a\u00020\t8\u0007¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lokhttp3/MultipartReader$Part;", "Ljava/io/Closeable;", "", "close", "Lokhttp3/Headers;", "e", "Lokhttp3/Headers;", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "()Lokhttp3/Headers;", "Lokio/BufferedSource;", C6997f.f39671c, "Lokio/BufferedSource;", "body", "()Lokio/BufferedSource;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lokhttp3/Headers;Lokio/BufferedSource;)V", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes11.dex */
    public static final class Part implements Closeable {

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public final Headers headers;

        /* renamed from: f, reason: from kotlin metadata */
        @NotNull
        public final BufferedSource body;

        public Part(@NotNull Headers headers, @NotNull BufferedSource body) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            Intrinsics.checkNotNullParameter(body, "body");
            this.headers = headers;
            this.body = body;
        }

        @JvmName(name = "body")
        @NotNull
        /* renamed from: body, reason: from getter */
        public final BufferedSource getBody() {
            return this.body;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.body.close();
        }

        @JvmName(name = C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS)
        @NotNull
        /* renamed from: headers, reason: from getter */
        public final Headers getHeaders() {
            return this.headers;
        }
    }

    @SourceDebugExtension({"SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader$PartSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,210:1\n1#2:211\n268#3,26:212\n*S KotlinDebug\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader$PartSource\n*L\n159#1:212,26\n*E\n"})
    /* renamed from: okhttp3.MultipartReader$a */
    /* loaded from: classes11.dex */
    public final class C18601a implements Source {

        /* renamed from: e */
        @NotNull
        public final Timeout f103300e = new Timeout();

        public C18601a() {
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (Intrinsics.areEqual(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (!Intrinsics.areEqual(MultipartReader.this.currentPart, this)) {
                throw new IllegalStateException("closed".toString());
            }
            Timeout timeout = MultipartReader.this.source.getTimeout();
            Timeout timeout2 = this.f103300e;
            MultipartReader multipartReader = MultipartReader.this;
            long timeoutNanos = timeout.getTimeoutNanos();
            long minTimeout = Timeout.INSTANCE.minTimeout(timeout2.getTimeoutNanos(), timeout.getTimeoutNanos());
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            timeout.timeout(minTimeout, timeUnit);
            if (!timeout.getHasDeadline()) {
                if (timeout2.getHasDeadline()) {
                    timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                }
                try {
                    long m64816f = multipartReader.m64816f(j);
                    long read = m64816f == 0 ? -1L : multipartReader.source.read(sink, m64816f);
                    timeout.timeout(timeoutNanos, timeUnit);
                    if (timeout2.getHasDeadline()) {
                        timeout.clearDeadline();
                    }
                    return read;
                } catch (Throwable th) {
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (timeout2.getHasDeadline()) {
                        timeout.clearDeadline();
                    }
                    throw th;
                }
            }
            long deadlineNanoTime = timeout.deadlineNanoTime();
            if (timeout2.getHasDeadline()) {
                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
            }
            try {
                long m64816f2 = multipartReader.m64816f(j);
                long read2 = m64816f2 == 0 ? -1L : multipartReader.source.read(sink, m64816f2);
                timeout.timeout(timeoutNanos, timeUnit);
                if (timeout2.getHasDeadline()) {
                    timeout.deadlineNanoTime(deadlineNanoTime);
                }
                return read2;
            } catch (Throwable th2) {
                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.getHasDeadline()) {
                    timeout.deadlineNanoTime(deadlineNanoTime);
                }
                throw th2;
            }
        }

        @Override // okio.Source
        @NotNull
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f103300e;
        }
    }

    static {
        Options.Companion companion = Options.INSTANCE;
        ByteString.Companion companion2 = ByteString.INSTANCE;
        f103289m = companion.m65042of(companion2.encodeUtf8("\r\n"), companion2.encodeUtf8(MultiPartWriter.f115320h), companion2.encodeUtf8(" "), companion2.encodeUtf8("\t"));
    }

    public MultipartReader(@NotNull BufferedSource source, @NotNull String boundary) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(boundary, "boundary");
        this.source = source;
        this.boundary = boundary;
        this.dashDashBoundary = new Buffer().writeUtf8(MultiPartWriter.f115320h).writeUtf8(boundary).readByteString();
        this.crlfDashDashBoundary = new Buffer().writeUtf8("\r\n--").writeUtf8(boundary).readByteString();
    }

    @JvmName(name = MIMEHeaders.KEY_BOUNDARY)
    @NotNull
    /* renamed from: boundary, reason: from getter */
    public final String getBoundary() {
        return this.boundary;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    /* renamed from: f */
    public final long m64816f(long maxResult) {
        this.source.require(this.crlfDashDashBoundary.size());
        long indexOf = this.source.getBuffer().indexOf(this.crlfDashDashBoundary);
        return indexOf == -1 ? Math.min(maxResult, (this.source.getBuffer().size() - this.crlfDashDashBoundary.size()) + 1) : Math.min(maxResult, indexOf);
    }

    @Nullable
    public final Part nextPart() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.rangeEquals(0L, this.dashDashBoundary)) {
            this.source.skip(this.dashDashBoundary.size());
        } else {
            while (true) {
                long m64816f = m64816f(8192L);
                if (m64816f == 0) {
                    break;
                }
                this.source.skip(m64816f);
            }
            this.source.skip(this.crlfDashDashBoundary.size());
        }
        boolean z = false;
        while (true) {
            int select = this.source.select(f103289m);
            if (select == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (select == 0) {
                this.partCount++;
                Headers readHeaders = new HeadersReader(this.source).readHeaders();
                C18601a c18601a = new C18601a();
                this.currentPart = c18601a;
                return new Part(readHeaders, Okio.buffer(c18601a));
            }
            if (select == 1) {
                if (z) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (select == 2 || select == 3) {
                z = true;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultipartReader(@org.jetbrains.annotations.NotNull okhttp3.ResponseBody r3) throws java.io.IOException {
        /*
            r2 = this;
            java.lang.String r0 = "response"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            okio.BufferedSource r0 = r3.getSource()
            okhttp3.MediaType r3 = r3.getF103417f()
            if (r3 == 0) goto L1b
            java.lang.String r1 = "boundary"
            java.lang.String r3 = r3.parameter(r1)
            if (r3 == 0) goto L1b
            r2.<init>(r0, r3)
            return
        L1b:
            java.net.ProtocolException r2 = new java.net.ProtocolException
            java.lang.String r3 = "expected the Content-Type to have a boundary parameter"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartReader.<init>(okhttp3.ResponseBody):void");
    }
}
