package com.thegrizzlylabs.sardineandroid;

import com.thegrizzlylabs.sardineandroid.model.Lockdiscovery;
import com.thegrizzlylabs.sardineandroid.model.Prop;
import com.thegrizzlylabs.sardineandroid.model.Propstat;
import com.thegrizzlylabs.sardineandroid.model.Resourcetype;
import com.thegrizzlylabs.sardineandroid.model.Response;
import com.thegrizzlylabs.sardineandroid.model.Supportedlock;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import javax.xml.namespace.QName;
import okhttp3.internal.http.StatusLine;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
public class DavResource {
    public static final long DEFAULT_CONTENT_LENGTH = -1;
    public static final String DEFAULT_CONTENT_TYPE = "application/octet-stream";
    public static final int DEFAULT_STATUS_CODE = 200;
    public static final String HTTPD_UNIX_DIRECTORY_CONTENT_TYPE = "httpd/unix-directory";

    /* renamed from: d */
    public static final Logger f93841d = Logger.getLogger(DavResource.class.getName());

    /* renamed from: e */
    public static final String f93842e = "/";

    /* renamed from: a */
    public final URI f93843a;

    /* renamed from: b */
    public final int f93844b;

    /* renamed from: c */
    public final C16903a f93845c;

    public DavResource(String str, Date date, Date date2, String str2, Long l, String str3, String str4, List<QName> list, String str5, List<QName> list2, Map<QName, String> map) throws URISyntaxException {
        this.f93843a = new URI(str);
        this.f93844b = 200;
        this.f93845c = new C16903a(date, date2, str2, l, str3, str4, list, str5, list2, map);
    }

    public String getContentLanguage() {
        return this.f93845c.f93852g;
    }

    public Long getContentLength() {
        return this.f93845c.f93853h;
    }

    public String getContentType() {
        return this.f93845c.f93848c;
    }

    public Date getCreation() {
        return this.f93845c.f93846a;
    }

    public Map<String, String> getCustomProps() {
        HashMap hashMap = new HashMap();
        Map<QName, String> customPropsNS = getCustomPropsNS();
        for (QName qName : customPropsNS.keySet()) {
            hashMap.put(qName.getLocalPart(), customPropsNS.get(qName));
        }
        return hashMap;
    }

    public Map<QName, String> getCustomPropsNS() {
        return this.f93845c.f93854i;
    }

    public String getDisplayName() {
        return this.f93845c.f93850e;
    }

    public String getEtag() {
        return this.f93845c.f93849d;
    }

    public Long getFolderSize() {
        return this.f93845c.f93857l;
    }

    public URI getHref() {
        return this.f93843a;
    }

    public Lockdiscovery getLockDiscovery() {
        return this.f93845c.f93855j;
    }

    public Date getModified() {
        return this.f93845c.f93847b;
    }

    public String getName() {
        String path = this.f93843a.getPath();
        try {
            if (path.endsWith("/")) {
                path = path.substring(0, path.length() - 1);
            }
            return path.substring(path.lastIndexOf(47) + 1);
        } catch (StringIndexOutOfBoundsException unused) {
            f93841d.warning(String.format("Failed to parse name from path %s", path));
            return null;
        }
    }

    public String getPath() {
        return this.f93843a.getPath();
    }

    public Long getQuotaUsedBytes(Response response) {
        String quotaUsedBytes;
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return -1L;
        }
        Iterator<Propstat> it2 = propstat.iterator();
        while (it2.hasNext()) {
            Prop prop = it2.next().getProp();
            if (prop != null && (quotaUsedBytes = prop.getQuotaUsedBytes()) != null) {
                try {
                    return Long.valueOf(quotaUsedBytes);
                } catch (NumberFormatException unused) {
                    f93841d.warning(String.format("Failed to parse quotaUsedBytes %s", quotaUsedBytes));
                }
            }
        }
        return -1L;
    }

    public List<QName> getResourceTypes() {
        return this.f93845c.f93851f;
    }

    public int getStatusCode() {
        return this.f93844b;
    }

    public Supportedlock getSupportedlock() {
        return this.f93845c.f93856k;
    }

    public boolean isDirectory() {
        return HTTPD_UNIX_DIRECTORY_CONTENT_TYPE.equals(this.f93845c.f93848c);
    }

    /* renamed from: l */
    public final String m60275l(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                Resourcetype resourcetype = propstat2.getProp().getResourcetype();
                return (resourcetype == null || resourcetype.getCollection() == null) ? propstat2.getProp().getGetcontentlanguage() : HTTPD_UNIX_DIRECTORY_CONTENT_TYPE;
            }
        }
        return null;
    }

    /* renamed from: m */
    public final long m60276m(Response response) {
        String getcontentlength;
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return -1L;
        }
        Iterator<Propstat> it2 = propstat.iterator();
        while (it2.hasNext()) {
            Propstat next = it2.next();
            if (next.getProp() != null && (getcontentlength = next.getProp().getGetcontentlength()) != null) {
                try {
                    return Long.parseLong(getcontentlength);
                } catch (NumberFormatException unused) {
                    f93841d.warning(String.format("Failed to parse content length %s", getcontentlength));
                }
            }
        }
        return -1L;
    }

    /* renamed from: n */
    public final String m60277n(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                Resourcetype resourcetype = propstat2.getProp().getResourcetype();
                if (resourcetype != null && resourcetype.getCollection() != null) {
                    return HTTPD_UNIX_DIRECTORY_CONTENT_TYPE;
                }
                if (propstat2.getProp().getGetcontenttype() != null) {
                    return propstat2.getProp().getGetcontenttype();
                }
            }
        }
        return "application/octet-stream";
    }

    /* renamed from: o */
    public final String m60278o(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                return propstat2.getProp().getCreationdate();
            }
        }
        return null;
    }

    /* renamed from: p */
    public final Map<QName, String> m60279p(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                for (Element element : propstat2.getProp().getAny()) {
                    hashMap.put(SardineUtil.toQName(element), element.getTextContent());
                }
            }
        }
        return hashMap;
    }

    /* renamed from: q */
    public final String m60280q(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                return propstat2.getProp().getDisplayname();
            }
        }
        return null;
    }

    /* renamed from: r */
    public final String m60281r(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                return propstat2.getProp().getGetetag();
            }
        }
        return null;
    }

    /* renamed from: s */
    public final Lockdiscovery m60282s(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                return propstat2.getProp().getLockdiscovery();
            }
        }
        return null;
    }

    /* renamed from: t */
    public final String m60283t(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                return propstat2.getProp().getGetlastmodified();
            }
        }
        return null;
    }

    public String toString() {
        return getPath();
    }

    /* renamed from: u */
    public final List<QName> m60284u(Response response) {
        Resourcetype resourcetype;
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null && (resourcetype = propstat2.getProp().getResourcetype()) != null) {
                if (resourcetype.getCollection() != null) {
                    arrayList.add(SardineUtil.createQNameWithDefaultNamespace("collection"));
                }
                if (resourcetype.getPrincipal() != null) {
                    arrayList.add(SardineUtil.createQNameWithDefaultNamespace("principal"));
                }
                Iterator<Element> it2 = resourcetype.getAny().iterator();
                while (it2.hasNext()) {
                    arrayList.add(SardineUtil.toQName(it2.next()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: v */
    public final int m60285v(Response response) {
        String status = response.getStatus();
        if (status == null || status.isEmpty()) {
            return 200;
        }
        try {
            return StatusLine.INSTANCE.parse(response.getStatus()).code;
        } catch (IOException unused) {
            f93841d.warning(String.format("Failed to parse status line: %s", status));
            return -1;
        }
    }

    /* renamed from: w */
    public final Supportedlock m60286w(Response response) {
        List<Propstat> propstat = response.getPropstat();
        if (propstat.isEmpty()) {
            return null;
        }
        for (Propstat propstat2 : propstat) {
            if (propstat2.getProp() != null) {
                return propstat2.getProp().getSupportedlock();
            }
        }
        return null;
    }

    public DavResource(Response response) throws URISyntaxException {
        this.f93843a = new URI(response.getHref());
        this.f93844b = m60285v(response);
        this.f93845c = new C16903a(response);
    }

    /* renamed from: com.thegrizzlylabs.sardineandroid.DavResource$a */
    /* loaded from: classes10.dex */
    public class C16903a {

        /* renamed from: a */
        public final Date f93846a;

        /* renamed from: b */
        public final Date f93847b;

        /* renamed from: c */
        public final String f93848c;

        /* renamed from: d */
        public final String f93849d;

        /* renamed from: e */
        public final String f93850e;

        /* renamed from: f */
        public final List<QName> f93851f;

        /* renamed from: g */
        public final String f93852g;

        /* renamed from: h */
        public final Long f93853h;

        /* renamed from: i */
        public final Map<QName, String> f93854i;

        /* renamed from: j */
        public final Lockdiscovery f93855j;

        /* renamed from: k */
        public final Supportedlock f93856k;

        /* renamed from: l */
        public Long f93857l;

        public C16903a(Date date, Date date2, String str, Long l, String str2, String str3, List<QName> list, String str4, List<QName> list2, Map<QName, String> map) {
            this.f93846a = date;
            this.f93847b = date2;
            this.f93848c = str;
            this.f93853h = l;
            this.f93849d = str2;
            this.f93850e = str3;
            this.f93851f = list;
            this.f93852g = str4;
            this.f93854i = map;
            this.f93855j = null;
            this.f93856k = null;
        }

        public C16903a(Response response) {
            this.f93846a = SardineUtil.parseDate(DavResource.this.m60278o(response));
            this.f93847b = SardineUtil.parseDate(DavResource.this.m60283t(response));
            this.f93848c = DavResource.this.m60277n(response);
            this.f93857l = DavResource.this.getQuotaUsedBytes(response);
            this.f93853h = Long.valueOf(DavResource.this.m60276m(response));
            this.f93849d = DavResource.this.m60281r(response);
            this.f93850e = DavResource.this.m60280q(response);
            this.f93851f = DavResource.this.m60284u(response);
            this.f93852g = DavResource.this.m60275l(response);
            this.f93854i = DavResource.this.m60279p(response);
            this.f93855j = DavResource.this.m60282s(response);
            this.f93856k = DavResource.this.m60286w(response);
        }
    }
}
