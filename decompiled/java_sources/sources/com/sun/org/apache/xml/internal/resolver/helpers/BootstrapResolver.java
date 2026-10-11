package com.sun.org.apache.xml.internal.resolver.helpers;

import com.google.android.material.motion.MotionUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Hashtable;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.SAXSource;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;

/* loaded from: classes10.dex */
public class BootstrapResolver implements EntityResolver, URIResolver {
    public static final String xmlCatalogPubId = "-//OASIS//DTD XML Catalogs V1.0//EN";
    public static final String xmlCatalogRNG = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.rng";
    public static final String xmlCatalogSysId = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.dtd";
    public static final String xmlCatalogXSD = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.xsd";
    private Hashtable publicMap = new Hashtable();
    private Hashtable systemMap = new Hashtable();
    private Hashtable uriMap = new Hashtable();

    public BootstrapResolver() {
        URL resource = getClass().getResource("/com/sun/org/apache/xml/internal/resolver/etc/catalog.dtd");
        if (resource != null) {
            this.publicMap.put(xmlCatalogPubId, resource.toString());
            this.systemMap.put(xmlCatalogSysId, resource.toString());
        }
        URL resource2 = getClass().getResource("/com/sun/org/apache/xml/internal/resolver/etc/catalog.rng");
        if (resource2 != null) {
            this.uriMap.put(xmlCatalogRNG, resource2.toString());
        }
        URL resource3 = getClass().getResource("/com/sun/org/apache/xml/internal/resolver/etc/catalog.xsd");
        if (resource3 != null) {
            this.uriMap.put(xmlCatalogXSD, resource3.toString());
        }
    }

    private String makeAbsolute(String str) {
        if (str == null) {
            str = "";
        }
        try {
            try {
                return new URL(str).toString();
            } catch (MalformedURLException unused) {
                return str;
            }
        } catch (MalformedURLException unused2) {
            return FileURL.makeURL(str).toString();
        }
    }

    @Override // javax.xml.transform.URIResolver
    public Source resolve(String str, String str2) throws TransformerException {
        String str3;
        String url;
        int indexOf = str.indexOf("#");
        if (indexOf >= 0) {
            str3 = str.substring(0, indexOf);
            str.substring(indexOf + 1);
        } else {
            str3 = str;
        }
        String str4 = this.uriMap.containsKey(str) ? (String) this.uriMap.get(str) : null;
        if (str4 == null) {
            try {
                if (str2 == null) {
                    url = new URL(str3).toString();
                } else {
                    URL url2 = new URL(str2);
                    if (str.length() != 0) {
                        url2 = new URL(url2, str3);
                    }
                    url = url2.toString();
                }
                str4 = url;
            } catch (MalformedURLException e) {
                String makeAbsolute = makeAbsolute(str2);
                if (!makeAbsolute.equals(str2)) {
                    return resolve(str, makeAbsolute);
                }
                throw new TransformerException("Malformed URL " + str + "(base " + str2 + MotionUtils.f31762d, e);
            }
        }
        SAXSource sAXSource = new SAXSource();
        sAXSource.setInputSource(new InputSource(str4));
        return sAXSource;
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) {
        String str3 = (str2 == null || !this.systemMap.containsKey(str2)) ? (str == null || !this.publicMap.containsKey(str)) ? null : (String) this.publicMap.get(str) : (String) this.systemMap.get(str2);
        if (str3 != null) {
            try {
                InputSource inputSource = new InputSource(str3);
                inputSource.setPublicId(str);
                inputSource.setByteStream(new URL(str3).openStream());
                return inputSource;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
