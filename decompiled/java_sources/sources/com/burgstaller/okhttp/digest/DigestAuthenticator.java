package com.burgstaller.okhttp.digest;

import com.alibaba.fastjson2.JSONB;
import com.burgstaller.okhttp.digest.fromhttpclient.BasicHeaderValueParser;
import com.burgstaller.okhttp.digest.fromhttpclient.CharArrayBuffer;
import com.burgstaller.okhttp.digest.fromhttpclient.HeaderElement;
import com.burgstaller.okhttp.digest.fromhttpclient.NameValuePair;
import com.burgstaller.okhttp.digest.fromhttpclient.ParserCursor;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.platform.Platform;
import org.scribe.model.OAuthConstants;

/* loaded from: classes3.dex */
public class DigestAuthenticator implements CachingAuthenticator {
    public static final String PROXY_AUTH = "Proxy-Authenticate";
    public static final String PROXY_AUTH_RESP = "Proxy-Authorization";
    public static final String WWW_AUTH = "WWW-Authenticate";
    public static final String WWW_AUTH_RESP = "Authorization";

    /* renamed from: j */
    public static final String f15529j = "http.auth.credential-charset";

    /* renamed from: k */
    public static final int f15530k = -1;

    /* renamed from: l */
    public static final int f15531l = 0;

    /* renamed from: m */
    public static final int f15532m = 1;

    /* renamed from: n */
    public static final int f15533n = 2;

    /* renamed from: o */
    public static final String f15534o = "OkDigest";

    /* renamed from: p */
    public static final char[] f15535p = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    public AtomicReference<Map<String, String>> f15536a;

    /* renamed from: b */
    public Charset f15537b;

    /* renamed from: c */
    public final Credentials f15538c;

    /* renamed from: d */
    public String f15539d;

    /* renamed from: e */
    public long f15540e;

    /* renamed from: f */
    public String f15541f;

    /* renamed from: g */
    public String f15542g;

    /* renamed from: h */
    public String f15543h;

    /* renamed from: i */
    public boolean f15544i;

    /* loaded from: classes3.dex */
    public static class AuthenticationException extends IOException {
        private static final long serialVersionUID = 1;

        public AuthenticationException(String str) {
            super(str);
        }

        public AuthenticationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    public DigestAuthenticator(Credentials credentials) {
        this.f15536a = new AtomicReference<>();
        this.f15538c = credentials;
        this.f15537b = StandardCharsets.US_ASCII;
    }

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return m9196e(bArr);
    }

    /* renamed from: d */
    public static MessageDigest m9195d(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception e) {
            throw new IllegalArgumentException("Unsupported algorithm in HTTP Digest authentication: " + str, e);
        }
    }

    /* renamed from: e */
    public static String m9196e(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i = 0; i < length; i++) {
            byte b = bArr[i];
            int i2 = b & 15;
            int i3 = (b & JSONB.Constants.BC_INT32_NUM_MIN) >> 4;
            int i4 = i * 2;
            char[] cArr2 = f15535p;
            cArr[i4] = cArr2[i3];
            cArr[i4 + 1] = cArr2[i2];
        }
        return new String(cArr);
    }

    public static byte[] getAsciiBytes(String str) {
        if (str != null) {
            return str.getBytes(StandardCharsets.US_ASCII);
        }
        throw new IllegalArgumentException("Parameter may not be null");
    }

    /* renamed from: a */
    public final Request m9197a(Route route, Request request, Map<String, String> map) throws IOException {
        if (map.get(OAuthConstants.REALM) == null) {
            return null;
        }
        String str = map.get("nonce");
        if (str == null) {
            throw new IOException("missing nonce in challenge");
        }
        if (m9204j(request, str, "true".equalsIgnoreCase(map.get("stale")))) {
            Platform.get().log("Previous digest authentication with same nonce failed, returning null", 5, null);
            return null;
        }
        if (map.get("proxy-authenticate") != null) {
            String str2 = request.url().host() + ':' + request.url().port();
            map.put("methodname", "CONNECT");
            map.put("uri", str2);
        } else {
            String method = request.method();
            String m9205k = m9205k(request.url());
            map.put("methodname", method);
            map.put("uri", m9205k);
        }
        if (map.get("charset") == null) {
            map.put("charset", m9202h(request));
        }
        NameValuePair m9199c = m9199c(this.f15538c, request, map);
        return request.newBuilder().header(m9199c.getName(), m9199c.getValue()).build();
    }

    @Override // okhttp3.Authenticator
    public synchronized Request authenticate(Route route, Response response) throws IOException {
        String m9200f = m9200f(response.headers(), m9203i(response.code()));
        if (m9200f == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        parseChallenge(m9200f, 7, m9200f.length() - 7, concurrentHashMap);
        m9198b(response.headers(), concurrentHashMap);
        this.f15536a.set(Collections.unmodifiableMap(concurrentHashMap));
        if (concurrentHashMap.get("nonce") != null) {
            return m9197a(route, response.request(), concurrentHashMap);
        }
        throw new IOException("missing nonce in challenge header: " + m9200f);
    }

    @Override // com.burgstaller.okhttp.digest.CachingAuthenticator
    public Request authenticateWithState(Route route, Request request) throws IOException {
        Map<String, String> map = this.f15536a.get();
        return m9197a(route, request, map == null ? new ConcurrentHashMap() : new ConcurrentHashMap(map));
    }

    /* renamed from: b */
    public final void m9198b(Headers headers, Map<String, String> map) {
        for (int i = 0; i < headers.size(); i++) {
            map.put(headers.name(i), headers.value(i));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0342  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.burgstaller.okhttp.digest.fromhttpclient.NameValuePair m9199c(com.burgstaller.okhttp.digest.Credentials r19, okhttp3.Request r20, java.util.Map<java.lang.String, java.lang.String> r21) throws com.burgstaller.okhttp.digest.DigestAuthenticator.AuthenticationException {
        /*
            Method dump skipped, instructions count: 903
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.burgstaller.okhttp.digest.DigestAuthenticator.m9199c(com.burgstaller.okhttp.digest.Credentials, okhttp3.Request, java.util.Map):com.burgstaller.okhttp.digest.fromhttpclient.NameValuePair");
    }

    /* renamed from: f */
    public final String m9200f(Headers headers, String str) throws IOException {
        List<String> values = headers.values(str);
        for (String str2 : values) {
            if (str2.startsWith("Digest")) {
                return str2;
            }
        }
        if (values.contains("OkHttp-Preemptive")) {
            return null;
        }
        throw new IOException("unsupported auth scheme: " + values);
    }

    /* renamed from: g */
    public final byte[] m9201g(String str, String str2) {
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        }
    }

    public Charset getCredentialsCharset() {
        return this.f15537b;
    }

    /* renamed from: h */
    public String m9202h(Request request) {
        String header = request.header("http.auth.credential-charset");
        return header == null ? getCredentialsCharset().name() : header;
    }

    /* renamed from: i */
    public final String m9203i(int i) {
        if (i == 401) {
            setProxy(false);
            return "WWW-Authenticate";
        }
        if (i != 407) {
            return "";
        }
        setProxy(true);
        return "Proxy-Authenticate";
    }

    public boolean isProxy() {
        return this.f15544i;
    }

    /* renamed from: j */
    public final boolean m9204j(Request request, String str, boolean z) {
        String header = request.header(isProxy() ? "Proxy-Authorization" : "Authorization");
        if (header == null || !header.startsWith("Digest")) {
            return false;
        }
        return !z;
    }

    /* renamed from: k */
    public final String m9205k(HttpUrl httpUrl) {
        String encodedPath = httpUrl.encodedPath();
        String encodedQuery = httpUrl.encodedQuery();
        if (encodedQuery == null) {
            return encodedPath;
        }
        return encodedPath + "?" + encodedQuery;
    }

    public void parseChallenge(String str, int i, int i2, Map<String, String> map) {
        BasicHeaderValueParser basicHeaderValueParser = BasicHeaderValueParser.INSTANCE;
        ParserCursor parserCursor = new ParserCursor(i, str.length());
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(i2);
        charArrayBuffer.append(str);
        HeaderElement[] parseElements = basicHeaderValueParser.parseElements(charArrayBuffer, parserCursor);
        if (parseElements.length == 0) {
            throw new IllegalArgumentException("Authentication challenge is empty");
        }
        for (HeaderElement headerElement : parseElements) {
            map.put(headerElement.getName(), headerElement.getValue());
        }
    }

    public void setProxy(boolean z) {
        this.f15544i = z;
    }

    public DigestAuthenticator(Credentials credentials, Charset charset) {
        this.f15536a = new AtomicReference<>();
        this.f15538c = credentials;
        this.f15537b = charset;
    }
}
