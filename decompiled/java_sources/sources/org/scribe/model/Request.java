package org.scribe.model;

import com.onyx.android.sdk.base.common.CommonConstant;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.scribe.exceptions.OAuthConnectionException;
import org.scribe.exceptions.OAuthException;

/* loaded from: classes16.dex */
public class Request {
    public static final String DEFAULT_CONTENT_TYPE = "application/x-www-form-urlencoded";

    /* renamed from: n */
    public static final String f115955n = "Content-Length";

    /* renamed from: o */
    public static final String f115956o = "Content-Type";

    /* renamed from: p */
    public static RequestTuner f115957p = new C20458a();

    /* renamed from: a */
    public String f115958a;

    /* renamed from: b */
    public Verb f115959b;

    /* renamed from: g */
    public HttpURLConnection f115964g;

    /* renamed from: h */
    public String f115965h;

    /* renamed from: f */
    public String f115963f = null;

    /* renamed from: i */
    public byte[] f115966i = null;

    /* renamed from: j */
    public boolean f115967j = false;

    /* renamed from: k */
    public boolean f115968k = true;

    /* renamed from: l */
    public Long f115969l = null;

    /* renamed from: m */
    public Long f115970m = null;

    /* renamed from: c */
    public ParameterList f115960c = new ParameterList();

    /* renamed from: d */
    public ParameterList f115961d = new ParameterList();

    /* renamed from: e */
    public Map<String, String> f115962e = new HashMap();

    /* renamed from: org.scribe.model.Request$a */
    /* loaded from: classes16.dex */
    public static class C20458a extends RequestTuner {
        @Override // org.scribe.model.RequestTuner
        public void tune(Request request) {
        }
    }

    public Request(Verb verb, String str) {
        this.f115959b = verb;
        this.f115958a = str;
    }

    /* renamed from: a */
    public void m71875a(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bArr.length));
        if (httpURLConnection.getRequestProperty("Content-Type") == null) {
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        }
        httpURLConnection.setDoOutput(true);
        httpURLConnection.getOutputStream().write(bArr);
    }

    public void addBodyParameter(String str, String str2) {
        this.f115961d.add(str, str2);
    }

    public void addHeader(String str, String str2) {
        this.f115962e.put(str, str2);
    }

    public void addPayload(String str) {
        this.f115963f = str;
    }

    public void addQuerystringParameter(String str, String str2) {
        this.f115960c.add(str, str2);
    }

    /* renamed from: b */
    public void m71876b(HttpURLConnection httpURLConnection) {
        for (String str : this.f115962e.keySet()) {
            httpURLConnection.setRequestProperty(str, this.f115962e.get(str));
        }
    }

    /* renamed from: c */
    public final void m71877c() throws IOException {
        String completeUrl = getCompleteUrl();
        if (this.f115964g == null) {
            System.setProperty("http.keepAlive", this.f115967j ? "true" : "false");
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(completeUrl).openConnection();
            this.f115964g = httpURLConnection;
            httpURLConnection.setInstanceFollowRedirects(this.f115968k);
        }
    }

    /* renamed from: d */
    public Response m71878d(RequestTuner requestTuner) throws IOException {
        this.f115964g.setRequestMethod(this.f115959b.name());
        Long l = this.f115969l;
        if (l != null) {
            this.f115964g.setConnectTimeout(l.intValue());
        }
        Long l2 = this.f115970m;
        if (l2 != null) {
            this.f115964g.setReadTimeout(l2.intValue());
        }
        m71876b(this.f115964g);
        if (this.f115959b.equals(Verb.PUT) || this.f115959b.equals(Verb.POST)) {
            m71875a(this.f115964g, m71879e());
        }
        requestTuner.tune(this);
        return new Response(this.f115964g);
    }

    /* renamed from: e */
    public byte[] m71879e() {
        byte[] bArr = this.f115966i;
        if (bArr != null) {
            return bArr;
        }
        String str = this.f115963f;
        if (str == null) {
            str = this.f115961d.asFormUrlEncodedString();
        }
        try {
            return str.getBytes(getCharset());
        } catch (UnsupportedEncodingException e) {
            throw new OAuthException("Unsupported Charset: " + this.getCharset(), e);
        }
    }

    /* renamed from: f */
    public void m71880f(HttpURLConnection httpURLConnection) {
        this.f115964g = httpURLConnection;
    }

    public String getBodyContents() {
        try {
            return new String(m71879e(), getCharset());
        } catch (UnsupportedEncodingException e) {
            throw new OAuthException("Unsupported Charset: " + this.f115965h, e);
        }
    }

    public ParameterList getBodyParams() {
        return this.f115961d;
    }

    public String getCharset() {
        String str = this.f115965h;
        return str == null ? Charset.defaultCharset().name() : str;
    }

    public String getCompleteUrl() {
        return this.f115960c.appendTo(this.f115958a);
    }

    public Map<String, String> getHeaders() {
        return this.f115962e;
    }

    public ParameterList getQueryStringParams() {
        try {
            ParameterList parameterList = new ParameterList();
            parameterList.addQuerystring(new URL(this.f115958a).getQuery());
            parameterList.addAll(this.f115960c);
            return parameterList;
        } catch (MalformedURLException e) {
            throw new OAuthException("Malformed URL", e);
        }
    }

    public String getSanitizedUrl() {
        return (this.f115958a.startsWith(CommonConstant.SCHEME_HTTP) && (this.f115958a.endsWith(":80") || this.f115958a.contains(":80/"))) ? this.f115958a.replaceAll("\\?.*", "").replaceAll(":80", "") : (this.f115958a.startsWith(CommonConstant.SCHEME_HTTPS) && (this.f115958a.endsWith(":443") || this.f115958a.contains(":443/"))) ? this.f115958a.replaceAll("\\?.*", "").replaceAll(":443", "") : this.f115958a.replaceAll("\\?.*", "");
    }

    public String getUrl() {
        return this.f115958a;
    }

    public Verb getVerb() {
        return this.f115959b;
    }

    public Response send(RequestTuner requestTuner) {
        try {
            m71877c();
            return m71878d(requestTuner);
        } catch (Exception e) {
            throw new OAuthConnectionException(e);
        }
    }

    public void setCharset(String str) {
        this.f115965h = str;
    }

    public void setConnectTimeout(int i, TimeUnit timeUnit) {
        this.f115969l = Long.valueOf(timeUnit.toMillis(i));
    }

    public void setConnectionKeepAlive(boolean z) {
        this.f115967j = z;
    }

    public void setFollowRedirects(boolean z) {
        this.f115968k = z;
    }

    public void setReadTimeout(int i, TimeUnit timeUnit) {
        this.f115970m = Long.valueOf(timeUnit.toMillis(i));
    }

    public String toString() {
        return String.format("@Request(%s %s)", getVerb(), getUrl());
    }

    public void addPayload(byte[] bArr) {
        this.f115966i = (byte[]) bArr.clone();
    }

    public Response send() {
        return send(f115957p);
    }
}
