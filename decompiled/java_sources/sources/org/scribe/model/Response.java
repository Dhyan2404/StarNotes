package org.scribe.model;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import org.scribe.exceptions.OAuthException;
import org.scribe.utils.StreamUtils;

/* loaded from: classes16.dex */
public class Response {

    /* renamed from: f */
    public static final String f115971f = "";

    /* renamed from: a */
    public int f115972a;

    /* renamed from: b */
    public String f115973b;

    /* renamed from: c */
    public String f115974c;

    /* renamed from: d */
    public InputStream f115975d;

    /* renamed from: e */
    public Map<String, String> f115976e;

    public Response(HttpURLConnection httpURLConnection) throws IOException {
        try {
            httpURLConnection.connect();
            this.f115972a = httpURLConnection.getResponseCode();
            this.f115973b = httpURLConnection.getResponseMessage();
            this.f115976e = m71882b(httpURLConnection);
            this.f115975d = isSuccessful() ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
        } catch (UnknownHostException e) {
            throw new OAuthException("The IP address of a host could not be determined.", e);
        }
    }

    /* renamed from: a */
    public final String m71881a() {
        String streamContents = StreamUtils.getStreamContents(getStream());
        this.f115974c = streamContents;
        return streamContents;
    }

    /* renamed from: b */
    public final Map<String, String> m71882b(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        for (String str : httpURLConnection.getHeaderFields().keySet()) {
            hashMap.put(str, httpURLConnection.getHeaderFields().get(str).get(0));
        }
        return hashMap;
    }

    public String getBody() {
        String str = this.f115974c;
        return str != null ? str : m71881a();
    }

    public int getCode() {
        return this.f115972a;
    }

    public String getHeader(String str) {
        return this.f115976e.get(str);
    }

    public Map<String, String> getHeaders() {
        return this.f115976e;
    }

    public String getMessage() {
        return this.f115973b;
    }

    public InputStream getStream() {
        return this.f115975d;
    }

    public boolean isSuccessful() {
        return getCode() >= 200 && getCode() < 400;
    }
}
