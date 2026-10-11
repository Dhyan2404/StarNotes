package org.apache.http.client.utils;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.Consts;
import org.apache.http.NameValuePair;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.TextUtils;

/* loaded from: classes12.dex */
public class URIBuilder {

    /* renamed from: a */
    public String f110213a;

    /* renamed from: b */
    public String f110214b;

    /* renamed from: c */
    public String f110215c;

    /* renamed from: d */
    public String f110216d;

    /* renamed from: e */
    public String f110217e;

    /* renamed from: f */
    public String f110218f;

    /* renamed from: g */
    public int f110219g;

    /* renamed from: h */
    public String f110220h;

    /* renamed from: i */
    public List<String> f110221i;

    /* renamed from: j */
    public String f110222j;

    /* renamed from: k */
    public List<NameValuePair> f110223k;

    /* renamed from: l */
    public String f110224l;

    /* renamed from: m */
    public Charset f110225m;

    /* renamed from: n */
    public String f110226n;

    /* renamed from: o */
    public String f110227o;

    public URIBuilder() {
        this.f110219g = -1;
    }

    /* renamed from: g */
    public static String m68305g(String str, boolean z) {
        if (TextUtils.isBlank(str)) {
            return "";
        }
        if (z || str.startsWith("/")) {
            return str;
        }
        return "/" + str;
    }

    /* renamed from: a */
    public final String m68306a() {
        StringBuilder sb = new StringBuilder();
        String str = this.f110213a;
        if (str != null) {
            sb.append(str);
            sb.append(':');
        }
        String str2 = this.f110214b;
        if (str2 != null) {
            sb.append(str2);
        } else {
            if (this.f110215c != null) {
                sb.append("//");
                sb.append(this.f110215c);
            } else if (this.f110218f != null) {
                sb.append("//");
                String str3 = this.f110217e;
                if (str3 != null) {
                    sb.append(str3);
                    sb.append("@");
                } else {
                    String str4 = this.f110216d;
                    if (str4 != null) {
                        sb.append(m68311f(str4));
                        sb.append("@");
                    }
                }
                if (InetAddressUtils.isIPv6Address(this.f110218f)) {
                    sb.append(IteratorUtils.f104923a);
                    sb.append(this.f110218f);
                    sb.append(IteratorUtils.f104924b);
                } else {
                    sb.append(this.f110218f);
                }
                if (this.f110219g >= 0) {
                    sb.append(":");
                    sb.append(this.f110219g);
                }
            }
            String str5 = this.f110220h;
            if (str5 != null) {
                sb.append(m68305g(str5, sb.length() == 0));
            } else {
                List<String> list = this.f110221i;
                if (list != null) {
                    sb.append(m68308c(list));
                }
            }
            if (this.f110222j != null) {
                sb.append("?");
                sb.append(this.f110222j);
            } else {
                List<NameValuePair> list2 = this.f110223k;
                if (list2 != null && !list2.isEmpty()) {
                    sb.append("?");
                    sb.append(m68310e(this.f110223k));
                } else if (this.f110224l != null) {
                    sb.append("?");
                    sb.append(m68309d(this.f110224l));
                }
            }
        }
        if (this.f110227o != null) {
            sb.append("#");
            sb.append(this.f110227o);
        } else if (this.f110226n != null) {
            sb.append("#");
            sb.append(m68309d(this.f110226n));
        }
        return sb.toString();
    }

    public URIBuilder addParameter(String str, String str2) {
        if (this.f110223k == null) {
            this.f110223k = new ArrayList();
        }
        this.f110223k.add(new BasicNameValuePair(str, str2));
        this.f110222j = null;
        this.f110214b = null;
        this.f110224l = null;
        return this;
    }

    public URIBuilder addParameters(List<NameValuePair> list) {
        if (this.f110223k == null) {
            this.f110223k = new ArrayList();
        }
        this.f110223k.addAll(list);
        this.f110222j = null;
        this.f110214b = null;
        this.f110224l = null;
        return this;
    }

    /* renamed from: b */
    public final void m68307b(URI uri) {
        this.f110213a = uri.getScheme();
        this.f110214b = uri.getRawSchemeSpecificPart();
        this.f110215c = uri.getRawAuthority();
        this.f110218f = uri.getHost();
        this.f110219g = uri.getPort();
        this.f110217e = uri.getRawUserInfo();
        this.f110216d = uri.getUserInfo();
        this.f110220h = uri.getRawPath();
        String rawPath = uri.getRawPath();
        Charset charset = this.f110225m;
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        this.f110221i = m68312h(rawPath, charset);
        this.f110222j = uri.getRawQuery();
        String rawQuery = uri.getRawQuery();
        Charset charset2 = this.f110225m;
        if (charset2 == null) {
            charset2 = Consts.UTF_8;
        }
        this.f110223k = m68313i(rawQuery, charset2);
        this.f110227o = uri.getRawFragment();
        this.f110226n = uri.getFragment();
    }

    public URI build() throws URISyntaxException {
        return new URI(m68306a());
    }

    /* renamed from: c */
    public final String m68308c(List<String> list) {
        Charset charset = this.f110225m;
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return URLEncodedUtils.formatSegments(list, charset);
    }

    public URIBuilder clearParameters() {
        this.f110223k = null;
        this.f110222j = null;
        this.f110214b = null;
        return this;
    }

    /* renamed from: d */
    public final String m68309d(String str) {
        Charset charset = this.f110225m;
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return URLEncodedUtils.m68318e(str, charset);
    }

    /* renamed from: e */
    public final String m68310e(List<NameValuePair> list) {
        Charset charset = this.f110225m;
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return URLEncodedUtils.format(list, charset);
    }

    /* renamed from: f */
    public final String m68311f(String str) {
        Charset charset = this.f110225m;
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        return URLEncodedUtils.m68319f(str, charset);
    }

    public Charset getCharset() {
        return this.f110225m;
    }

    public String getFragment() {
        return this.f110226n;
    }

    public String getHost() {
        return this.f110218f;
    }

    public String getPath() {
        if (this.f110221i == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : this.f110221i) {
            sb.append('/');
            sb.append(str);
        }
        return sb.toString();
    }

    public List<String> getPathSegments() {
        return this.f110221i != null ? new ArrayList(this.f110221i) : Collections.emptyList();
    }

    public int getPort() {
        return this.f110219g;
    }

    public List<NameValuePair> getQueryParams() {
        return this.f110223k != null ? new ArrayList(this.f110223k) : Collections.emptyList();
    }

    public String getScheme() {
        return this.f110213a;
    }

    public String getUserInfo() {
        return this.f110216d;
    }

    /* renamed from: h */
    public final List<String> m68312h(String str, Charset charset) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return URLEncodedUtils.parsePathSegments(str, charset);
    }

    /* renamed from: i */
    public final List<NameValuePair> m68313i(String str, Charset charset) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return URLEncodedUtils.parse(str, charset);
    }

    public boolean isAbsolute() {
        return this.f110213a != null;
    }

    public boolean isOpaque() {
        return this.f110221i == null && this.f110220h == null;
    }

    public boolean isPathEmpty() {
        String str;
        List<String> list = this.f110221i;
        return (list == null || list.isEmpty()) && ((str = this.f110220h) == null || str.isEmpty());
    }

    public boolean isQueryEmpty() {
        List<NameValuePair> list = this.f110223k;
        return (list == null || list.isEmpty()) && this.f110222j == null;
    }

    public URIBuilder removeQuery() {
        this.f110223k = null;
        this.f110224l = null;
        this.f110222j = null;
        this.f110214b = null;
        return this;
    }

    public URIBuilder setCharset(Charset charset) {
        this.f110225m = charset;
        return this;
    }

    public URIBuilder setCustomQuery(String str) {
        this.f110224l = str;
        this.f110222j = null;
        this.f110214b = null;
        this.f110223k = null;
        return this;
    }

    public URIBuilder setFragment(String str) {
        this.f110226n = str;
        this.f110227o = null;
        return this;
    }

    public URIBuilder setHost(String str) {
        this.f110218f = str;
        this.f110214b = null;
        this.f110215c = null;
        return this;
    }

    public URIBuilder setParameter(String str, String str2) {
        if (this.f110223k == null) {
            this.f110223k = new ArrayList();
        }
        if (!this.f110223k.isEmpty()) {
            Iterator<NameValuePair> it2 = this.f110223k.iterator();
            while (it2.hasNext()) {
                if (it2.next().getName().equals(str)) {
                    it2.remove();
                }
            }
        }
        this.f110223k.add(new BasicNameValuePair(str, str2));
        this.f110222j = null;
        this.f110214b = null;
        this.f110224l = null;
        return this;
    }

    public URIBuilder setParameters(List<NameValuePair> list) {
        List<NameValuePair> list2 = this.f110223k;
        if (list2 == null) {
            this.f110223k = new ArrayList();
        } else {
            list2.clear();
        }
        this.f110223k.addAll(list);
        this.f110222j = null;
        this.f110214b = null;
        this.f110224l = null;
        return this;
    }

    public URIBuilder setPath(String str) {
        return setPathSegments(str != null ? URLEncodedUtils.m68322i(str) : null);
    }

    public URIBuilder setPathSegments(String... strArr) {
        this.f110221i = strArr.length > 0 ? Arrays.asList(strArr) : null;
        this.f110214b = null;
        this.f110220h = null;
        return this;
    }

    public URIBuilder setPort(int i) {
        if (i < 0) {
            i = -1;
        }
        this.f110219g = i;
        this.f110214b = null;
        this.f110215c = null;
        return this;
    }

    @Deprecated
    public URIBuilder setQuery(String str) {
        Charset charset = this.f110225m;
        if (charset == null) {
            charset = Consts.UTF_8;
        }
        this.f110223k = m68313i(str, charset);
        this.f110224l = null;
        this.f110222j = null;
        this.f110214b = null;
        return this;
    }

    public URIBuilder setScheme(String str) {
        this.f110213a = str;
        return this;
    }

    public URIBuilder setUserInfo(String str) {
        this.f110216d = str;
        this.f110214b = null;
        this.f110215c = null;
        this.f110217e = null;
        return this;
    }

    public String toString() {
        return m68306a();
    }

    public URIBuilder(String str) throws URISyntaxException {
        this(new URI(str), (Charset) null);
    }

    public URIBuilder(URI uri) {
        this(uri, (Charset) null);
    }

    public URIBuilder setPathSegments(List<String> list) {
        this.f110221i = (list == null || list.size() <= 0) ? null : new ArrayList(list);
        this.f110214b = null;
        this.f110220h = null;
        return this;
    }

    public URIBuilder(String str, Charset charset) throws URISyntaxException {
        this(new URI(str), charset);
    }

    public URIBuilder setUserInfo(String str, String str2) {
        return setUserInfo(str + ':' + str2);
    }

    public URIBuilder(URI uri, Charset charset) {
        setCharset(charset);
        m68307b(uri);
    }

    public URIBuilder setParameters(NameValuePair... nameValuePairArr) {
        List<NameValuePair> list = this.f110223k;
        if (list == null) {
            this.f110223k = new ArrayList();
        } else {
            list.clear();
        }
        for (NameValuePair nameValuePair : nameValuePairArr) {
            this.f110223k.add(nameValuePair);
        }
        this.f110222j = null;
        this.f110214b = null;
        this.f110224l = null;
        return this;
    }
}
