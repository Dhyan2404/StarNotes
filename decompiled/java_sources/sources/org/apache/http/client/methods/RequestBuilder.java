package org.apache.http.client.methods;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.NameValuePair;
import org.apache.http.ProtocolVersion;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.entity.ContentType;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.HeaderGroup;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class RequestBuilder {

    /* renamed from: a */
    public String f110177a;

    /* renamed from: b */
    public Charset f110178b;

    /* renamed from: c */
    public ProtocolVersion f110179c;

    /* renamed from: d */
    public URI f110180d;

    /* renamed from: e */
    public HeaderGroup f110181e;

    /* renamed from: f */
    public HttpEntity f110182f;

    /* renamed from: g */
    public List<NameValuePair> f110183g;

    /* renamed from: h */
    public RequestConfig f110184h;

    /* renamed from: org.apache.http.client.methods.RequestBuilder$a */
    /* loaded from: classes12.dex */
    public static class C19339a extends HttpEntityEnclosingRequestBase {

        /* renamed from: e */
        public final String f110185e;

        public C19339a(String str) {
            this.f110185e = str;
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return this.f110185e;
        }
    }

    /* renamed from: org.apache.http.client.methods.RequestBuilder$b */
    /* loaded from: classes12.dex */
    public static class C19340b extends HttpRequestBase {

        /* renamed from: e */
        public final String f110186e;

        public C19340b(String str) {
            this.f110186e = str;
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return this.f110186e;
        }
    }

    public RequestBuilder(String str) {
        this.f110178b = Consts.UTF_8;
        this.f110177a = str;
    }

    public static RequestBuilder copy(HttpRequest httpRequest) {
        Args.notNull(httpRequest, "HTTP request");
        return new RequestBuilder().m68293a(httpRequest);
    }

    public static RequestBuilder create(String str) {
        Args.notBlank(str, "HTTP method");
        return new RequestBuilder(str);
    }

    public static RequestBuilder delete() {
        return new RequestBuilder("DELETE");
    }

    public static RequestBuilder get() {
        return new RequestBuilder("GET");
    }

    public static RequestBuilder head() {
        return new RequestBuilder("HEAD");
    }

    public static RequestBuilder options() {
        return new RequestBuilder("OPTIONS");
    }

    public static RequestBuilder patch() {
        return new RequestBuilder("PATCH");
    }

    public static RequestBuilder post() {
        return new RequestBuilder("POST");
    }

    public static RequestBuilder put() {
        return new RequestBuilder("PUT");
    }

    public static RequestBuilder trace() {
        return new RequestBuilder("TRACE");
    }

    /* renamed from: a */
    public final RequestBuilder m68293a(HttpRequest httpRequest) {
        if (httpRequest == null) {
            return this;
        }
        this.f110177a = httpRequest.getRequestLine().getMethod();
        this.f110179c = httpRequest.getRequestLine().getProtocolVersion();
        if (this.f110181e == null) {
            this.f110181e = new HeaderGroup();
        }
        this.f110181e.clear();
        this.f110181e.setHeaders(httpRequest.getAllHeaders());
        this.f110183g = null;
        this.f110182f = null;
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            HttpEntity entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity();
            ContentType contentType = ContentType.get(entity);
            if (contentType == null || !contentType.getMimeType().equals(ContentType.APPLICATION_FORM_URLENCODED.getMimeType())) {
                this.f110182f = entity;
            } else {
                try {
                    List<NameValuePair> parse = URLEncodedUtils.parse(entity);
                    if (!parse.isEmpty()) {
                        this.f110183g = parse;
                    }
                } catch (IOException unused) {
                }
            }
        }
        if (httpRequest instanceof HttpUriRequest) {
            this.f110180d = ((HttpUriRequest) httpRequest).getURI();
        } else {
            this.f110180d = URI.create(httpRequest.getRequestLine().getUri());
        }
        if (httpRequest instanceof Configurable) {
            this.f110184h = ((Configurable) httpRequest).getConfig();
        } else {
            this.f110184h = null;
        }
        return this;
    }

    public RequestBuilder addHeader(Header header) {
        if (this.f110181e == null) {
            this.f110181e = new HeaderGroup();
        }
        this.f110181e.addHeader(header);
        return this;
    }

    public RequestBuilder addParameter(NameValuePair nameValuePair) {
        Args.notNull(nameValuePair, "Name value pair");
        if (this.f110183g == null) {
            this.f110183g = new LinkedList();
        }
        this.f110183g.add(nameValuePair);
        return this;
    }

    public RequestBuilder addParameters(NameValuePair... nameValuePairArr) {
        for (NameValuePair nameValuePair : nameValuePairArr) {
            addParameter(nameValuePair);
        }
        return this;
    }

    public HttpUriRequest build() {
        HttpRequestBase httpRequestBase;
        URI uri = this.f110180d;
        if (uri == null) {
            uri = URI.create("/");
        }
        HttpEntity httpEntity = this.f110182f;
        List<NameValuePair> list = this.f110183g;
        if (list != null && !list.isEmpty()) {
            if (httpEntity == null && ("POST".equalsIgnoreCase(this.f110177a) || "PUT".equalsIgnoreCase(this.f110177a))) {
                List<NameValuePair> list2 = this.f110183g;
                Charset charset = this.f110178b;
                if (charset == null) {
                    charset = HTTP.DEF_CONTENT_CHARSET;
                }
                httpEntity = new UrlEncodedFormEntity(list2, charset);
            } else {
                try {
                    uri = new URIBuilder(uri).setCharset(this.f110178b).addParameters(this.f110183g).build();
                } catch (URISyntaxException unused) {
                }
            }
        }
        if (httpEntity == null) {
            httpRequestBase = new C19340b(this.f110177a);
        } else {
            C19339a c19339a = new C19339a(this.f110177a);
            c19339a.setEntity(httpEntity);
            httpRequestBase = c19339a;
        }
        httpRequestBase.setProtocolVersion(this.f110179c);
        httpRequestBase.setURI(uri);
        HeaderGroup headerGroup = this.f110181e;
        if (headerGroup != null) {
            httpRequestBase.setHeaders(headerGroup.getAllHeaders());
        }
        httpRequestBase.setConfig(this.f110184h);
        return httpRequestBase;
    }

    public Charset getCharset() {
        return this.f110178b;
    }

    public RequestConfig getConfig() {
        return this.f110184h;
    }

    public HttpEntity getEntity() {
        return this.f110182f;
    }

    public Header getFirstHeader(String str) {
        HeaderGroup headerGroup = this.f110181e;
        if (headerGroup != null) {
            return headerGroup.getFirstHeader(str);
        }
        return null;
    }

    public Header[] getHeaders(String str) {
        HeaderGroup headerGroup = this.f110181e;
        if (headerGroup != null) {
            return headerGroup.getHeaders(str);
        }
        return null;
    }

    public Header getLastHeader(String str) {
        HeaderGroup headerGroup = this.f110181e;
        if (headerGroup != null) {
            return headerGroup.getLastHeader(str);
        }
        return null;
    }

    public String getMethod() {
        return this.f110177a;
    }

    public List<NameValuePair> getParameters() {
        return this.f110183g != null ? new ArrayList(this.f110183g) : new ArrayList();
    }

    public URI getUri() {
        return this.f110180d;
    }

    public ProtocolVersion getVersion() {
        return this.f110179c;
    }

    public RequestBuilder removeHeader(Header header) {
        if (this.f110181e == null) {
            this.f110181e = new HeaderGroup();
        }
        this.f110181e.removeHeader(header);
        return this;
    }

    public RequestBuilder removeHeaders(String str) {
        HeaderGroup headerGroup;
        if (str != null && (headerGroup = this.f110181e) != null) {
            HeaderIterator it2 = headerGroup.iterator();
            while (it2.hasNext()) {
                if (str.equalsIgnoreCase(it2.nextHeader().getName())) {
                    it2.remove();
                }
            }
        }
        return this;
    }

    public RequestBuilder setCharset(Charset charset) {
        this.f110178b = charset;
        return this;
    }

    public RequestBuilder setConfig(RequestConfig requestConfig) {
        this.f110184h = requestConfig;
        return this;
    }

    public RequestBuilder setEntity(HttpEntity httpEntity) {
        this.f110182f = httpEntity;
        return this;
    }

    public RequestBuilder setHeader(Header header) {
        if (this.f110181e == null) {
            this.f110181e = new HeaderGroup();
        }
        this.f110181e.updateHeader(header);
        return this;
    }

    public RequestBuilder setUri(URI uri) {
        this.f110180d = uri;
        return this;
    }

    public RequestBuilder setVersion(ProtocolVersion protocolVersion) {
        this.f110179c = protocolVersion;
        return this;
    }

    public String toString() {
        return "RequestBuilder [method=" + this.f110177a + ", charset=" + this.f110178b + ", version=" + this.f110179c + ", uri=" + this.f110180d + ", headerGroup=" + this.f110181e + ", entity=" + this.f110182f + ", parameters=" + this.f110183g + ", config=" + this.f110184h + IteratorUtils.f104924b;
    }

    public static RequestBuilder delete(URI uri) {
        return new RequestBuilder("DELETE", uri);
    }

    public static RequestBuilder get(URI uri) {
        return new RequestBuilder("GET", uri);
    }

    public static RequestBuilder head(URI uri) {
        return new RequestBuilder("HEAD", uri);
    }

    public static RequestBuilder options(URI uri) {
        return new RequestBuilder("OPTIONS", uri);
    }

    public static RequestBuilder patch(URI uri) {
        return new RequestBuilder("PATCH", uri);
    }

    public static RequestBuilder post(URI uri) {
        return new RequestBuilder("POST", uri);
    }

    public static RequestBuilder put(URI uri) {
        return new RequestBuilder("PUT", uri);
    }

    public static RequestBuilder trace(URI uri) {
        return new RequestBuilder("TRACE", uri);
    }

    public RequestBuilder setUri(String str) {
        this.f110180d = str != null ? URI.create(str) : null;
        return this;
    }

    public static RequestBuilder delete(String str) {
        return new RequestBuilder("DELETE", str);
    }

    public static RequestBuilder get(String str) {
        return new RequestBuilder("GET", str);
    }

    public static RequestBuilder head(String str) {
        return new RequestBuilder("HEAD", str);
    }

    public static RequestBuilder options(String str) {
        return new RequestBuilder("OPTIONS", str);
    }

    public static RequestBuilder patch(String str) {
        return new RequestBuilder("PATCH", str);
    }

    public static RequestBuilder post(String str) {
        return new RequestBuilder("POST", str);
    }

    public static RequestBuilder put(String str) {
        return new RequestBuilder("PUT", str);
    }

    public static RequestBuilder trace(String str) {
        return new RequestBuilder("TRACE", str);
    }

    public RequestBuilder(String str, URI uri) {
        this.f110177a = str;
        this.f110180d = uri;
    }

    public RequestBuilder addHeader(String str, String str2) {
        if (this.f110181e == null) {
            this.f110181e = new HeaderGroup();
        }
        this.f110181e.addHeader(new BasicHeader(str, str2));
        return this;
    }

    public RequestBuilder setHeader(String str, String str2) {
        if (this.f110181e == null) {
            this.f110181e = new HeaderGroup();
        }
        this.f110181e.updateHeader(new BasicHeader(str, str2));
        return this;
    }

    public RequestBuilder addParameter(String str, String str2) {
        return addParameter(new BasicNameValuePair(str, str2));
    }

    public RequestBuilder(String str, String str2) {
        this.f110177a = str;
        this.f110180d = str2 != null ? URI.create(str2) : null;
    }

    public RequestBuilder() {
        this(null);
    }
}
