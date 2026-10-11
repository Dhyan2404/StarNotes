package com.burgstaller.okhttp.basic;

import com.burgstaller.okhttp.digest.CachingAuthenticator;
import com.burgstaller.okhttp.digest.Credentials;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.platform.Platform;

/* loaded from: classes3.dex */
public class BasicAuthenticator implements CachingAuthenticator {

    /* renamed from: a */
    public final Credentials f15524a;

    /* renamed from: b */
    public final Charset f15525b;

    /* renamed from: c */
    public boolean f15526c;

    public BasicAuthenticator(Credentials credentials, Charset charset) {
        this.f15524a = credentials;
        this.f15525b = charset == null ? StandardCharsets.ISO_8859_1 : charset;
    }

    /* renamed from: a */
    public final Request m9194a(Request request) {
        String str = this.f15526c ? "Proxy-Authorization" : "Authorization";
        String header = request.header(str);
        if (header == null || !header.startsWith("Basic")) {
            return request.newBuilder().header(str, okhttp3.Credentials.basic(this.f15524a.getUserName(), this.f15524a.getPassword(), this.f15525b)).build();
        }
        Platform.get().log("Previous basic authentication failed, returning null", 5, null);
        return null;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        Request request = response.request();
        this.f15526c = response.code() == 407;
        return m9194a(request);
    }

    @Override // com.burgstaller.okhttp.digest.CachingAuthenticator
    public Request authenticateWithState(Route route, Request request) throws IOException {
        return m9194a(request);
    }

    public BasicAuthenticator(Credentials credentials) {
        this(credentials, StandardCharsets.ISO_8859_1);
    }
}
