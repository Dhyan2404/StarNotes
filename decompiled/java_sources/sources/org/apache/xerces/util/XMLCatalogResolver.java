package org.apache.xerces.util;

import java.io.IOException;
import org.apache.xerces.dom.DOMInputImpl;
import org.apache.xerces.jaxp.SAXParserFactoryImpl;
import org.apache.xerces.util.URI;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xml.resolver.Catalog;
import org.apache.xml.resolver.CatalogManager;
import org.apache.xml.resolver.readers.SAXCatalogReader;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.EntityResolver2;

/* loaded from: classes13.dex */
public class XMLCatalogResolver implements XMLEntityResolver, EntityResolver2, LSResourceResolver {

    /* renamed from: e */
    public CatalogManager f113526e;

    /* renamed from: f */
    public Catalog f113527f;

    /* renamed from: g */
    public String[] f113528g;

    /* renamed from: h */
    public boolean f113529h;

    /* renamed from: i */
    public boolean f113530i;

    /* renamed from: j */
    public boolean f113531j;

    public XMLCatalogResolver() {
        this(null, true);
    }

    /* renamed from: a */
    public final void m70600a(Catalog catalog) {
        SAXParserFactoryImpl sAXParserFactoryImpl = new SAXParserFactoryImpl();
        sAXParserFactoryImpl.setNamespaceAware(true);
        sAXParserFactoryImpl.setValidating(false);
        SAXCatalogReader sAXCatalogReader = new SAXCatalogReader(sAXParserFactoryImpl);
        sAXCatalogReader.setCatalogParser("urn:oasis:names:tc:entity:xmlns:xml:catalog", "catalog", "org.apache.xml.resolver.readers.OASISXMLCatalogReader");
        catalog.addReader("application/xml", sAXCatalogReader);
    }

    /* renamed from: b */
    public final void m70601b(String[] strArr, boolean z) {
        this.f113528g = strArr != null ? (String[]) strArr.clone() : null;
        this.f113530i = z;
        CatalogManager catalogManager = new CatalogManager();
        this.f113526e = catalogManager;
        catalogManager.setAllowOasisXMLCatalogPI(false);
        this.f113526e.setCatalogClassName("org.apache.xml.resolver.Catalog");
        this.f113526e.setCatalogFiles("");
        this.f113526e.setIgnoreMissingProperties(true);
        this.f113526e.setPreferPublic(this.f113530i);
        this.f113526e.setRelativeCatalogs(false);
        this.f113526e.setUseStaticCatalog(false);
        this.f113526e.setVerbosity(0);
    }

    /* renamed from: c */
    public final void m70602c() throws IOException {
        if (this.f113528g == null) {
            this.f113527f = null;
            return;
        }
        Catalog catalog = new Catalog(this.f113526e);
        this.f113527f = catalog;
        m70600a(catalog);
        int i = 0;
        while (true) {
            String[] strArr = this.f113528g;
            if (i >= strArr.length) {
                return;
            }
            String str = strArr[i];
            if (str != null && str.length() > 0) {
                this.f113527f.parseCatalog(str);
            }
            i++;
        }
    }

    public final synchronized void clear() {
        this.f113527f = null;
    }

    public final synchronized String[] getCatalogList() {
        String[] strArr;
        strArr = this.f113528g;
        return strArr != null ? (String[]) strArr.clone() : null;
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource getExternalSubset(String str, String str2) throws SAXException, IOException {
        return null;
    }

    public final boolean getPreferPublic() {
        return this.f113530i;
    }

    public final boolean getUseLiteralSystemId() {
        return this.f113531j;
    }

    @Override // org.apache.xerces.xni.parser.XMLEntityResolver
    public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) throws XNIException, IOException {
        String resolveIdentifier = resolveIdentifier(xMLResourceIdentifier);
        if (resolveIdentifier != null) {
            return new XMLInputSource(xMLResourceIdentifier.getPublicId(), resolveIdentifier, xMLResourceIdentifier.getBaseSystemId());
        }
        return null;
    }

    public String resolveIdentifier(XMLResourceIdentifier xMLResourceIdentifier) throws IOException, XNIException {
        String namespace = xMLResourceIdentifier.getNamespace();
        String resolveURI = namespace != null ? resolveURI(namespace) : null;
        if (resolveURI != null) {
            return resolveURI;
        }
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = getUseLiteralSystemId() ? xMLResourceIdentifier.getLiteralSystemId() : xMLResourceIdentifier.getExpandedSystemId();
        return (publicId == null || literalSystemId == null) ? literalSystemId != null ? resolveSystem(literalSystemId) : resolveURI : resolvePublic(publicId, literalSystemId);
    }

    public final synchronized String resolvePublic(String str, String str2) throws IOException {
        Catalog catalog;
        if (this.f113529h) {
            m70602c();
            this.f113529h = false;
        }
        catalog = this.f113527f;
        return catalog != null ? catalog.resolvePublic(str, str2) : null;
    }

    @Override // org.w3c.dom.ls.LSResourceResolver
    public LSInput resolveResource(String str, String str2, String str3, String str4, String str5) {
        String str6;
        if (str2 != null) {
            try {
                str6 = resolveURI(str2);
            } catch (IOException unused) {
                str6 = null;
            }
        } else {
            str6 = null;
        }
        try {
            if (!getUseLiteralSystemId() && str5 != null) {
                try {
                    str4 = new URI(new URI(str5), str4).toString();
                } catch (URI.MalformedURIException unused2) {
                }
            }
            if (str6 == null) {
                if (str3 != null && str4 != null) {
                    str6 = resolvePublic(str3, str4);
                } else if (str4 != null) {
                    str6 = resolveSystem(str4);
                }
            }
        } catch (IOException unused3) {
        }
        if (str6 != null) {
            return new DOMInputImpl(str3, str6, str5);
        }
        return null;
    }

    public final synchronized String resolveSystem(String str) throws IOException {
        Catalog catalog;
        if (this.f113529h) {
            m70602c();
            this.f113529h = false;
        }
        catalog = this.f113527f;
        return catalog != null ? catalog.resolveSystem(str) : null;
    }

    public final synchronized String resolveURI(String str) throws IOException {
        Catalog catalog;
        if (this.f113529h) {
            m70602c();
            this.f113529h = false;
        }
        catalog = this.f113527f;
        return catalog != null ? catalog.resolveURI(str) : null;
    }

    public final synchronized void setCatalogList(String[] strArr) {
        this.f113529h = true;
        this.f113528g = strArr != null ? (String[]) strArr.clone() : null;
    }

    public final void setPreferPublic(boolean z) {
        this.f113530i = z;
        this.f113526e.setPreferPublic(z);
    }

    public final void setUseLiteralSystemId(boolean z) {
        this.f113531j = z;
    }

    public XMLCatalogResolver(String[] strArr) {
        this(strArr, true);
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        String resolveSystem;
        if (str == null || str2 == null) {
            resolveSystem = str2 != null ? resolveSystem(str2) : null;
        } else {
            resolveSystem = resolvePublic(str, str2);
        }
        if (resolveSystem == null) {
            return null;
        }
        InputSource inputSource = new InputSource(resolveSystem);
        inputSource.setPublicId(str);
        return inputSource;
    }

    public XMLCatalogResolver(String[] strArr, boolean z) {
        this.f113526e = null;
        this.f113527f = null;
        this.f113528g = null;
        this.f113529h = true;
        this.f113530i = true;
        this.f113531j = true;
        m70601b(strArr, z);
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource resolveEntity(String str, String str2, String str3, String str4) throws SAXException, IOException {
        if (!getUseLiteralSystemId() && str3 != null) {
            try {
                str4 = new URI(new URI(str3), str4).toString();
            } catch (URI.MalformedURIException unused) {
            }
        }
        String resolveSystem = (str2 == null || str4 == null) ? str4 != null ? resolveSystem(str4) : null : resolvePublic(str2, str4);
        if (resolveSystem == null) {
            return null;
        }
        InputSource inputSource = new InputSource(resolveSystem);
        inputSource.setPublicId(str2);
        return inputSource;
    }
}
