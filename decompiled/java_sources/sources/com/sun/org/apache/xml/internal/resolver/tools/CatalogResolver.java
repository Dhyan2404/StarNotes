package com.sun.org.apache.xml.internal.resolver.tools;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogManager;
import com.sun.org.apache.xml.internal.resolver.helpers.FileURL;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.SAXSource;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* loaded from: classes10.dex */
public class CatalogResolver implements EntityResolver, URIResolver {
    private Catalog catalog;
    private CatalogManager catalogManager;
    public boolean namespaceAware;
    public boolean validating;

    public CatalogResolver() {
        this.namespaceAware = true;
        this.validating = false;
        this.catalog = null;
        this.catalogManager = CatalogManager.getStaticManager();
        initializeCatalogs(false);
    }

    private void initializeCatalogs(boolean z) {
        this.catalog = this.catalogManager.getCatalog();
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

    private void setEntityResolver(SAXSource sAXSource) throws TransformerException {
        XMLReader xMLReader = sAXSource.getXMLReader();
        if (xMLReader == null) {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            try {
                xMLReader = newInstance.newSAXParser().getXMLReader();
            } catch (ParserConfigurationException e) {
                throw new TransformerException(e);
            } catch (SAXException e2) {
                throw new TransformerException(e2);
            }
        }
        xMLReader.setEntityResolver(this);
        sAXSource.setXMLReader(xMLReader);
    }

    public Catalog getCatalog() {
        return this.catalog;
    }

    public String getResolvedEntity(String str, String str2) {
        Catalog catalog = this.catalog;
        String str3 = null;
        if (catalog == null) {
            this.catalogManager.debug.message(1, "Catalog resolution attempted with null catalog; ignored");
            return null;
        }
        if (str2 != null) {
            try {
                str3 = catalog.resolveSystem(str2);
            } catch (MalformedURLException unused) {
                this.catalogManager.debug.message(1, "Malformed URL exception trying to resolve", str);
            } catch (IOException unused2) {
                this.catalogManager.debug.message(1, "I/O exception trying to resolve", str);
            }
        }
        if (str3 == null) {
            if (str != null) {
                try {
                    str3 = this.catalog.resolvePublic(str, str2);
                } catch (MalformedURLException unused3) {
                    this.catalogManager.debug.message(1, "Malformed URL exception trying to resolve", str);
                } catch (IOException unused4) {
                    this.catalogManager.debug.message(1, "I/O exception trying to resolve", str);
                }
            }
            if (str3 != null) {
                this.catalogManager.debug.message(2, "Resolved public", str, str3);
            }
        } else {
            this.catalogManager.debug.message(2, "Resolved system", str2, str3);
        }
        return str3;
    }

    @Override // javax.xml.transform.URIResolver
    public Source resolve(String str, String str2) throws TransformerException {
        String str3;
        String str4;
        String url;
        int indexOf = str.indexOf("#");
        if (indexOf >= 0) {
            str3 = str.substring(0, indexOf);
            str.substring(indexOf + 1);
        } else {
            str3 = str;
        }
        try {
            str4 = this.catalog.resolveURI(str);
        } catch (Exception unused) {
            str4 = null;
        }
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
        this.catalogManager.debug.message(2, "Resolved URI", str, str4);
        SAXSource sAXSource = new SAXSource();
        sAXSource.setInputSource(new InputSource(str4));
        setEntityResolver(sAXSource);
        return sAXSource;
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) {
        String resolvedEntity = getResolvedEntity(str, str2);
        if (resolvedEntity != null) {
            try {
                InputSource inputSource = new InputSource(resolvedEntity);
                inputSource.setPublicId(str);
                inputSource.setByteStream(new URL(resolvedEntity).openStream());
                return inputSource;
            } catch (Exception unused) {
                this.catalogManager.debug.message(1, "Failed to create InputSource", resolvedEntity);
            }
        }
        return null;
    }

    public CatalogResolver(boolean z) {
        this.namespaceAware = true;
        this.validating = false;
        this.catalog = null;
        this.catalogManager = CatalogManager.getStaticManager();
        initializeCatalogs(z);
    }

    public CatalogResolver(CatalogManager catalogManager) {
        this.namespaceAware = true;
        this.validating = false;
        this.catalog = null;
        CatalogManager.getStaticManager();
        this.catalogManager = catalogManager;
        initializeCatalogs(!catalogManager.getUseStaticCatalog());
    }
}
