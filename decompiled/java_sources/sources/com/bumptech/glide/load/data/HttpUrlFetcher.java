package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* loaded from: classes3.dex */
public class HttpUrlFetcher implements DataFetcher<InputStream> {

    /* renamed from: k */
    public static final String f14492k = "HttpUrlFetcher";

    /* renamed from: l */
    public static final int f14493l = 5;

    /* renamed from: m */
    @VisibleForTesting
    public static final String f14494m = "Location";

    /* renamed from: n */
    @VisibleForTesting
    public static final InterfaceC1917b f14495n = new C1916a();

    /* renamed from: o */
    @VisibleForTesting
    public static final int f14496o = -1;

    /* renamed from: e */
    public final GlideUrl f14497e;

    /* renamed from: f */
    public final int f14498f;

    /* renamed from: g */
    public final InterfaceC1917b f14499g;

    /* renamed from: h */
    public HttpURLConnection f14500h;

    /* renamed from: i */
    public InputStream f14501i;

    /* renamed from: j */
    public volatile boolean f14502j;

    /* renamed from: com.bumptech.glide.load.data.HttpUrlFetcher$a */
    /* loaded from: classes3.dex */
    public static class C1916a implements InterfaceC1917b {
        @Override // com.bumptech.glide.load.data.HttpUrlFetcher.InterfaceC1917b
        /* renamed from: a */
        public HttpURLConnection mo8682a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* renamed from: com.bumptech.glide.load.data.HttpUrlFetcher$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC1917b {
        /* renamed from: a */
        HttpURLConnection mo8682a(URL url) throws IOException;
    }

    public HttpUrlFetcher(GlideUrl glideUrl, int i) {
        this(glideUrl, i, f14495n);
    }

    /* renamed from: b */
    public static int m8676b(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            if (!Log.isLoggable(f14492k, 3)) {
                return -1;
            }
            Log.d(f14492k, "Failed to get a response code", e);
            return -1;
        }
    }

    /* renamed from: d */
    public static boolean m8677d(int i) {
        return i / 100 == 2;
    }

    /* renamed from: e */
    public static boolean m8678e(int i) {
        return i / 100 == 3;
    }

    /* renamed from: a */
    public final HttpURLConnection m8679a(URL url, Map<String, String> map) throws HttpException {
        try {
            HttpURLConnection mo8682a = this.f14499g.mo8682a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                mo8682a.addRequestProperty(entry.getKey(), entry.getValue());
            }
            mo8682a.setConnectTimeout(this.f14498f);
            mo8682a.setReadTimeout(this.f14498f);
            mo8682a.setUseCaches(false);
            mo8682a.setDoInput(true);
            mo8682a.setInstanceFollowRedirects(false);
            return mo8682a;
        } catch (IOException e) {
            throw new HttpException("URL.openConnection threw", 0, e);
        }
    }

    /* renamed from: c */
    public final InputStream m8680c(HttpURLConnection httpURLConnection) throws HttpException {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.f14501i = ContentLengthInputStream.obtain(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable(f14492k, 3)) {
                    Log.d(f14492k, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
                }
                this.f14501i = httpURLConnection.getInputStream();
            }
            return this.f14501i;
        } catch (IOException e) {
            throw new HttpException("Failed to obtain InputStream", m8676b(httpURLConnection), e);
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
        this.f14502j = true;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        InputStream inputStream = this.f14501i;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f14500h;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f14500h = null;
    }

    /* renamed from: f */
    public final InputStream m8681f(URL url, int i, URL url2, Map<String, String> map) throws HttpException {
        if (i >= 5) {
            throw new HttpException("Too many (> 5) redirects!", -1);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop", -1);
                }
            } catch (URISyntaxException unused) {
            }
        }
        HttpURLConnection m8679a = m8679a(url, map);
        this.f14500h = m8679a;
        try {
            m8679a.connect();
            this.f14501i = this.f14500h.getInputStream();
            if (this.f14502j) {
                return null;
            }
            int m8676b = m8676b(this.f14500h);
            if (m8677d(m8676b)) {
                return m8680c(this.f14500h);
            }
            if (!m8678e(m8676b)) {
                if (m8676b == -1) {
                    throw new HttpException(m8676b);
                }
                try {
                    throw new HttpException(this.f14500h.getResponseMessage(), m8676b);
                } catch (IOException e) {
                    throw new HttpException("Failed to get a response message", m8676b, e);
                }
            }
            String headerField = this.f14500h.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                throw new HttpException("Received empty or null redirect url", m8676b);
            }
            try {
                URL url3 = new URL(url, headerField);
                cleanup();
                return m8681f(url3, i + 1, url, map);
            } catch (MalformedURLException e2) {
                throw new HttpException("Bad redirect url: " + headerField, m8676b, e2);
            }
        } catch (IOException e3) {
            throw new HttpException("Failed to connect or obtain data", m8676b(this.f14500h), e3);
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public DataSource getDataSource() {
        return DataSource.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) {
        StringBuilder sb;
        long logTime = LogTime.getLogTime();
        try {
            try {
                dataCallback.onDataReady(m8681f(this.f14497e.toURL(), 0, null, this.f14497e.getHeaders()));
            } catch (IOException e) {
                if (Log.isLoggable(f14492k, 3)) {
                    Log.d(f14492k, "Failed to load data for url", e);
                }
                dataCallback.onLoadFailed(e);
                if (!Log.isLoggable(f14492k, 2)) {
                    return;
                } else {
                    sb = new StringBuilder();
                }
            }
            if (Log.isLoggable(f14492k, 2)) {
                sb = new StringBuilder();
                sb.append("Finished http url fetcher fetch in ");
                sb.append(LogTime.getElapsedMillis(logTime));
                Log.v(f14492k, sb.toString());
            }
        } catch (Throwable th) {
            if (Log.isLoggable(f14492k, 2)) {
                Log.v(f14492k, "Finished http url fetcher fetch in " + LogTime.getElapsedMillis(logTime));
            }
            throw th;
        }
    }

    @VisibleForTesting
    public HttpUrlFetcher(GlideUrl glideUrl, int i, InterfaceC1917b interfaceC1917b) {
        this.f14497e = glideUrl;
        this.f14498f = i;
        this.f14499g = interfaceC1917b;
    }
}
