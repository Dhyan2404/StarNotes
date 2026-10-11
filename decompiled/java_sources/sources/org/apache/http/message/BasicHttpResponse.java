package org.apache.http.message;

import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.StatusLine;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

/* loaded from: classes12.dex */
public class BasicHttpResponse extends AbstractHttpMessage implements HttpResponse {

    /* renamed from: e */
    public StatusLine f111065e;

    /* renamed from: f */
    public ProtocolVersion f111066f;

    /* renamed from: g */
    public int f111067g;

    /* renamed from: h */
    public String f111068h;

    /* renamed from: i */
    public HttpEntity f111069i;

    /* renamed from: j */
    public final ReasonPhraseCatalog f111070j;

    /* renamed from: k */
    public Locale f111071k;

    public BasicHttpResponse(StatusLine statusLine, ReasonPhraseCatalog reasonPhraseCatalog, Locale locale) {
        this.f111065e = (StatusLine) Args.notNull(statusLine, "Status line");
        this.f111066f = statusLine.getProtocolVersion();
        this.f111067g = statusLine.getStatusCode();
        this.f111068h = statusLine.getReasonPhrase();
        this.f111070j = reasonPhraseCatalog;
        this.f111071k = locale;
    }

    @Override // org.apache.http.HttpResponse
    public HttpEntity getEntity() {
        return this.f111069i;
    }

    @Override // org.apache.http.HttpResponse
    public Locale getLocale() {
        return this.f111071k;
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        return this.f111066f;
    }

    public String getReason(int i) {
        ReasonPhraseCatalog reasonPhraseCatalog = this.f111070j;
        if (reasonPhraseCatalog == null) {
            return null;
        }
        Locale locale = this.f111071k;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        return reasonPhraseCatalog.getReason(i, locale);
    }

    @Override // org.apache.http.HttpResponse
    public StatusLine getStatusLine() {
        if (this.f111065e == null) {
            ProtocolVersion protocolVersion = this.f111066f;
            if (protocolVersion == null) {
                protocolVersion = HttpVersion.HTTP_1_1;
            }
            int i = this.f111067g;
            String str = this.f111068h;
            if (str == null) {
                str = getReason(i);
            }
            this.f111065e = new BasicStatusLine(protocolVersion, i, str);
        }
        return this.f111065e;
    }

    @Override // org.apache.http.HttpResponse
    public void setEntity(HttpEntity httpEntity) {
        this.f111069i = httpEntity;
    }

    @Override // org.apache.http.HttpResponse
    public void setLocale(Locale locale) {
        this.f111071k = (Locale) Args.notNull(locale, "Locale");
        this.f111065e = null;
    }

    @Override // org.apache.http.HttpResponse
    public void setReasonPhrase(String str) {
        this.f111065e = null;
        if (TextUtils.isBlank(str)) {
            str = null;
        }
        this.f111068h = str;
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusCode(int i) {
        Args.notNegative(i, "Status code");
        this.f111065e = null;
        this.f111067g = i;
        this.f111068h = null;
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(StatusLine statusLine) {
        this.f111065e = (StatusLine) Args.notNull(statusLine, "Status line");
        this.f111066f = statusLine.getProtocolVersion();
        this.f111067g = statusLine.getStatusCode();
        this.f111068h = statusLine.getReasonPhrase();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getStatusLine());
        sb.append(' ');
        sb.append(this.headergroup);
        if (this.f111069i != null) {
            sb.append(' ');
            sb.append(this.f111069i);
        }
        return sb.toString();
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(ProtocolVersion protocolVersion, int i) {
        Args.notNegative(i, "Status code");
        this.f111065e = null;
        this.f111066f = protocolVersion;
        this.f111067g = i;
        this.f111068h = null;
    }

    public BasicHttpResponse(StatusLine statusLine) {
        this.f111065e = (StatusLine) Args.notNull(statusLine, "Status line");
        this.f111066f = statusLine.getProtocolVersion();
        this.f111067g = statusLine.getStatusCode();
        this.f111068h = statusLine.getReasonPhrase();
        this.f111070j = null;
        this.f111071k = null;
    }

    @Override // org.apache.http.HttpResponse
    public void setStatusLine(ProtocolVersion protocolVersion, int i, String str) {
        Args.notNegative(i, "Status code");
        this.f111065e = null;
        this.f111066f = protocolVersion;
        this.f111067g = i;
        this.f111068h = str;
    }

    public BasicHttpResponse(ProtocolVersion protocolVersion, int i, String str) {
        Args.notNegative(i, "Status code");
        this.f111065e = null;
        this.f111066f = protocolVersion;
        this.f111067g = i;
        this.f111068h = str;
        this.f111070j = null;
        this.f111071k = null;
    }
}
