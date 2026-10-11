package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.android.material.motion.MotionUtils;
import com.google.common.base.Predicate;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;

/* loaded from: classes5.dex */
public class DefaultHttpDataSource extends BaseDataSource implements HttpDataSource {
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;

    /* renamed from: t */
    public static final String f28044t = "DefaultHttpDataSource";

    /* renamed from: u */
    public static final int f28045u = 20;

    /* renamed from: v */
    public static final int f28046v = 307;

    /* renamed from: w */
    public static final int f28047w = 308;

    /* renamed from: x */
    public static final long f28048x = 2048;

    /* renamed from: e */
    public final boolean f28049e;

    /* renamed from: f */
    public final int f28050f;

    /* renamed from: g */
    public final int f28051g;

    /* renamed from: h */
    @Nullable
    public final String f28052h;

    /* renamed from: i */
    @Nullable
    public final HttpDataSource.RequestProperties f28053i;

    /* renamed from: j */
    public final HttpDataSource.RequestProperties f28054j;

    /* renamed from: k */
    public final boolean f28055k;

    /* renamed from: l */
    @Nullable
    public Predicate<String> f28056l;

    /* renamed from: m */
    @Nullable
    public DataSpec f28057m;

    /* renamed from: n */
    @Nullable
    public HttpURLConnection f28058n;

    /* renamed from: o */
    @Nullable
    public InputStream f28059o;

    /* renamed from: p */
    public boolean f28060p;

    /* renamed from: q */
    public int f28061q;

    /* renamed from: r */
    public long f28062r;

    /* renamed from: s */
    public long f28063s;

    /* loaded from: classes5.dex */
    public static final class Factory implements HttpDataSource.Factory {

        /* renamed from: b */
        @Nullable
        public TransferListener f28065b;

        /* renamed from: c */
        @Nullable
        public Predicate<String> f28066c;

        /* renamed from: d */
        @Nullable
        public String f28067d;

        /* renamed from: g */
        public boolean f28070g;

        /* renamed from: h */
        public boolean f28071h;

        /* renamed from: a */
        public final HttpDataSource.RequestProperties f28064a = new HttpDataSource.RequestProperties();

        /* renamed from: e */
        public int f28068e = 8000;

        /* renamed from: f */
        public int f28069f = 8000;

        public Factory setAllowCrossProtocolRedirects(boolean z) {
            this.f28070g = z;
            return this;
        }

        public Factory setConnectTimeoutMs(int i) {
            this.f28068e = i;
            return this;
        }

        public Factory setContentTypePredicate(@Nullable Predicate<String> predicate) {
            this.f28066c = predicate;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        public /* bridge */ /* synthetic */ HttpDataSource.Factory setDefaultRequestProperties(Map map) {
            return setDefaultRequestProperties((Map<String, String>) map);
        }

        public Factory setKeepPostFor302Redirects(boolean z) {
            this.f28071h = z;
            return this;
        }

        public Factory setReadTimeoutMs(int i) {
            this.f28069f = i;
            return this;
        }

        public Factory setTransferListener(@Nullable TransferListener transferListener) {
            this.f28065b = transferListener;
            return this;
        }

        public Factory setUserAgent(@Nullable String str) {
            this.f28067d = str;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        public final Factory setDefaultRequestProperties(Map<String, String> map) {
            this.f28064a.clearAndSet(map);
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory, com.google.android.exoplayer2.upstream.DataSource.Factory
        public DefaultHttpDataSource createDataSource() {
            DefaultHttpDataSource defaultHttpDataSource = new DefaultHttpDataSource(this.f28067d, this.f28068e, this.f28069f, this.f28070g, this.f28064a, this.f28066c, this.f28071h);
            TransferListener transferListener = this.f28065b;
            if (transferListener != null) {
                defaultHttpDataSource.addTransferListener(transferListener);
            }
            return defaultHttpDataSource;
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.DefaultHttpDataSource$b */
    /* loaded from: classes5.dex */
    public static class C4998b extends ForwardingMap<String, List<String>> {

        /* renamed from: e */
        public final Map<String, List<String>> f28072e;

        public C4998b(Map<String, List<String>> map) {
            this.f28072e = map;
        }

        /* renamed from: h */
        public static /* synthetic */ boolean m21339h(Map.Entry entry) {
            return entry.getKey() != null;
        }

        /* renamed from: i */
        public static /* synthetic */ boolean m21340i(String str) {
            return str != null;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean containsValue(@Nullable Object obj) {
            return super.standardContainsValue(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<Map.Entry<String, List<String>>> entrySet() {
            return Sets.filter(super.entrySet(), new Predicate() { // from class: com.sunia.HTREnginev2.sze
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean m21339h;
                    m21339h = DefaultHttpDataSource.C4998b.m21339h((Map.Entry) obj);
                    return m21339h;
                }
            });
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean equals(@Nullable Object obj) {
            return obj != null && super.standardEquals(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public int hashCode() {
            return super.standardHashCode();
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            return super.size() == 1 && super.containsKey(null);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<String> keySet() {
            return Sets.filter(super.keySet(), new Predicate() { // from class: com.sunia.HTREnginev2.rze
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean m21340i;
                    m21340i = DefaultHttpDataSource.C4998b.m21340i((String) obj);
                    return m21340i;
                }
            });
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public Map<String, List<String>> delegate() {
            return this.f28072e;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        @Nullable
        public List<String> get(@Nullable Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }
    }

    /* renamed from: f */
    public static boolean m21328f(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    /* renamed from: i */
    public static void m21329i(@Nullable HttpURLConnection httpURLConnection, long j) {
        int i;
        if (httpURLConnection != null && (i = Util.SDK_INT) >= 19 && i <= 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if (!"com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) && !"com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    return;
                }
                Method declaredMethod = ((Class) Assertions.checkNotNull(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void clearAllRequestProperties() {
        this.f28054j.clear();
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        this.f28054j.remove(str);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws HttpDataSource.HttpDataSourceException {
        try {
            InputStream inputStream = this.f28059o;
            if (inputStream != null) {
                long j = this.f28062r;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.f28063s;
                }
                m21329i(this.f28058n, j2);
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new HttpDataSource.HttpDataSourceException(e, (DataSpec) Util.castNonNull(this.f28057m), 2000, 3);
                }
            }
        } finally {
            this.f28059o = null;
            m21330d();
            if (this.f28060p) {
                this.f28060p = false;
                transferEnded();
            }
        }
    }

    /* renamed from: d */
    public final void m21330d() {
        HttpURLConnection httpURLConnection = this.f28058n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.m21490e(f28044t, "Unexpected error while disconnecting", e);
            }
            this.f28058n = null;
        }
    }

    /* renamed from: e */
    public final URL m21331e(URL url, @Nullable String str, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource.HttpDataSourceException("Null location redirect", dataSpec, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                String valueOf = String.valueOf(protocol);
                throw new HttpDataSource.HttpDataSourceException(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "), dataSpec, 2001, 1);
            }
            if (this.f28049e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            String protocol2 = url.getProtocol();
            StringBuilder sb = new StringBuilder(String.valueOf(protocol2).length() + 41 + protocol.length());
            sb.append("Disallowed cross-protocol redirect (");
            sb.append(protocol2);
            sb.append(" to ");
            sb.append(protocol);
            sb.append(MotionUtils.f31762d);
            throw new HttpDataSource.HttpDataSourceException(sb.toString(), dataSpec, 2001, 1);
        } catch (MalformedURLException e) {
            throw new HttpDataSource.HttpDataSourceException(e, dataSpec, 2001, 1);
        }
    }

    /* renamed from: g */
    public final HttpURLConnection m21332g(DataSpec dataSpec) throws IOException {
        HttpURLConnection m21333h;
        URL url = new URL(dataSpec.uri.toString());
        int i = dataSpec.httpMethod;
        byte[] bArr = dataSpec.httpBody;
        long j = dataSpec.position;
        long j2 = dataSpec.length;
        boolean isFlagSet = dataSpec.isFlagSet(1);
        if (!this.f28049e && !this.f28055k) {
            return m21333h(url, i, bArr, j, j2, isFlagSet, true, dataSpec.httpRequestHeaders);
        }
        URL url2 = url;
        int i2 = i;
        byte[] bArr2 = bArr;
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (i3 > 20) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Too many redirects: ");
                sb.append(i4);
                throw new HttpDataSource.HttpDataSourceException(new NoRouteToHostException(sb.toString()), dataSpec, 2001, 1);
            }
            long j3 = j;
            long j4 = j;
            int i5 = i2;
            URL url3 = url2;
            long j5 = j2;
            m21333h = m21333h(url2, i2, bArr2, j3, j2, isFlagSet, false, dataSpec.httpRequestHeaders);
            int responseCode = m21333h.getResponseCode();
            String headerField = m21333h.getHeaderField("Location");
            if ((i5 == 1 || i5 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                m21333h.disconnect();
                url2 = m21331e(url3, headerField, dataSpec);
                i2 = i5;
            } else {
                if (i5 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    break;
                }
                m21333h.disconnect();
                if (this.f28055k && responseCode == 302) {
                    i2 = i5;
                } else {
                    bArr2 = null;
                    i2 = 1;
                }
                url2 = m21331e(url3, headerField, dataSpec);
            }
            i3 = i4;
            j = j4;
            j2 = j5;
        }
        return m21333h;
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public int getResponseCode() {
        int i;
        if (this.f28058n == null || (i = this.f28061q) <= 0) {
            return -1;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f28058n;
        return httpURLConnection == null ? ImmutableMap.m26185of() : new C4998b(httpURLConnection.getHeaderFields());
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f28058n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    /* renamed from: h */
    public final HttpURLConnection m21333h(URL url, int i, @Nullable byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection m21334j = m21334j(url);
        m21334j.setConnectTimeout(this.f28050f);
        m21334j.setReadTimeout(this.f28051g);
        HashMap hashMap = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.f28053i;
        if (requestProperties != null) {
            hashMap.putAll(requestProperties.getSnapshot());
        }
        hashMap.putAll(this.f28054j.getSnapshot());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            m21334j.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String buildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j, j2);
        if (buildRangeRequestHeader != null) {
            m21334j.setRequestProperty("Range", buildRangeRequestHeader);
        }
        String str = this.f28052h;
        if (str != null) {
            m21334j.setRequestProperty("User-Agent", str);
        }
        m21334j.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        m21334j.setInstanceFollowRedirects(z2);
        m21334j.setDoOutput(bArr != null);
        m21334j.setRequestMethod(DataSpec.getStringForHttpMethod(i));
        if (bArr != null) {
            m21334j.setFixedLengthStreamingMode(bArr.length);
            m21334j.connect();
            OutputStream outputStream = m21334j.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            m21334j.connect();
        }
        return m21334j;
    }

    @VisibleForTesting
    /* renamed from: j */
    public HttpURLConnection m21334j(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    /* renamed from: k */
    public final int m21335k(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f28062r;
        if (j != -1) {
            long j2 = j - this.f28063s;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int read = ((InputStream) Util.castNonNull(this.f28059o)).read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.f28063s += read;
        bytesTransferred(read);
        return read;
    }

    /* renamed from: l */
    public final void m21336l(long j, DataSpec dataSpec) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int read = ((InputStream) Util.castNonNull(this.f28059o)).read(bArr, 0, (int) Math.min(j, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), dataSpec, 2000, 1);
            }
            if (read == -1) {
                throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
            }
            j -= read;
            bytesTransferred(read);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        byte[] bArr;
        this.f28057m = dataSpec;
        long j = 0;
        this.f28063s = 0L;
        this.f28062r = 0L;
        transferInitializing(dataSpec);
        try {
            HttpURLConnection m21332g = m21332g(dataSpec);
            this.f28058n = m21332g;
            this.f28061q = m21332g.getResponseCode();
            String responseMessage = m21332g.getResponseMessage();
            int i = this.f28061q;
            if (i < 200 || i > 299) {
                Map<String, List<String>> headerFields = m21332g.getHeaderFields();
                if (this.f28061q == 416) {
                    if (dataSpec.position == HttpUtil.getDocumentSize(m21332g.getHeaderField("Content-Range"))) {
                        this.f28060p = true;
                        transferStarted(dataSpec);
                        long j2 = dataSpec.length;
                        if (j2 != -1) {
                            return j2;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = m21332g.getErrorStream();
                try {
                    bArr = errorStream != null ? Util.toByteArray(errorStream) : Util.EMPTY_BYTE_ARRAY;
                } catch (IOException unused) {
                    bArr = Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr2 = bArr;
                m21330d();
                throw new HttpDataSource.InvalidResponseCodeException(this.f28061q, responseMessage, this.f28061q == 416 ? new DataSourceException(2008) : null, headerFields, dataSpec, bArr2);
            }
            String contentType = m21332g.getContentType();
            Predicate<String> predicate = this.f28056l;
            if (predicate != null && !predicate.apply(contentType)) {
                m21330d();
                throw new HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
            }
            if (this.f28061q == 200) {
                long j3 = dataSpec.position;
                if (j3 != 0) {
                    j = j3;
                }
            }
            boolean m21328f = m21328f(m21332g);
            if (m21328f) {
                this.f28062r = dataSpec.length;
            } else {
                long j4 = dataSpec.length;
                if (j4 != -1) {
                    this.f28062r = j4;
                } else {
                    long contentLength = HttpUtil.getContentLength(m21332g.getHeaderField("Content-Length"), m21332g.getHeaderField("Content-Range"));
                    this.f28062r = contentLength != -1 ? contentLength - j : -1L;
                }
            }
            try {
                this.f28059o = m21332g.getInputStream();
                if (m21328f) {
                    this.f28059o = new GZIPInputStream(this.f28059o);
                }
                this.f28060p = true;
                transferStarted(dataSpec);
                try {
                    m21336l(j, dataSpec);
                    return this.f28062r;
                } catch (IOException e) {
                    m21330d();
                    if (e instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e, dataSpec, 2000, 1);
                }
            } catch (IOException e2) {
                m21330d();
                throw new HttpDataSource.HttpDataSourceException(e2, dataSpec, 2000, 1);
            }
        } catch (IOException e3) {
            m21330d();
            throw HttpDataSource.HttpDataSourceException.createForIOException(e3, dataSpec, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            return m21335k(bArr, i, i2);
        } catch (IOException e) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e, (DataSpec) Util.castNonNull(this.f28057m), 2);
        }
    }

    @Deprecated
    public void setContentTypePredicate(@Nullable Predicate<String> predicate) {
        this.f28056l = predicate;
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        this.f28054j.set(str, str2);
    }

    @Deprecated
    public DefaultHttpDataSource() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public DefaultHttpDataSource(@Nullable String str) {
        this(str, 8000, 8000);
    }

    @Deprecated
    public DefaultHttpDataSource(@Nullable String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @Deprecated
    public DefaultHttpDataSource(@Nullable String str, int i, int i2, boolean z, @Nullable HttpDataSource.RequestProperties requestProperties) {
        this(str, i, i2, z, requestProperties, null, false);
    }

    public DefaultHttpDataSource(@Nullable String str, int i, int i2, boolean z, @Nullable HttpDataSource.RequestProperties requestProperties, @Nullable Predicate<String> predicate, boolean z2) {
        super(true);
        this.f28052h = str;
        this.f28050f = i;
        this.f28051g = i2;
        this.f28049e = z;
        this.f28053i = requestProperties;
        this.f28056l = predicate;
        this.f28054j = new HttpDataSource.RequestProperties();
        this.f28055k = z2;
    }
}
