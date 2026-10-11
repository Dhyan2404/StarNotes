package com.squareup.okhttp;

import com.onyx.android.sdk.base.common.CommonConstant;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.DiskLruCache;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.CacheStrategy;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import com.squareup.okhttp.internal.io.FileSystem;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;

/* loaded from: classes9.dex */
public final class Cache {

    /* renamed from: h */
    public static final int f63413h = 201105;

    /* renamed from: i */
    public static final int f63414i = 0;

    /* renamed from: j */
    public static final int f63415j = 1;

    /* renamed from: k */
    public static final int f63416k = 2;

    /* renamed from: a */
    public final InternalCache f63417a = new C13141a();

    /* renamed from: b */
    public final DiskLruCache f63418b;

    /* renamed from: c */
    public int f63419c;

    /* renamed from: d */
    public int f63420d;

    /* renamed from: e */
    public int f63421e;

    /* renamed from: f */
    public int f63422f;

    /* renamed from: g */
    public int f63423g;

    /* renamed from: com.squareup.okhttp.Cache$a */
    /* loaded from: classes9.dex */
    public class C13141a implements InternalCache {
        public C13141a() {
        }

        @Override // com.squareup.okhttp.internal.InternalCache
        public Response get(Request request) throws IOException {
            return Cache.this.m52439k(request);
        }

        @Override // com.squareup.okhttp.internal.InternalCache
        public CacheRequest put(Response response) throws IOException {
            return Cache.this.m52440l(response);
        }

        @Override // com.squareup.okhttp.internal.InternalCache
        public void remove(Request request) throws IOException {
            Cache.this.m52441n(request);
        }

        @Override // com.squareup.okhttp.internal.InternalCache
        public void trackConditionalCacheHit() {
            Cache.this.m52442o();
        }

        @Override // com.squareup.okhttp.internal.InternalCache
        public void trackResponse(CacheStrategy cacheStrategy) {
            Cache.this.m52443p(cacheStrategy);
        }

        @Override // com.squareup.okhttp.internal.InternalCache
        public void update(Response response, Response response2) throws IOException {
            Cache.this.m52444q(response, response2);
        }
    }

    /* renamed from: com.squareup.okhttp.Cache$b */
    /* loaded from: classes9.dex */
    public class C13142b implements Iterator<String> {

        /* renamed from: e */
        public final Iterator<DiskLruCache.Snapshot> f63425e;

        /* renamed from: f */
        public String f63426f;

        /* renamed from: g */
        public boolean f63427g;

        public C13142b() throws IOException {
            this.f63425e = Cache.this.f63418b.snapshots();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.f63426f;
            this.f63426f = null;
            this.f63427g = true;
            return str;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f63426f != null) {
                return true;
            }
            this.f63427g = false;
            while (this.f63425e.hasNext()) {
                DiskLruCache.Snapshot next = this.f63425e.next();
                try {
                    this.f63426f = Okio.buffer(next.getSource(0)).readUtf8LineStrict();
                    return true;
                } catch (IOException unused) {
                } finally {
                    next.close();
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f63427g) {
                throw new IllegalStateException("remove() before next()");
            }
            this.f63425e.remove();
        }
    }

    /* renamed from: com.squareup.okhttp.Cache$c */
    /* loaded from: classes9.dex */
    public final class C13143c implements CacheRequest {

        /* renamed from: a */
        public final DiskLruCache.Editor f63429a;

        /* renamed from: b */
        public Sink f63430b;

        /* renamed from: c */
        public boolean f63431c;

        /* renamed from: d */
        public Sink f63432d;

        /* renamed from: com.squareup.okhttp.Cache$c$a */
        /* loaded from: classes9.dex */
        public class a extends ForwardingSink {

            /* renamed from: e */
            public final /* synthetic */ Cache f63434e;

            /* renamed from: f */
            public final /* synthetic */ DiskLruCache.Editor f63435f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Sink sink, Cache cache, DiskLruCache.Editor editor) {
                super(sink);
                this.f63434e = cache;
                this.f63435f = editor;
            }

            @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
            public void close() throws IOException {
                synchronized (Cache.this) {
                    if (C13143c.this.f63431c) {
                        return;
                    }
                    C13143c.this.f63431c = true;
                    Cache.m52434i(Cache.this);
                    super.close();
                    this.f63435f.commit();
                }
            }
        }

        public C13143c(DiskLruCache.Editor editor) throws IOException {
            this.f63429a = editor;
            Sink newSink = editor.newSink(1);
            this.f63430b = newSink;
            this.f63432d = new a(newSink, Cache.this, editor);
        }

        @Override // com.squareup.okhttp.internal.http.CacheRequest
        public void abort() {
            synchronized (Cache.this) {
                if (this.f63431c) {
                    return;
                }
                this.f63431c = true;
                Cache.m52435j(Cache.this);
                Util.closeQuietly(this.f63430b);
                try {
                    this.f63429a.abort();
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.squareup.okhttp.internal.http.CacheRequest
        public Sink body() {
            return this.f63432d;
        }
    }

    /* renamed from: com.squareup.okhttp.Cache$d */
    /* loaded from: classes9.dex */
    public static class C13144d extends ResponseBody {

        /* renamed from: f */
        public final DiskLruCache.Snapshot f63437f;

        /* renamed from: g */
        public final BufferedSource f63438g;

        /* renamed from: h */
        public final String f63439h;

        /* renamed from: i */
        public final String f63440i;

        /* renamed from: com.squareup.okhttp.Cache$d$a */
        /* loaded from: classes9.dex */
        public class a extends ForwardingSource {

            /* renamed from: f */
            public final /* synthetic */ DiskLruCache.Snapshot f63441f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Source source, DiskLruCache.Snapshot snapshot) {
                super(source);
                this.f63441f = snapshot;
            }

            @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.f63441f.close();
                super.close();
            }
        }

        public C13144d(DiskLruCache.Snapshot snapshot, String str, String str2) {
            this.f63437f = snapshot;
            this.f63439h = str;
            this.f63440i = str2;
            this.f63438g = Okio.buffer(new a(snapshot.getSource(1), snapshot));
        }

        @Override // com.squareup.okhttp.ResponseBody
        public long contentLength() {
            try {
                String str = this.f63440i;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // com.squareup.okhttp.ResponseBody
        public MediaType contentType() {
            String str = this.f63439h;
            if (str != null) {
                return MediaType.parse(str);
            }
            return null;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public BufferedSource source() {
            return this.f63438g;
        }
    }

    public Cache(File file, long j) {
        this.f63418b = DiskLruCache.create(FileSystem.SYSTEM, file, 201105, 2, j);
    }

    /* renamed from: i */
    public static /* synthetic */ int m52434i(Cache cache) {
        int i = cache.f63419c;
        cache.f63419c = i + 1;
        return i;
    }

    /* renamed from: j */
    public static /* synthetic */ int m52435j(Cache cache) {
        int i = cache.f63420d;
        cache.f63420d = i + 1;
        return i;
    }

    /* renamed from: m */
    public static int m52436m(BufferedSource bufferedSource) throws IOException {
        try {
            long readDecimalLong = bufferedSource.readDecimalLong();
            String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
            if (readDecimalLong >= 0 && readDecimalLong <= 2147483647L && readUtf8LineStrict.isEmpty()) {
                return (int) readDecimalLong;
            }
            throw new IOException("expected an int but was \"" + readDecimalLong + readUtf8LineStrict + "\"");
        } catch (NumberFormatException e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: r */
    public static String m52437r(Request request) {
        return Util.md5Hex(request.urlString());
    }

    /* renamed from: a */
    public final void m52438a(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException unused) {
            }
        }
    }

    public void close() throws IOException {
        this.f63418b.close();
    }

    public void delete() throws IOException {
        this.f63418b.delete();
    }

    public void evictAll() throws IOException {
        this.f63418b.evictAll();
    }

    public void flush() throws IOException {
        this.f63418b.flush();
    }

    public File getDirectory() {
        return this.f63418b.getDirectory();
    }

    public synchronized int getHitCount() {
        return this.f63422f;
    }

    public long getMaxSize() {
        return this.f63418b.getMaxSize();
    }

    public synchronized int getNetworkCount() {
        return this.f63421e;
    }

    public synchronized int getRequestCount() {
        return this.f63423g;
    }

    public long getSize() throws IOException {
        return this.f63418b.size();
    }

    public synchronized int getWriteAbortCount() {
        return this.f63420d;
    }

    public synchronized int getWriteSuccessCount() {
        return this.f63419c;
    }

    public boolean isClosed() {
        return this.f63418b.isClosed();
    }

    /* renamed from: k */
    public Response m52439k(Request request) {
        try {
            DiskLruCache.Snapshot snapshot = this.f63418b.get(m52437r(request));
            if (snapshot == null) {
                return null;
            }
            try {
                C13145e c13145e = new C13145e(snapshot.getSource(0));
                Response m52452d = c13145e.m52452d(request, snapshot);
                if (c13145e.m52450b(request, m52452d)) {
                    return m52452d;
                }
                Util.closeQuietly(m52452d.body());
                return null;
            } catch (IOException unused) {
                Util.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    /* renamed from: l */
    public final CacheRequest m52440l(Response response) throws IOException {
        DiskLruCache.Editor editor;
        String method = response.request().method();
        if (HttpMethod.invalidatesCache(response.request().method())) {
            try {
                m52441n(response.request());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!method.equals("GET") || OkHeaders.hasVaryAll(response)) {
            return null;
        }
        C13145e c13145e = new C13145e(response);
        try {
            editor = this.f63418b.edit(m52437r(response.request()));
            if (editor == null) {
                return null;
            }
            try {
                c13145e.m52454f(editor);
                return new C13143c(editor);
            } catch (IOException unused2) {
                m52438a(editor);
                return null;
            }
        } catch (IOException unused3) {
            editor = null;
        }
    }

    /* renamed from: n */
    public final void m52441n(Request request) throws IOException {
        this.f63418b.remove(m52437r(request));
    }

    /* renamed from: o */
    public final synchronized void m52442o() {
        this.f63422f++;
    }

    /* renamed from: p */
    public final synchronized void m52443p(CacheStrategy cacheStrategy) {
        this.f63423g++;
        if (cacheStrategy.networkRequest != null) {
            this.f63421e++;
        } else if (cacheStrategy.cacheResponse != null) {
            this.f63422f++;
        }
    }

    /* renamed from: q */
    public final void m52444q(Response response, Response response2) {
        DiskLruCache.Editor editor;
        C13145e c13145e = new C13145e(response2);
        try {
            editor = ((C13144d) response.body()).f63437f.edit();
            if (editor != null) {
                try {
                    c13145e.m52454f(editor);
                    editor.commit();
                } catch (IOException unused) {
                    m52438a(editor);
                }
            }
        } catch (IOException unused2) {
            editor = null;
        }
    }

    public Iterator<String> urls() throws IOException {
        return new C13142b();
    }

    /* renamed from: com.squareup.okhttp.Cache$e */
    /* loaded from: classes9.dex */
    public static final class C13145e {

        /* renamed from: a */
        public final String f63443a;

        /* renamed from: b */
        public final Headers f63444b;

        /* renamed from: c */
        public final String f63445c;

        /* renamed from: d */
        public final Protocol f63446d;

        /* renamed from: e */
        public final int f63447e;

        /* renamed from: f */
        public final String f63448f;

        /* renamed from: g */
        public final Headers f63449g;

        /* renamed from: h */
        public final Handshake f63450h;

        public C13145e(Source source) throws IOException {
            try {
                BufferedSource buffer = Okio.buffer(source);
                this.f63443a = buffer.readUtf8LineStrict();
                this.f63445c = buffer.readUtf8LineStrict();
                Headers.Builder builder = new Headers.Builder();
                int m52436m = Cache.m52436m(buffer);
                for (int i = 0; i < m52436m; i++) {
                    builder.m52520b(buffer.readUtf8LineStrict());
                }
                this.f63444b = builder.build();
                StatusLine parse = StatusLine.parse(buffer.readUtf8LineStrict());
                this.f63446d = parse.protocol;
                this.f63447e = parse.code;
                this.f63448f = parse.message;
                Headers.Builder builder2 = new Headers.Builder();
                int m52436m2 = Cache.m52436m(buffer);
                for (int i2 = 0; i2 < m52436m2; i2++) {
                    builder2.m52520b(buffer.readUtf8LineStrict());
                }
                this.f63449g = builder2.build();
                if (m52449a()) {
                    String readUtf8LineStrict = buffer.readUtf8LineStrict();
                    if (readUtf8LineStrict.length() <= 0) {
                        this.f63450h = Handshake.get(buffer.readUtf8LineStrict(), m52451c(buffer), m52451c(buffer));
                    } else {
                        throw new IOException("expected \"\" but was \"" + readUtf8LineStrict + "\"");
                    }
                } else {
                    this.f63450h = null;
                }
            } finally {
                source.close();
            }
        }

        /* renamed from: a */
        public final boolean m52449a() {
            return this.f63443a.startsWith(CommonConstant.SCHEME_HTTPS);
        }

        /* renamed from: b */
        public boolean m52450b(Request request, Response response) {
            return this.f63443a.equals(request.urlString()) && this.f63445c.equals(request.method()) && OkHeaders.varyMatches(response, this.f63444b, request);
        }

        /* renamed from: c */
        public final List<Certificate> m52451c(BufferedSource bufferedSource) throws IOException {
            int m52436m = Cache.m52436m(bufferedSource);
            if (m52436m == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(m52436m);
                for (int i = 0; i < m52436m; i++) {
                    String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
                    Buffer buffer = new Buffer();
                    buffer.write(ByteString.decodeBase64(readUtf8LineStrict));
                    arrayList.add(certificateFactory.generateCertificate(buffer.inputStream()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: d */
        public Response m52452d(Request request, DiskLruCache.Snapshot snapshot) {
            String str = this.f63449g.get("Content-Type");
            String str2 = this.f63449g.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.f63443a).method(this.f63445c, null).headers(this.f63444b).build()).protocol(this.f63446d).code(this.f63447e).message(this.f63448f).headers(this.f63449g).body(new C13144d(snapshot, str, str2)).handshake(this.f63450h).build();
        }

        /* renamed from: e */
        public final void m52453e(BufferedSink bufferedSink, List<Certificate> list) throws IOException {
            try {
                bufferedSink.writeDecimalLong(list.size());
                bufferedSink.writeByte(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bufferedSink.writeUtf8(ByteString.m65002of(list.get(i).getEncoded()).base64());
                    bufferedSink.writeByte(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: f */
        public void m52454f(DiskLruCache.Editor editor) throws IOException {
            BufferedSink buffer = Okio.buffer(editor.newSink(0));
            buffer.writeUtf8(this.f63443a);
            buffer.writeByte(10);
            buffer.writeUtf8(this.f63445c);
            buffer.writeByte(10);
            buffer.writeDecimalLong(this.f63444b.size());
            buffer.writeByte(10);
            int size = this.f63444b.size();
            for (int i = 0; i < size; i++) {
                buffer.writeUtf8(this.f63444b.name(i));
                buffer.writeUtf8(": ");
                buffer.writeUtf8(this.f63444b.value(i));
                buffer.writeByte(10);
            }
            buffer.writeUtf8(new StatusLine(this.f63446d, this.f63447e, this.f63448f).toString());
            buffer.writeByte(10);
            buffer.writeDecimalLong(this.f63449g.size());
            buffer.writeByte(10);
            int size2 = this.f63449g.size();
            for (int i2 = 0; i2 < size2; i2++) {
                buffer.writeUtf8(this.f63449g.name(i2));
                buffer.writeUtf8(": ");
                buffer.writeUtf8(this.f63449g.value(i2));
                buffer.writeByte(10);
            }
            if (m52449a()) {
                buffer.writeByte(10);
                buffer.writeUtf8(this.f63450h.cipherSuite());
                buffer.writeByte(10);
                m52453e(buffer, this.f63450h.peerCertificates());
                m52453e(buffer, this.f63450h.localCertificates());
            }
            buffer.close();
        }

        public C13145e(Response response) {
            this.f63443a = response.request().urlString();
            this.f63444b = OkHeaders.varyHeaders(response);
            this.f63445c = response.request().method();
            this.f63446d = response.protocol();
            this.f63447e = response.code();
            this.f63448f = response.message();
            this.f63449g = response.headers();
            this.f63450h = response.handshake();
        }
    }
}
