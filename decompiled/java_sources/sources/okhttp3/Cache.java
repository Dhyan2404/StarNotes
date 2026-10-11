package okhttp3;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 P2\u00020\u00012\u00020\u0002:\u0004QPRSB!\b\u0000\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u0010&\u001a\u00020$\u0012\u0006\u0010L\u001a\u00020K¢\u0006\u0004\bM\u0010NB\u0019\b\u0016\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u0010&\u001a\u00020$¢\u0006\u0004\bM\u0010OJ\u0016\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0018\u00010\u0003R\u00020\u0004H\u0002J\u0019\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0006\u0010\u001b\u001a\u00020\u0006J\u0006\u0010\u001c\u001a\u00020\u0006J\u0006\u0010\u001d\u001a\u00020\u0006J\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eJ\u0006\u0010\"\u001a\u00020!J\u0006\u0010#\u001a\u00020!J\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020$J\b\u0010'\u001a\u00020\u0006H\u0016J\b\u0010(\u001a\u00020\u0006H\u0016J\u000f\u0010,\u001a\u00020)H\u0007¢\u0006\u0004\b*\u0010+J\u0017\u00101\u001a\u00020\u00062\u0006\u0010.\u001a\u00020-H\u0000¢\u0006\u0004\b/\u00100J\u000f\u00104\u001a\u00020\u0006H\u0000¢\u0006\u0004\b2\u00103J\u0006\u00105\u001a\u00020!J\u0006\u00106\u001a\u00020!J\u0006\u00107\u001a\u00020!R\u001a\u0010<\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\"\u0010#\u001a\u00020!8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010\"\u001a\u00020!8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bB\u0010=\u001a\u0004\bC\u0010?\"\u0004\bD\u0010AR\u0016\u00105\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010=R\u0016\u00106\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010=R\u0016\u00107\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010=R\u0011\u0010I\u001a\u00020H8F¢\u0006\u0006\u001a\u0004\bI\u0010JR\u0011\u0010,\u001a\u00020)8G¢\u0006\u0006\u001a\u0004\b,\u0010+¨\u0006T"}, m61528d2 = {"Lokhttp3/Cache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "", C6997f.f39671c, "Lokhttp3/Request;", AbstractLogger.REQUEST, "Lokhttp3/Response;", "get$okhttp", "(Lokhttp3/Request;)Lokhttp3/Response;", "get", AbstractLogger.RESPONSE, "Lokhttp3/internal/cache/CacheRequest;", "put$okhttp", "(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;", "put", "remove$okhttp", "(Lokhttp3/Request;)V", SyncConstant.SYNC_ACTION_REMOVE, "cached", "network", "update$okhttp", "(Lokhttp3/Response;Lokhttp3/Response;)V", "update", "initialize", "delete", "evictAll", "", "", "urls", "", "writeAbortCount", "writeSuccessCount", "", "size", "maxSize", "flush", "close", "Ljava/io/File;", "-deprecated_directory", "()Ljava/io/File;", "directory", "Lokhttp3/internal/cache/CacheStrategy;", "cacheStrategy", "trackResponse$okhttp", "(Lokhttp3/internal/cache/CacheStrategy;)V", "trackResponse", "trackConditionalCacheHit$okhttp", "()V", "trackConditionalCacheHit", "networkCount", "hitCount", "requestCount", "e", "Lokhttp3/internal/cache/DiskLruCache;", "getCache$okhttp", "()Lokhttp3/internal/cache/DiskLruCache;", "cache", "I", "getWriteSuccessCount$okhttp", "()I", "setWriteSuccessCount$okhttp", "(I)V", C6998g.f39679a, "getWriteAbortCount$okhttp", "setWriteAbortCount$okhttp", C6999h.f39688c, "i", "j", "", "isClosed", Constants.BOOLEAN_VALUE_SIG, "Lokhttp3/internal/io/FileSystem;", "fileSystem", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V", "(Ljava/io/File;J)V", "Companion", "CacheResponseBody", "Entry", "RealCacheRequest", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class Cache implements Closeable, Flushable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: k */
    public static final int f103123k = 201105;

    /* renamed from: l */
    public static final int f103124l = 0;

    /* renamed from: m */
    public static final int f103125m = 1;

    /* renamed from: n */
    public static final int f103126n = 2;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final DiskLruCache cache;

    /* renamed from: f, reason: from kotlin metadata */
    public int writeSuccessCount;

    /* renamed from: g, reason: from kotlin metadata */
    public int writeAbortCount;

    /* renamed from: h, reason: from kotlin metadata */
    public int networkCount;

    /* renamed from: i, reason: from kotlin metadata */
    public int hitCount;

    /* renamed from: j, reason: from kotlin metadata */
    public int requestCount;

    /* loaded from: classes11.dex */
    public static final class CacheResponseBody extends ResponseBody {

        /* renamed from: f */
        @NotNull
        public final DiskLruCache.Snapshot f103133f;

        /* renamed from: g */
        @Nullable
        public final String f103134g;

        /* renamed from: h */
        @Nullable
        public final String f103135h;

        /* renamed from: i */
        @NotNull
        public final BufferedSource f103136i;

        public CacheResponseBody(@NotNull DiskLruCache.Snapshot snapshot, @Nullable String str, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            this.f103133f = snapshot;
            this.f103134g = str;
            this.f103135h = str2;
            this.f103136i = Okio.buffer(new ForwardingSource(snapshot.getSource(1)) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.m64762w().close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        /* renamed from: contentLength */
        public long getContentLength() {
            String str = this.f103135h;
            if (str != null) {
                return Util.toLongOrDefault(str, -1L);
            }
            return -1L;
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        /* renamed from: contentType */
        public MediaType getF103417f() {
            String str = this.f103134g;
            if (str != null) {
                return MediaType.INSTANCE.parse(str);
            }
            return null;
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        /* renamed from: source */
        public BufferedSource getSource() {
            return this.f103136i;
        }

        @NotNull
        /* renamed from: w */
        public final DiskLruCache.Snapshot m64762w() {
            return this.f103133f;
        }
    }

    @Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\t\u0010\nJ\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010J\n\u0010\u0014\u001a\u00020\u0012*\u00020\fJ\n\u0010\u0015\u001a\u00020\u000e*\u00020\fJ\u0012\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016*\u00020\u000eH\u0002J\u0018\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eH\u0002R\u0014\u0010\u001b\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001c¨\u0006\""}, m61528d2 = {"Lokhttp3/Cache$Companion;", "", "Lokhttp3/HttpUrl;", "url", "", "key", "Lokio/BufferedSource;", "source", "", "readInt$okhttp", "(Lokio/BufferedSource;)I", "readInt", "Lokhttp3/Response;", "cachedResponse", "Lokhttp3/Headers;", "cachedRequest", "Lokhttp3/Request;", "newRequest", "", "varyMatches", "hasVaryAll", "varyHeaders", "", "a", "requestHeaders", "responseHeaders", "b", "ENTRY_BODY", "I", "ENTRY_COUNT", "ENTRY_METADATA", "VERSION", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
    @SourceDebugExtension({"SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,788:1\n2624#2,3:789\n*S KotlinDebug\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n*L\n729#1:789,3\n*E\n"})
    /* loaded from: classes11.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Set<String> m64763a(Headers headers) {
            Set<String> emptySet;
            boolean equals;
            List split$default;
            CharSequence trim;
            Comparator case_insensitive_order;
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i = 0; i < size; i++) {
                equals = StringsKt__StringsJVMKt.equals("Vary", headers.name(i), true);
                if (equals) {
                    String value = headers.value(i);
                    if (treeSet == null) {
                        case_insensitive_order = StringsKt__StringsJVMKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE);
                        treeSet = new TreeSet(case_insensitive_order);
                    }
                    split$default = StringsKt__StringsKt.split$default((CharSequence) value, new char[]{','}, false, 0, 6, (Object) null);
                    Iterator it2 = split$default.iterator();
                    while (it2.hasNext()) {
                        trim = StringsKt__StringsKt.trim((CharSequence) it2.next());
                        treeSet.add(trim.toString());
                    }
                }
            }
            if (treeSet != null) {
                return treeSet;
            }
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        }

        /* renamed from: b */
        public final Headers m64764b(Headers requestHeaders, Headers responseHeaders) {
            Set<String> m64763a = m64763a(responseHeaders);
            if (m64763a.isEmpty()) {
                return Util.EMPTY_HEADERS;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = requestHeaders.size();
            for (int i = 0; i < size; i++) {
                String name = requestHeaders.name(i);
                if (m64763a.contains(name)) {
                    builder.add(name, requestHeaders.value(i));
                }
            }
            return builder.build();
        }

        public final boolean hasVaryAll(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            return m64763a(response.headers()).contains("*");
        }

        @JvmStatic
        @NotNull
        public final String key(@NotNull HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return ByteString.INSTANCE.encodeUtf8(url.getUrl()).md5().hex();
        }

        public final int readInt$okhttp(@NotNull BufferedSource source) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            try {
                long readDecimalLong = source.readDecimalLong();
                String readUtf8LineStrict = source.readUtf8LineStrict();
                if (readDecimalLong >= 0 && readDecimalLong <= 2147483647L) {
                    if (!(readUtf8LineStrict.length() > 0)) {
                        return (int) readDecimalLong;
                    }
                }
                throw new IOException("expected an int but was \"" + readDecimalLong + readUtf8LineStrict + '\"');
            } catch (NumberFormatException e) {
                throw new IOException(e.getMessage());
            }
        }

        @NotNull
        public final Headers varyHeaders(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            Response networkResponse = response.networkResponse();
            Intrinsics.checkNotNull(networkResponse);
            return m64764b(networkResponse.request().headers(), response.headers());
        }

        public final boolean varyMatches(@NotNull Response cachedResponse, @NotNull Headers cachedRequest, @NotNull Request newRequest) {
            Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
            Intrinsics.checkNotNullParameter(cachedRequest, "cachedRequest");
            Intrinsics.checkNotNullParameter(newRequest, "newRequest");
            Set<String> m64763a = m64763a(cachedResponse.headers());
            if ((m64763a instanceof Collection) && m64763a.isEmpty()) {
                return true;
            }
            for (String str : m64763a) {
                if (!Intrinsics.areEqual(cachedRequest.values(str), newRequest.headers(str))) {
                    return false;
                }
            }
            return true;
        }

        public Companion() {
        }
    }

    /* loaded from: classes11.dex */
    public final class RealCacheRequest implements CacheRequest {

        /* renamed from: a */
        @NotNull
        public final DiskLruCache.Editor f103151a;

        /* renamed from: b */
        @NotNull
        public final Sink f103152b;

        /* renamed from: c */
        @NotNull
        public final Sink f103153c;

        /* renamed from: d */
        public boolean f103154d;

        /* renamed from: e */
        public final /* synthetic */ Cache f103155e;

        public RealCacheRequest(@NotNull final Cache cache, DiskLruCache.Editor editor) {
            Intrinsics.checkNotNullParameter(editor, "editor");
            this.f103155e = cache;
            this.f103151a = editor;
            Sink newSink = editor.newSink(1);
            this.f103152b = newSink;
            this.f103153c = new ForwardingSink(newSink) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
                public void close() throws IOException {
                    Cache cache2 = Cache.this;
                    RealCacheRequest realCacheRequest = this;
                    synchronized (cache2) {
                        if (realCacheRequest.m64772b()) {
                            return;
                        }
                        realCacheRequest.m64773c(true);
                        cache2.setWriteSuccessCount$okhttp(cache2.getWriteSuccessCount() + 1);
                        super.close();
                        this.f103151a.commit();
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() {
            Cache cache = this.f103155e;
            synchronized (cache) {
                if (this.f103154d) {
                    return;
                }
                this.f103154d = true;
                cache.setWriteAbortCount$okhttp(cache.getWriteAbortCount() + 1);
                Util.closeQuietly(this.f103152b);
                try {
                    this.f103151a.abort();
                } catch (IOException unused) {
                }
            }
        }

        /* renamed from: b */
        public final boolean m64772b() {
            return this.f103154d;
        }

        @Override // okhttp3.internal.cache.CacheRequest
        @NotNull
        public Sink body() {
            return this.f103153c;
        }

        /* renamed from: c */
        public final void m64773c(boolean z) {
            this.f103154d = z;
        }
    }

    public Cache(@NotNull File directory, long j, @NotNull FileSystem fileSystem) {
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        this.cache = new DiskLruCache(fileSystem, directory, 201105, 2, j, TaskRunner.INSTANCE);
    }

    @JvmStatic
    @NotNull
    public static final String key(@NotNull HttpUrl httpUrl) {
        return INSTANCE.key(httpUrl);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "directory", imports = {}))
    @JvmName(name = "-deprecated_directory")
    @NotNull
    /* renamed from: -deprecated_directory, reason: not valid java name */
    public final File m74213deprecated_directory() {
        return this.cache.getDirectory();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.cache.close();
    }

    public final void delete() throws IOException {
        this.cache.delete();
    }

    @JvmName(name = "directory")
    @NotNull
    public final File directory() {
        return this.cache.getDirectory();
    }

    public final void evictAll() throws IOException {
        this.cache.evictAll();
    }

    /* renamed from: f */
    public final void m64761f(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.cache.flush();
    }

    @Nullable
    public final Response get$okhttp(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(INSTANCE.key(request.url()));
            if (snapshot == null) {
                return null;
            }
            try {
                Entry entry = new Entry(snapshot.getSource(0));
                Response m64768d = entry.m64768d(snapshot);
                if (entry.m64766b(request, m64768d)) {
                    return m64768d;
                }
                ResponseBody body = m64768d.body();
                if (body != null) {
                    Util.closeQuietly(body);
                }
                return null;
            } catch (IOException unused) {
                Util.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    @NotNull
    /* renamed from: getCache$okhttp, reason: from getter */
    public final DiskLruCache getCache() {
        return this.cache;
    }

    /* renamed from: getWriteAbortCount$okhttp, reason: from getter */
    public final int getWriteAbortCount() {
        return this.writeAbortCount;
    }

    /* renamed from: getWriteSuccessCount$okhttp, reason: from getter */
    public final int getWriteSuccessCount() {
        return this.writeSuccessCount;
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final void initialize() throws IOException {
        this.cache.initialize();
    }

    public final boolean isClosed() {
        return this.cache.isClosed();
    }

    public final long maxSize() {
        return this.cache.getMaxSize();
    }

    public final synchronized int networkCount() {
        return this.networkCount;
    }

    @Nullable
    public final CacheRequest put$okhttp(@NotNull Response response) {
        DiskLruCache.Editor editor;
        Intrinsics.checkNotNullParameter(response, "response");
        String method = response.request().method();
        if (HttpMethod.INSTANCE.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!Intrinsics.areEqual(method, "GET")) {
            return null;
        }
        Companion companion = INSTANCE;
        if (companion.hasVaryAll(response)) {
            return null;
        }
        Entry entry = new Entry(response);
        try {
            editor = DiskLruCache.edit$default(this.cache, companion.key(response.request().url()), 0L, 2, null);
            if (editor == null) {
                return null;
            }
            try {
                entry.m64770f(editor);
                return new RealCacheRequest(this, editor);
            } catch (IOException unused2) {
                m64761f(editor);
                return null;
            }
        } catch (IOException unused3) {
            editor = null;
        }
    }

    public final void remove$okhttp(@NotNull Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        this.cache.remove(INSTANCE.key(request.url()));
    }

    public final synchronized int requestCount() {
        return this.requestCount;
    }

    public final void setWriteAbortCount$okhttp(int i) {
        this.writeAbortCount = i;
    }

    public final void setWriteSuccessCount$okhttp(int i) {
        this.writeSuccessCount = i;
    }

    public final long size() throws IOException {
        return this.cache.size();
    }

    public final synchronized void trackConditionalCacheHit$okhttp() {
        this.hitCount++;
    }

    public final synchronized void trackResponse$okhttp(@NotNull CacheStrategy cacheStrategy) {
        Intrinsics.checkNotNullParameter(cacheStrategy, "cacheStrategy");
        this.requestCount++;
        if (cacheStrategy.getNetworkRequest() != null) {
            this.networkCount++;
        } else if (cacheStrategy.getCacheResponse() != null) {
            this.hitCount++;
        }
    }

    public final void update$okhttp(@NotNull Response cached, @NotNull Response network) {
        DiskLruCache.Editor editor;
        Intrinsics.checkNotNullParameter(cached, "cached");
        Intrinsics.checkNotNullParameter(network, "network");
        Entry entry = new Entry(network);
        ResponseBody body = cached.body();
        Intrinsics.checkNotNull(body, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        try {
            editor = ((CacheResponseBody) body).m64762w().edit();
            if (editor == null) {
                return;
            }
            try {
                entry.m64770f(editor);
                editor.commit();
            } catch (IOException unused) {
                m64761f(editor);
            }
        } catch (IOException unused2) {
            editor = null;
        }
    }

    @NotNull
    public final Iterator<String> urls() throws IOException {
        return new Cache$urls$1(this);
    }

    public final synchronized int writeAbortCount() {
        return this.writeAbortCount;
    }

    public final synchronized int writeSuccessCount() {
        return this.writeSuccessCount;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(@NotNull File directory, long j) {
        this(directory, j, FileSystem.SYSTEM);
        Intrinsics.checkNotNullParameter(directory, "directory");
    }

    /* loaded from: classes11.dex */
    public static final class Entry {

        /* renamed from: k */
        @NotNull
        public static final Companion f103138k = new Companion(null);

        /* renamed from: l */
        @NotNull
        public static final String f103139l;

        /* renamed from: m */
        @NotNull
        public static final String f103140m;

        /* renamed from: a */
        @NotNull
        public final HttpUrl f103141a;

        /* renamed from: b */
        @NotNull
        public final Headers f103142b;

        /* renamed from: c */
        @NotNull
        public final String f103143c;

        /* renamed from: d */
        @NotNull
        public final Protocol f103144d;

        /* renamed from: e */
        public final int f103145e;

        /* renamed from: f */
        @NotNull
        public final String f103146f;

        /* renamed from: g */
        @NotNull
        public final Headers f103147g;

        /* renamed from: h */
        @Nullable
        public final Handshake f103148h;

        /* renamed from: i */
        public final long f103149i;

        /* renamed from: j */
        public final long f103150j;

        @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, m61528d2 = {"Lokhttp3/Cache$Entry$Companion;", "", "()V", "RECEIVED_MILLIS", "", "SENT_MILLIS", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
        /* loaded from: classes11.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        static {
            StringBuilder sb = new StringBuilder();
            Platform.Companion companion = Platform.INSTANCE;
            sb.append(companion.get().getPrefix());
            sb.append("-Sent-Millis");
            f103139l = sb.toString();
            f103140m = companion.get().getPrefix() + "-Received-Millis";
        }

        public Entry(@NotNull Source rawSource) throws IOException {
            TlsVersion tlsVersion;
            Intrinsics.checkNotNullParameter(rawSource, "rawSource");
            try {
                BufferedSource buffer = Okio.buffer(rawSource);
                String readUtf8LineStrict = buffer.readUtf8LineStrict();
                HttpUrl parse = HttpUrl.INSTANCE.parse(readUtf8LineStrict);
                if (parse != null) {
                    this.f103141a = parse;
                    this.f103143c = buffer.readUtf8LineStrict();
                    Headers.Builder builder = new Headers.Builder();
                    int readInt$okhttp = Cache.INSTANCE.readInt$okhttp(buffer);
                    for (int i = 0; i < readInt$okhttp; i++) {
                        builder.addLenient$okhttp(buffer.readUtf8LineStrict());
                    }
                    this.f103142b = builder.build();
                    StatusLine parse2 = StatusLine.INSTANCE.parse(buffer.readUtf8LineStrict());
                    this.f103144d = parse2.protocol;
                    this.f103145e = parse2.code;
                    this.f103146f = parse2.message;
                    Headers.Builder builder2 = new Headers.Builder();
                    int readInt$okhttp2 = Cache.INSTANCE.readInt$okhttp(buffer);
                    for (int i2 = 0; i2 < readInt$okhttp2; i2++) {
                        builder2.addLenient$okhttp(buffer.readUtf8LineStrict());
                    }
                    String str = f103139l;
                    String str2 = builder2.get(str);
                    String str3 = f103140m;
                    String str4 = builder2.get(str3);
                    builder2.removeAll(str);
                    builder2.removeAll(str3);
                    this.f103149i = str2 != null ? Long.parseLong(str2) : 0L;
                    this.f103150j = str4 != null ? Long.parseLong(str4) : 0L;
                    this.f103147g = builder2.build();
                    if (m64765a()) {
                        String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
                        if (!(readUtf8LineStrict2.length() > 0)) {
                            CipherSuite forJavaName = CipherSuite.INSTANCE.forJavaName(buffer.readUtf8LineStrict());
                            List<Certificate> m64767c = m64767c(buffer);
                            List<Certificate> m64767c2 = m64767c(buffer);
                            if (!buffer.exhausted()) {
                                tlsVersion = TlsVersion.INSTANCE.forJavaName(buffer.readUtf8LineStrict());
                            } else {
                                tlsVersion = TlsVersion.SSL_3_0;
                            }
                            this.f103148h = Handshake.INSTANCE.get(tlsVersion, forJavaName, m64767c, m64767c2);
                        } else {
                            throw new IOException("expected \"\" but was \"" + readUtf8LineStrict2 + '\"');
                        }
                    } else {
                        this.f103148h = null;
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(rawSource, null);
                    return;
                }
                IOException iOException = new IOException("Cache corruption for " + readUtf8LineStrict);
                Platform.INSTANCE.get().log("cache corruption", 5, iOException);
                throw iOException;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(rawSource, th);
                    throw th2;
                }
            }
        }

        /* renamed from: a */
        public final boolean m64765a() {
            return Intrinsics.areEqual(this.f103141a.scheme(), "https");
        }

        /* renamed from: b */
        public final boolean m64766b(@NotNull Request request, @NotNull Response response) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(response, "response");
            return Intrinsics.areEqual(this.f103141a, request.url()) && Intrinsics.areEqual(this.f103143c, request.method()) && Cache.INSTANCE.varyMatches(response, this.f103142b, request);
        }

        /* renamed from: c */
        public final List<Certificate> m64767c(BufferedSource bufferedSource) throws IOException {
            List<Certificate> emptyList;
            int readInt$okhttp = Cache.INSTANCE.readInt$okhttp(bufferedSource);
            if (readInt$okhttp == -1) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(readInt$okhttp);
                for (int i = 0; i < readInt$okhttp; i++) {
                    String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
                    Buffer buffer = new Buffer();
                    ByteString decodeBase64 = ByteString.INSTANCE.decodeBase64(readUtf8LineStrict);
                    if (decodeBase64 == null) {
                        throw new IOException("Corrupt certificate in cache entry");
                    }
                    buffer.write(decodeBase64);
                    arrayList.add(certificateFactory.generateCertificate(buffer.inputStream()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        @NotNull
        /* renamed from: d */
        public final Response m64768d(@NotNull DiskLruCache.Snapshot snapshot) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            String str = this.f103147g.get("Content-Type");
            String str2 = this.f103147g.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.f103141a).method(this.f103143c, null).headers(this.f103142b).build()).protocol(this.f103144d).code(this.f103145e).message(this.f103146f).headers(this.f103147g).body(new CacheResponseBody(snapshot, str, str2)).handshake(this.f103148h).sentRequestAtMillis(this.f103149i).receivedResponseAtMillis(this.f103150j).build();
        }

        /* renamed from: e */
        public final void m64769e(BufferedSink bufferedSink, List<? extends Certificate> list) throws IOException {
            try {
                bufferedSink.writeDecimalLong(list.size()).writeByte(10);
                Iterator<? extends Certificate> it2 = list.iterator();
                while (it2.hasNext()) {
                    byte[] bytes = it2.next().getEncoded();
                    ByteString.Companion companion = ByteString.INSTANCE;
                    Intrinsics.checkNotNullExpressionValue(bytes, "bytes");
                    bufferedSink.writeUtf8(ByteString.Companion.of$default(companion, bytes, 0, 0, 3, null).base64()).writeByte(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: f */
        public final void m64770f(@NotNull DiskLruCache.Editor editor) throws IOException {
            Intrinsics.checkNotNullParameter(editor, "editor");
            BufferedSink buffer = Okio.buffer(editor.newSink(0));
            try {
                buffer.writeUtf8(this.f103141a.getUrl()).writeByte(10);
                buffer.writeUtf8(this.f103143c).writeByte(10);
                buffer.writeDecimalLong(this.f103142b.size()).writeByte(10);
                int size = this.f103142b.size();
                for (int i = 0; i < size; i++) {
                    buffer.writeUtf8(this.f103142b.name(i)).writeUtf8(": ").writeUtf8(this.f103142b.value(i)).writeByte(10);
                }
                buffer.writeUtf8(new StatusLine(this.f103144d, this.f103145e, this.f103146f).toString()).writeByte(10);
                buffer.writeDecimalLong(this.f103147g.size() + 2).writeByte(10);
                int size2 = this.f103147g.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    buffer.writeUtf8(this.f103147g.name(i2)).writeUtf8(": ").writeUtf8(this.f103147g.value(i2)).writeByte(10);
                }
                buffer.writeUtf8(f103139l).writeUtf8(": ").writeDecimalLong(this.f103149i).writeByte(10);
                buffer.writeUtf8(f103140m).writeUtf8(": ").writeDecimalLong(this.f103150j).writeByte(10);
                if (m64765a()) {
                    buffer.writeByte(10);
                    Handshake handshake = this.f103148h;
                    Intrinsics.checkNotNull(handshake);
                    buffer.writeUtf8(handshake.cipherSuite().javaName()).writeByte(10);
                    m64769e(buffer, this.f103148h.peerCertificates());
                    m64769e(buffer, this.f103148h.localCertificates());
                    buffer.writeUtf8(this.f103148h.tlsVersion().javaName()).writeByte(10);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(buffer, null);
            } finally {
            }
        }

        public Entry(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "response");
            this.f103141a = response.request().url();
            this.f103142b = Cache.INSTANCE.varyHeaders(response);
            this.f103143c = response.request().method();
            this.f103144d = response.protocol();
            this.f103145e = response.code();
            this.f103146f = response.message();
            this.f103147g = response.headers();
            this.f103148h = response.handshake();
            this.f103149i = response.sentRequestAtMillis();
            this.f103150j = response.receivedResponseAtMillis();
        }
    }
}
