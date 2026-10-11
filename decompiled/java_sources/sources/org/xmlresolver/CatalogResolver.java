package org.xmlresolver;

import com.bumptech.glide.load.model.DataUrlLoader;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.gon;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Stack;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.mortbay.util.URIUtil;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlresolver.cache.CacheEntry;
import org.xmlresolver.cache.ResourceCache;
import org.xmlresolver.logging.AbstractLogger;
import org.xmlresolver.logging.ResolverLogger;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class CatalogResolver implements ResourceResolver {

    /* renamed from: a */
    public final ResolverLogger f116079a;

    /* renamed from: b */
    public XMLResolverConfiguration f116080b;

    /* renamed from: c */
    public ResourceCache f116081c;

    /* renamed from: org.xmlresolver.CatalogResolver$a */
    /* loaded from: classes16.dex */
    public static class C20486a extends DefaultHandler {

        /* renamed from: e */
        public final String f116082e;

        /* renamed from: f */
        public final String f116083f;

        /* renamed from: g */
        public URI f116084g = null;

        /* renamed from: h */
        public final Stack<URI> f116085h;

        public C20486a(URI uri, String str, String str2) {
            Stack<URI> stack = new Stack<>();
            this.f116085h = stack;
            this.f116082e = str;
            this.f116083f = str2;
            stack.push(uri);
        }

        /* renamed from: a */
        public URI m71972a() {
            return this.f116084g;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            this.f116085h.pop();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            if ("http://www.w3.org/1999/xhtml".equals(str) && attributes.getValue("", gon.f71271X) != null) {
                Stack<URI> stack = this.f116085h;
                stack.push(stack.peek().resolve(attributes.getValue("", gon.f71271X)));
            } else if (attributes.getValue("http://www.w3.org/XML/1998/namespace", gon.f71271X) != null) {
                Stack<URI> stack2 = this.f116085h;
                stack2.push(stack2.peek().resolve(attributes.getValue("http://www.w3.org/XML/1998/namespace", gon.f71271X)));
            } else {
                Stack<URI> stack3 = this.f116085h;
                stack3.push(stack3.peek());
            }
            if (this.f116084g == null && ResolverConstants.RDDL_NS.equals(str) && "resource".equals(str2)) {
                String value = attributes.getValue("http://www.w3.org/1999/xlink", "role");
                String value2 = attributes.getValue("http://www.w3.org/1999/xlink", "arcrole");
                String value3 = attributes.getValue("http://www.w3.org/1999/xlink", "href");
                if (this.f116082e.equals(value) && this.f116083f.equals(value2) && value3 != null) {
                    this.f116084g = this.f116085h.peek().resolve(value3);
                }
            }
        }
    }

    public CatalogResolver() {
        this(new XMLResolverConfiguration());
    }

    /* renamed from: a */
    public final URI m71967a(URI uri, String str, String str2, String str3) {
        try {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            newInstance.setValidating(false);
            newInstance.setXIncludeAware(false);
            URLConnection openConnection = uri.toURL().openConnection();
            if (str3 == null) {
                str3 = openConnection.getContentType();
            }
            if (str3 == null || !(str3.startsWith("text/html") || str3.startsWith("application/html+xml"))) {
                return null;
            }
            InputSource inputSource = new InputSource(openConnection.getInputStream());
            C20486a c20486a = new C20486a(openConnection.getURL().toURI(), str, str2);
            newInstance.newSAXParser().parse(inputSource, c20486a);
            return c20486a.m71972a();
        } catch (IOException | IllegalArgumentException | URISyntaxException | ParserConfigurationException | SAXException e) {
            this.f116079a.log("error", "RDDL parse failed: %s: %s", uri, e.getMessage());
            return null;
        }
    }

    /* renamed from: b */
    public final boolean m71968b(String str, String str2) {
        if (str != null && !"".equals(str.trim())) {
            if ("all".equals(str.trim())) {
                return false;
            }
            String lowerCase = str2.toLowerCase();
            boolean z = false;
            boolean z2 = false;
            for (String str3 : str.split(",")) {
                String lowerCase2 = str3.trim().toLowerCase();
                if ("all".equals(lowerCase2)) {
                    return false;
                }
                if (!lowerCase2.endsWith(":")) {
                    lowerCase2 = lowerCase2 + ":";
                }
                z = z || URIUtil.HTTP_COLON.equals(lowerCase2);
                z2 = z2 || URIUtil.HTTPS_COLON.equals(lowerCase2);
                if (lowerCase.startsWith(lowerCase2)) {
                    return false;
                }
            }
            if (((Boolean) this.f116080b.getFeature(ResolverFeature.MERGE_HTTPS)).booleanValue()) {
                if (z && !z2 && lowerCase.startsWith(URIUtil.HTTPS_COLON)) {
                    return false;
                }
                if (z2 && !z && lowerCase.startsWith(URIUtil.HTTP_COLON)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: c */
    public final ResolvedResource m71969c(String str, String str2) {
        if (str2 == null) {
            this.f116079a.log(AbstractLogger.REQUEST, "resolveDoctype: %s", str);
        } else {
            this.f116079a.log(AbstractLogger.REQUEST, "resolveDoctype: %s (%s)", str, str2);
            try {
                if (new URI(str2).isAbsolute() && m71968b((String) this.f116080b.getFeature(ResolverFeature.ACCESS_EXTERNAL_ENTITY), str2)) {
                    this.f116079a.log(AbstractLogger.REQUEST, "resolveEntity (access denied): null", new Object[0]);
                    return null;
                }
            } catch (URISyntaxException unused) {
            }
        }
        URI lookupDoctype = ((CatalogManager) this.f116080b.getFeature(ResolverFeature.CATALOG_MANAGER)).lookupDoctype(str, null, null);
        if (lookupDoctype == null) {
            this.f116079a.log(AbstractLogger.RESPONSE, "resolveDoctype: null", new Object[0]);
            return null;
        }
        this.f116079a.log(AbstractLogger.RESPONSE, "resolveDoctype: %s", lookupDoctype);
        return m71970d(null, lookupDoctype, this.f116081c.cachedSystem(lookupDoctype, null));
    }

    /* renamed from: d */
    public final ResolvedResourceImpl m71970d(String str, URI uri, CacheEntry cacheEntry) {
        boolean booleanValue = ((Boolean) this.f116080b.getFeature(ResolverFeature.THROW_URI_EXCEPTIONS)).booleanValue();
        try {
            if (cacheEntry == null) {
                return m71971e(URIUtils.newURI(str), uri);
            }
            return new ResolvedResourceImpl(uri, cacheEntry.file.toURI(), new FileInputStream(cacheEntry.file), cacheEntry.contentType());
        } catch (IOException | URISyntaxException e) {
            this.f116079a.log("error", "Resolution failed: %s: %s", uri, e.getMessage());
            if (booleanValue) {
                throw new IllegalArgumentException(e);
            }
            return null;
        } catch (IllegalArgumentException e2) {
            this.f116079a.log("error", "Resolution failed: %s: %s", uri, e2.getMessage());
            if (booleanValue) {
                throw e2;
            }
            return null;
        }
    }

    /* renamed from: e */
    public final ResolvedResourceImpl m71971e(URI uri, URI uri2) throws IOException, URISyntaxException {
        String str;
        ByteArrayInputStream byteArrayInputStream;
        String str2;
        if (!((Boolean) this.f116080b.getFeature(ResolverFeature.MASK_JAR_URIS)).booleanValue() || (!ArchiveStreamFactory.JAR.equals(uri2.getScheme()) && !"classpath".equals(uri2.getScheme()))) {
            uri = uri2;
        }
        if (!"data".equals(uri2.getScheme())) {
            if (!"classpath".equals(uri2.getScheme())) {
                URLConnection openConnection = uri2.toURL().openConnection();
                return new ResolvedResourceImpl(uri, uri2, openConnection.getInputStream(), openConnection.getContentType());
            }
            String schemeSpecificPart = uri2.getSchemeSpecificPart();
            if (schemeSpecificPart.startsWith("/")) {
                schemeSpecificPart = schemeSpecificPart.substring(1);
            }
            URL resource = ((ClassLoader) this.f116080b.getFeature(ResolverFeature.CLASSLOADER)).getResource(schemeSpecificPart);
            if (resource != null) {
                return new ResolvedResourceImpl(uri, uri2, resource.openStream(), null);
            }
            throw new IOException("Not found: " + uri2);
        }
        String substring = uri2.toString().substring(5);
        int indexOf = substring.indexOf(",");
        if (indexOf < 0) {
            throw new URISyntaxException(uri2.toString(), "Comma separator missing");
        }
        String substring2 = substring.substring(0, indexOf);
        String substring3 = substring.substring(indexOf + 1);
        if (substring2.endsWith(DataUrlLoader.f14861c)) {
            byteArrayInputStream = new ByteArrayInputStream(Base64.getDecoder().decode(substring3));
            str2 = substring2.substring(0, substring2.length() - 7);
        } else {
            int indexOf2 = substring2.indexOf(";charset=");
            if (indexOf2 > 0) {
                str = substring2.substring(indexOf2 + 9);
                int indexOf3 = str.indexOf(AndroidTreeView.f47214k);
                if (indexOf3 >= 0) {
                    str = str.substring(0, indexOf3);
                }
            } else {
                str = "UTF-8";
            }
            byteArrayInputStream = new ByteArrayInputStream(URLDecoder.decode(substring3, str).getBytes(StandardCharsets.UTF_8));
            str2 = "".equals(substring2) ? null : substring2;
        }
        return new ResolvedResourceImpl(uri, uri2, byteArrayInputStream, str2);
    }

    @Override // org.xmlresolver.ResourceResolver
    public ResolvedResource resolveEntity(String str, String str2, String str3, String str4) {
        URI uri;
        String str5;
        ResolvedResourceImpl resolvedResourceImpl;
        String str6 = str3;
        String str7 = str4;
        if (str == null && str2 == null && str6 == null && str7 == null) {
            this.f116079a.log(AbstractLogger.REQUEST, "resolveEntity: null", new Object[0]);
            return null;
        }
        if (str6 != null) {
            if (URIUtils.isWindows() && ((Boolean) this.f116080b.getFeature(ResolverFeature.FIX_WINDOWS_SYSTEM_IDENTIFIERS)).booleanValue()) {
                str6 = str6.replace("\\", "/");
                if (str7 != null) {
                    str7 = str7.replace("\\", "/");
                }
            }
            try {
                if (new URI(str6).isAbsolute() && m71968b((String) this.f116080b.getFeature(ResolverFeature.ACCESS_EXTERNAL_ENTITY), str6)) {
                    this.f116079a.log(AbstractLogger.REQUEST, "resolveEntity (access denied): null", new Object[0]);
                    return null;
                }
            } catch (URISyntaxException unused) {
            }
        }
        if (str != null && str2 == null && str6 == null) {
            this.f116079a.log(AbstractLogger.REQUEST, "resolveEntity: name: %s (%s)", str, str7);
            return m71969c(str, str7);
        }
        if (str != null) {
            this.f116079a.log(AbstractLogger.REQUEST, "resolveEntity: %s %s (baseURI: %s, publicId: %s)", str, str6, str7, str2);
        } else {
            this.f116079a.log(AbstractLogger.REQUEST, "resolveEntity: %s (baseURI: %s, publicId: %s)", str6, str7, str2);
        }
        CatalogManager catalogManager = (CatalogManager) this.f116080b.getFeature(ResolverFeature.CATALOG_MANAGER);
        URI lookupEntity = catalogManager.lookupEntity(str, str6, str2);
        if (lookupEntity == null && str6 != null && ((Boolean) this.f116080b.getFeature(ResolverFeature.URI_FOR_SYSTEM)).booleanValue()) {
            lookupEntity = catalogManager.lookupURI(str6);
        }
        if (lookupEntity != null) {
            resolvedResourceImpl = m71970d(str6, lookupEntity, this.f116081c.cachedSystem(lookupEntity, str2));
            str5 = "resolveEntity: null";
            uri = null;
        } else {
            boolean booleanValue = ((Boolean) this.f116080b.getFeature(ResolverFeature.THROW_URI_EXCEPTIONS)).booleanValue();
            if (str6 != null) {
                try {
                    uri = new URI(str6);
                } catch (IllegalArgumentException e) {
                    this.f116079a.log("error", "URI exception: %s (base: %s)", str6, str7);
                    if (booleanValue) {
                        throw e;
                    }
                    this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
                    return null;
                } catch (URISyntaxException e2) {
                    this.f116079a.log("error", "URI exception: %s (base: %s)", str6, str7);
                    if (booleanValue) {
                        throw new IllegalArgumentException(e2);
                    }
                    this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
                    return null;
                }
            } else {
                uri = null;
            }
            if (str7 != null) {
                uri = new URI(str7);
                if (str6 != null) {
                    uri = uri.resolve(str6);
                }
                str5 = "resolveEntity: null";
                if (m71968b((String) this.f116080b.getFeature(ResolverFeature.ACCESS_EXTERNAL_ENTITY), uri.toString())) {
                    this.f116079a.log(AbstractLogger.REQUEST, "resolveEntity (access denied): null", new Object[0]);
                    return null;
                }
                URI lookupEntity2 = catalogManager.lookupEntity(str, uri.toString(), str2);
                if (lookupEntity2 == null && ((Boolean) this.f116080b.getFeature(ResolverFeature.URI_FOR_SYSTEM)).booleanValue()) {
                    lookupEntity2 = catalogManager.lookupURI(uri.toString());
                }
                lookupEntity = lookupEntity2;
                if (lookupEntity != null) {
                    resolvedResourceImpl = m71970d(uri.toString(), lookupEntity, this.f116081c.cachedSystem(lookupEntity, str2));
                }
            } else {
                str5 = "resolveEntity: null";
            }
            resolvedResourceImpl = null;
        }
        if (resolvedResourceImpl != null) {
            this.f116079a.log(AbstractLogger.RESPONSE, "resolveEntity: %s", lookupEntity);
            return resolvedResourceImpl;
        }
        if (uri == null) {
            this.f116079a.log(AbstractLogger.RESPONSE, str5, new Object[0]);
            return null;
        }
        String str8 = str5;
        boolean booleanValue2 = ((Boolean) this.f116080b.getFeature(ResolverFeature.THROW_URI_EXCEPTIONS)).booleanValue();
        try {
        } catch (IOException e3) {
            this.f116079a.log("error", "I/O exception: %s", uri);
            if (booleanValue2) {
                throw new IllegalArgumentException(e3);
            }
        } catch (IllegalArgumentException e4) {
            this.f116079a.log("error", "URI argument exception: %s", uri);
            if (booleanValue2) {
                throw e4;
            }
        } catch (URISyntaxException e5) {
            this.f116079a.log("error", "URI syntax exception: %s", uri);
            if (booleanValue2) {
                throw new IllegalArgumentException(e5);
            }
        }
        if ("data".equals(uri.getScheme())) {
            return m71971e(uri, uri);
        }
        if (this.f116081c.cacheURI(uri.toString())) {
            this.f116079a.log(AbstractLogger.RESPONSE, "resolveEntity: cached %s", uri);
            return m71970d(uri.toString(), uri, this.f116081c.cachedSystem(uri, str2));
        }
        this.f116079a.log(AbstractLogger.RESPONSE, str8, new Object[0]);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0060 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00a5  */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.net.URI] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // org.xmlresolver.ResourceResolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.xmlresolver.ResolvedResource resolveNamespace(java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xmlresolver.CatalogResolver.resolveNamespace(java.lang.String, java.lang.String, java.lang.String, java.lang.String):org.xmlresolver.ResolvedResource");
    }

    @Override // org.xmlresolver.ResourceResolver
    public ResolvedResource resolveURI(String str, String str2) {
        this.f116079a.log(AbstractLogger.REQUEST, "resolveURI: %s (base URI: %s)", str, str2);
        boolean booleanValue = ((Boolean) this.f116080b.getFeature(ResolverFeature.THROW_URI_EXCEPTIONS)).booleanValue();
        if (str == null || "".equals(str)) {
            if (str2 == null || "".equals(str2)) {
                this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
                return null;
            }
            str = str2;
            str2 = null;
        }
        try {
            if (new URI(str).isAbsolute() && m71968b((String) this.f116080b.getFeature(ResolverFeature.ACCESS_EXTERNAL_DOCUMENT), str)) {
                this.f116079a.log(AbstractLogger.REQUEST, "resolveURI (access denied): null", new Object[0]);
                return null;
            }
        } catch (URISyntaxException unused) {
        }
        CatalogManager catalogManager = (CatalogManager) this.f116080b.getFeature(ResolverFeature.CATALOG_MANAGER);
        URI lookupURI = catalogManager.lookupURI(str);
        if (lookupURI != null) {
            this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: %s", lookupURI);
            return m71970d(str, lookupURI, this.f116081c.cachedUri(lookupURI));
        }
        if (str2 != null) {
            try {
                String uri = new URI(str2).resolve(str).toString();
                if (!str.equals(uri)) {
                    if (m71968b((String) this.f116080b.getFeature(ResolverFeature.ACCESS_EXTERNAL_DOCUMENT), uri)) {
                        this.f116079a.log(AbstractLogger.REQUEST, "resolveURI (access denied): null", new Object[0]);
                        return null;
                    }
                    URI lookupURI2 = catalogManager.lookupURI(uri);
                    if (lookupURI2 != null) {
                        this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: %s", lookupURI2);
                        return m71970d(uri, lookupURI2, this.f116081c.cachedUri(lookupURI2));
                    }
                }
                str = uri;
            } catch (IllegalArgumentException e) {
                this.f116079a.log("error", "URI argument exception: %s (base URI: %s)", str, str2);
                if (booleanValue) {
                    throw e;
                }
                this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
                return null;
            } catch (URISyntaxException e2) {
                this.f116079a.log("error", "URI syntax exception: %s (base URI: %s)", str, str2);
                if (booleanValue) {
                    throw new IllegalArgumentException(e2);
                }
                this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
                return null;
            }
        }
        try {
            if (str.startsWith("data:")) {
                URI uri2 = new URI(str);
                return m71971e(uri2, uri2);
            }
            if (!this.f116081c.cacheURI(str)) {
                this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
                return null;
            }
            URI uri3 = new URI(str);
            this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: cached %s", str);
            return m71970d(str, uri3, this.f116081c.cachedUri(uri3));
        } catch (IOException e3) {
            this.f116079a.log("error", "I/O exception: %s", str);
            if (booleanValue) {
                throw new IllegalArgumentException(e3);
            }
            this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
            return null;
        } catch (IllegalArgumentException e4) {
            this.f116079a.log("error", "URI argument exception: %s", str);
            if (booleanValue) {
                throw e4;
            }
            this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
            return null;
        } catch (URISyntaxException e5) {
            this.f116079a.log("error", "URI syntax exception: %s", str);
            if (booleanValue) {
                throw new IllegalArgumentException(e5);
            }
            this.f116079a.log(AbstractLogger.RESPONSE, "resolveURI: null", new Object[0]);
            return null;
        }
    }

    public CatalogResolver(XMLResolverConfiguration xMLResolverConfiguration) {
        this.f116081c = null;
        this.f116080b = xMLResolverConfiguration;
        this.f116081c = (ResourceCache) xMLResolverConfiguration.getFeature(ResolverFeature.CACHE);
        this.f116079a = (ResolverLogger) xMLResolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    @Override // org.xmlresolver.ResourceResolver
    public XMLResolverConfiguration getConfiguration() {
        return this.f116080b;
    }
}
