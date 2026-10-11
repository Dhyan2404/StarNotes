package org.xmlresolver;

import com.liulishuo.okdownload.core.Util;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import org.apache.hc.client5.http.classic.methods.HttpGet;
import org.apache.hc.client5.http.classic.methods.HttpHead;
import org.apache.hc.client5.http.impl.classic.CloseableHttpClient;
import org.apache.hc.client5.http.impl.classic.HttpClients;
import org.apache.hc.client5.http.protocol.HttpClientContext;
import org.apache.hc.core5.http.ClassicHttpResponse;
import org.apache.hc.core5.http.Header;
import org.apache.hc.core5.http.HttpResponse;
import org.xmlresolver.logging.AbstractLogger;
import org.xmlresolver.logging.ResolverLogger;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class ResourceConnection {

    /* renamed from: a */
    public InputStream f116098a;

    /* renamed from: b */
    public URI f116099b;

    /* renamed from: c */
    public URI f116100c;

    /* renamed from: d */
    public int f116101d;

    /* renamed from: e */
    public String f116102e;

    /* renamed from: f */
    public String f116103f;

    /* renamed from: g */
    public Long f116104g;

    /* renamed from: h */
    public Long f116105h;

    /* renamed from: i */
    public CloseableHttpClient f116106i;

    public ResourceConnection(ResolverConfiguration resolverConfiguration, String str) {
        this(resolverConfiguration, str, false);
    }

    /* renamed from: a */
    public final String m71975a(HttpResponse httpResponse, String str, String str2) {
        Header[] headers = httpResponse.getHeaders(str);
        return (headers == null || headers.length == 0) ? str2 : headers[0].getValue();
    }

    public void close() {
        CloseableHttpClient closeableHttpClient = this.f116106i;
        if (closeableHttpClient != null) {
            try {
                closeableHttpClient.close();
            } catch (IOException unused) {
            }
        }
    }

    public String getContentType() {
        return this.f116102e;
    }

    public long getDate() {
        return this.f116105h.longValue();
    }

    public String getEtag() {
        return this.f116103f;
    }

    public long getLastModified() {
        return this.f116104g.longValue();
    }

    public URI getRedirect() {
        return this.f116100c;
    }

    public int getStatusCode() {
        return this.f116101d;
    }

    public InputStream getStream() {
        return this.f116098a;
    }

    public URI getUri() {
        return this.f116099b;
    }

    public ResourceConnection(ResolverConfiguration resolverConfiguration, String str, boolean z) {
        HttpHead httpGet;
        this.f116098a = null;
        this.f116099b = null;
        this.f116100c = null;
        this.f116101d = -1;
        this.f116102e = null;
        this.f116103f = null;
        this.f116104g = -1L;
        this.f116105h = -1L;
        this.f116106i = null;
        try {
            URI newURI = URIUtils.newURI(str);
            this.f116099b = newURI;
            URL url = newURI.toURL();
            if (!"http".equals(this.f116099b.getScheme()) && !"https".equals(this.f116099b.getScheme())) {
                URLConnection openConnection = url.openConnection();
                openConnection.connect();
                if (z) {
                    openConnection.getInputStream().close();
                } else {
                    this.f116098a = openConnection.getInputStream();
                }
                this.f116102e = null;
                this.f116103f = openConnection.getHeaderField(Util.ETAG);
                this.f116104g = Long.valueOf(openConnection.getLastModified());
                this.f116105h = Long.valueOf(openConnection.getDate());
                try {
                    this.f116101d = ((HttpURLConnection) openConnection).getResponseCode();
                    return;
                } catch (ClassCastException unused) {
                    this.f116101d = 200;
                    return;
                }
            }
            this.f116106i = HttpClients.createDefault();
            HttpClientContext create = HttpClientContext.create();
            if (z) {
                httpGet = new HttpHead(this.f116099b);
            } else {
                httpGet = new HttpGet(this.f116099b);
            }
            ClassicHttpResponse execute = this.f116106i.execute(httpGet, create);
            URI resolve = org.apache.hc.client5.http.utils.URIUtils.resolve(httpGet.getUri(), create.getHttpRoute().getTargetHost(), create.getRedirectLocations().getAll());
            if (this.f116099b.equals(resolve)) {
                this.f116100c = null;
            } else {
                this.f116100c = resolve;
            }
            this.f116101d = execute.getCode();
            this.f116102e = m71975a(execute, "Content-Type", "application/octet-stream");
            this.f116103f = m71975a(execute, Util.ETAG, null);
            if (!z) {
                this.f116098a = execute.getEntity().getContent();
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz");
            String m71975a = m71975a(execute, "Last-Modified", null);
            if (m71975a != null) {
                try {
                    this.f116104g = Long.valueOf(simpleDateFormat.parse(m71975a).getTime());
                } catch (ParseException unused2) {
                }
            }
            String m71975a2 = m71975a(execute, "Date", null);
            if (m71975a2 != null) {
                try {
                    this.f116105h = Long.valueOf(simpleDateFormat.parse(m71975a2).getTime());
                } catch (ParseException unused3) {
                }
            }
        } catch (IOException | IllegalArgumentException | URISyntaxException e) {
            ResolverLogger resolverLogger = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
            Object[] objArr = new Object[3];
            objArr[0] = z ? "HEAD" : "GET";
            objArr[1] = str;
            objArr[2] = e.getMessage();
            resolverLogger.log(AbstractLogger.WARNING, "Failed to %s: %s: %s", objArr);
        }
    }
}
