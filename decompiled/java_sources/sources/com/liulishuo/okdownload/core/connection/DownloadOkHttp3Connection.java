package com.liulishuo.okdownload.core.connection;

import androidx.annotation.NonNull;
import com.liulishuo.okdownload.RedirectUtil;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.ProtocolException;
import java.util.List;
import java.util.Map;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes4.dex */
public class DownloadOkHttp3Connection implements DownloadConnection, DownloadConnection.Connected {

    /* renamed from: a */
    @NonNull
    public final OkHttpClient f39310a;

    /* renamed from: b */
    @NonNull
    public final Request.Builder f39311b;

    /* renamed from: c */
    public Request f39312c;

    /* renamed from: d */
    public Response f39313d;

    /* loaded from: classes4.dex */
    public static class Factory implements DownloadConnection.Factory {

        /* renamed from: a */
        public OkHttpClient.Builder f39314a;

        /* renamed from: b */
        public volatile OkHttpClient f39315b;

        @NonNull
        public OkHttpClient.Builder builder() {
            if (this.f39314a == null) {
                this.f39314a = new OkHttpClient.Builder();
            }
            return this.f39314a;
        }

        @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Factory
        public DownloadConnection create(String str) throws IOException {
            if (this.f39315b == null) {
                synchronized (Factory.class) {
                    if (this.f39315b == null) {
                        OkHttpClient.Builder builder = this.f39314a;
                        this.f39315b = builder != null ? builder.build() : new OkHttpClient();
                        this.f39314a = null;
                    }
                }
            }
            return new DownloadOkHttp3Connection(this.f39315b, str);
        }

        public Factory setBuilder(@NonNull OkHttpClient.Builder builder) {
            this.f39314a = builder;
            return this;
        }
    }

    public DownloadOkHttp3Connection(@NonNull OkHttpClient okHttpClient, @NonNull Request.Builder builder) {
        this.f39310a = okHttpClient;
        this.f39311b = builder;
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public void addHeader(String str, String str2) {
        this.f39311b.addHeader(str, str2);
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public DownloadConnection.Connected execute() throws IOException {
        Request build = this.f39311b.build();
        this.f39312c = build;
        this.f39313d = this.f39310a.newCall(build).execute();
        return this;
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public InputStream getInputStream() throws IOException {
        Response response = this.f39313d;
        if (response == null) {
            throw new IOException("Please invoke execute first!");
        }
        ResponseBody body = response.body();
        if (body != null) {
            return body.byteStream();
        }
        throw new IOException("no body found on response!");
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public String getRedirectLocation() {
        Response priorResponse = this.f39313d.priorResponse();
        if (priorResponse != null && this.f39313d.isSuccessful() && RedirectUtil.isRedirect(priorResponse.code())) {
            return this.f39313d.request().url().getUrl();
        }
        return null;
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public Map<String, List<String>> getRequestProperties() {
        Request request = this.f39312c;
        return request != null ? request.headers().toMultimap() : this.f39311b.build().headers().toMultimap();
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public String getRequestProperty(String str) {
        Request request = this.f39312c;
        return request != null ? request.header(str) : this.f39311b.build().header(str);
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public int getResponseCode() throws IOException {
        Response response = this.f39313d;
        if (response != null) {
            return response.code();
        }
        throw new IOException("Please invoke execute first!");
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public String getResponseHeaderField(String str) {
        Response response = this.f39313d;
        if (response == null) {
            return null;
        }
        return response.header(str);
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection.Connected
    public Map<String, List<String>> getResponseHeaderFields() {
        Response response = this.f39313d;
        if (response == null) {
            return null;
        }
        return response.headers().toMultimap();
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public void release() {
        this.f39312c = null;
        Response response = this.f39313d;
        if (response != null) {
            response.close();
        }
        this.f39313d = null;
    }

    @Override // com.liulishuo.okdownload.core.connection.DownloadConnection
    public boolean setRequestMethod(@NonNull String str) throws ProtocolException {
        this.f39311b.method(str, null);
        return true;
    }

    public DownloadOkHttp3Connection(@NonNull OkHttpClient okHttpClient, @NonNull String str) {
        this(okHttpClient, new Request.Builder().url(str));
    }
}
