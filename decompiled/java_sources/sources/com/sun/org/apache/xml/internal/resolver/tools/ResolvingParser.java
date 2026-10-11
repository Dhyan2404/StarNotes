package com.sun.org.apache.xml.internal.resolver.tools;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogManager;
import com.sun.org.apache.xml.internal.resolver.helpers.FileURL;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.AttributeList;
import org.xml.sax.DTDHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ResolvingParser implements Parser, DTDHandler, DocumentHandler, EntityResolver {
    public static boolean namespaceAware = true;
    public static boolean suppressExplanation;
    public static boolean validating;
    private boolean allowXMLCatalogPI;
    private URL baseURL;
    private CatalogManager catalogManager;
    private CatalogResolver catalogResolver;
    private DocumentHandler documentHandler;
    private DTDHandler dtdHandler;
    private boolean oasisXMLCatalogPI;
    private Parser parser;
    private CatalogResolver piCatalogResolver;
    private SAXParser saxParser;

    public ResolvingParser() {
        this.saxParser = null;
        this.parser = null;
        this.documentHandler = null;
        this.dtdHandler = null;
        this.catalogManager = CatalogManager.getStaticManager();
        this.catalogResolver = null;
        this.piCatalogResolver = null;
        this.allowXMLCatalogPI = false;
        this.oasisXMLCatalogPI = false;
        this.baseURL = null;
        initParser();
    }

    private void explain(String str) {
        if (suppressExplanation) {
            return;
        }
        System.out.println("Parser probably encountered bad URI in " + str);
        System.out.println("For example, replace '/some/uri' with 'file:/some/uri'.");
    }

    private void initParser() {
        this.catalogResolver = new CatalogResolver(this.catalogManager);
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        newInstance.setNamespaceAware(namespaceAware);
        newInstance.setValidating(validating);
        try {
            SAXParser newSAXParser = newInstance.newSAXParser();
            this.saxParser = newSAXParser;
            this.parser = newSAXParser.getParser();
            this.documentHandler = null;
            this.dtdHandler = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setupParse(String str) {
        URL url;
        this.allowXMLCatalogPI = true;
        this.parser.setEntityResolver(this);
        this.parser.setDocumentHandler(this);
        this.parser.setDTDHandler(this);
        try {
            url = FileURL.makeURL("basename");
        } catch (MalformedURLException unused) {
            url = null;
        }
        try {
            this.baseURL = new URL(str);
        } catch (MalformedURLException unused2) {
            if (url == null) {
                this.baseURL = null;
                return;
            }
            try {
                this.baseURL = new URL(url, str);
            } catch (MalformedURLException unused3) {
                this.baseURL = null;
            }
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        DocumentHandler documentHandler = this.documentHandler;
        if (documentHandler != null) {
            documentHandler.characters(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void endDocument() throws SAXException {
        DocumentHandler documentHandler = this.documentHandler;
        if (documentHandler != null) {
            documentHandler.endDocument();
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        DocumentHandler documentHandler = this.documentHandler;
        if (documentHandler != null) {
            documentHandler.endElement(str);
        }
    }

    public Catalog getCatalog() {
        return this.catalogResolver.getCatalog();
    }

    @Override // org.xml.sax.DocumentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        DocumentHandler documentHandler = this.documentHandler;
        if (documentHandler != null) {
            documentHandler.ignorableWhitespace(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
        this.allowXMLCatalogPI = false;
        DTDHandler dTDHandler = this.dtdHandler;
        if (dTDHandler != null) {
            dTDHandler.notationDecl(str, str2, str3);
        }
    }

    @Override // org.xml.sax.Parser, org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws IOException, SAXException {
        setupParse(inputSource.getSystemId());
        try {
            this.parser.parse(inputSource);
        } catch (InternalError e) {
            explain(inputSource.getSystemId());
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d1  */
    @Override // org.xml.sax.DocumentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processingInstruction(java.lang.String r7, java.lang.String r8) throws org.xml.sax.SAXException {
        /*
            r6 = this;
            java.lang.String r0 = "oasis-xml-catalog"
            boolean r1 = r7.equals(r0)
            if (r1 == 0) goto Lea
            java.lang.String r7 = "catalog="
            int r7 = r8.indexOf(r7)
            r1 = 1
            if (r7 < 0) goto L42
            int r7 = r7 + 8
            java.lang.String r7 = r8.substring(r7)
            int r2 = r7.length()
            if (r2 <= r1) goto L42
            r2 = 0
            java.lang.String r3 = r7.substring(r2, r1)
            java.lang.String r7 = r7.substring(r1)
            int r3 = r7.indexOf(r3)
            if (r3 < 0) goto L42
            java.lang.String r7 = r7.substring(r2, r3)
            java.net.URL r2 = r6.baseURL     // Catch: java.net.MalformedURLException -> L42
            if (r2 == 0) goto L3c
            java.net.URL r2 = new java.net.URL     // Catch: java.net.MalformedURLException -> L42
            java.net.URL r3 = r6.baseURL     // Catch: java.net.MalformedURLException -> L42
            r2.<init>(r3, r7)     // Catch: java.net.MalformedURLException -> L42
            goto L43
        L3c:
            java.net.URL r2 = new java.net.URL     // Catch: java.net.MalformedURLException -> L42
            r2.<init>(r7)     // Catch: java.net.MalformedURLException -> L42
            goto L43
        L42:
            r2 = 0
        L43:
            boolean r7 = r6.allowXMLCatalogPI
            r3 = 3
            if (r7 == 0) goto Ld1
            com.sun.org.apache.xml.internal.resolver.CatalogManager r7 = r6.catalogManager
            boolean r7 = r7.getAllowOasisXMLCatalogPI()
            r4 = 4
            if (r7 == 0) goto Lb8
            com.sun.org.apache.xml.internal.resolver.CatalogManager r7 = r6.catalogManager
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r7 = r7.debug
            java.lang.String r5 = "oasis-xml-catalog PI"
            r7.message(r4, r5, r8)
            if (r2 == 0) goto L9f
            com.sun.org.apache.xml.internal.resolver.CatalogManager r7 = r6.catalogManager     // Catch: java.lang.Exception -> L82
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r7 = r7.debug     // Catch: java.lang.Exception -> L82
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Exception -> L82
            r7.message(r4, r0, r8)     // Catch: java.lang.Exception -> L82
            r6.oasisXMLCatalogPI = r1     // Catch: java.lang.Exception -> L82
            com.sun.org.apache.xml.internal.resolver.tools.CatalogResolver r7 = r6.piCatalogResolver     // Catch: java.lang.Exception -> L82
            if (r7 != 0) goto L74
            com.sun.org.apache.xml.internal.resolver.tools.CatalogResolver r7 = new com.sun.org.apache.xml.internal.resolver.tools.CatalogResolver     // Catch: java.lang.Exception -> L82
            r7.<init>(r1)     // Catch: java.lang.Exception -> L82
            r6.piCatalogResolver = r7     // Catch: java.lang.Exception -> L82
        L74:
            com.sun.org.apache.xml.internal.resolver.tools.CatalogResolver r7 = r6.piCatalogResolver     // Catch: java.lang.Exception -> L82
            com.sun.org.apache.xml.internal.resolver.Catalog r7 = r7.getCatalog()     // Catch: java.lang.Exception -> L82
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Exception -> L82
            r7.parseCatalog(r8)     // Catch: java.lang.Exception -> L82
            goto Lf1
        L82:
            com.sun.org.apache.xml.internal.resolver.CatalogManager r6 = r6.catalogManager
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r6 = r6.debug
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Exception parsing oasis-xml-catalog: "
            r7.append(r8)
            java.lang.String r8 = r2.toString()
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r6.message(r3, r7)
            goto Lf1
        L9f:
            com.sun.org.apache.xml.internal.resolver.CatalogManager r6 = r6.catalogManager
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r6 = r6.debug
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "PI oasis-xml-catalog unparseable: "
            r7.append(r0)
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r6.message(r3, r7)
            goto Lf1
        Lb8:
            com.sun.org.apache.xml.internal.resolver.CatalogManager r6 = r6.catalogManager
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r6 = r6.debug
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "PI oasis-xml-catalog ignored: "
            r7.append(r0)
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r6.message(r4, r7)
            goto Lf1
        Ld1:
            com.sun.org.apache.xml.internal.resolver.CatalogManager r6 = r6.catalogManager
            com.sun.org.apache.xml.internal.resolver.helpers.Debug r6 = r6.debug
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "PI oasis-xml-catalog occurred in an invalid place: "
            r7.append(r0)
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r6.message(r3, r7)
            goto Lf1
        Lea:
            org.xml.sax.DocumentHandler r6 = r6.documentHandler
            if (r6 == 0) goto Lf1
            r6.processingInstruction(r7, r8)
        Lf1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.resolver.tools.ResolvingParser.processingInstruction(java.lang.String, java.lang.String):void");
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) {
        CatalogResolver catalogResolver;
        this.allowXMLCatalogPI = false;
        String resolvedEntity = this.catalogResolver.getResolvedEntity(str, str2);
        if (resolvedEntity == null && (catalogResolver = this.piCatalogResolver) != null) {
            resolvedEntity = catalogResolver.getResolvedEntity(str, str2);
        }
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

    @Override // org.xml.sax.Parser, org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler dTDHandler) {
        this.dtdHandler = dTDHandler;
    }

    @Override // org.xml.sax.Parser
    public void setDocumentHandler(DocumentHandler documentHandler) {
        this.documentHandler = documentHandler;
    }

    @Override // org.xml.sax.DocumentHandler
    public void setDocumentLocator(Locator locator) {
        DocumentHandler documentHandler = this.documentHandler;
        if (documentHandler != null) {
            documentHandler.setDocumentLocator(locator);
        }
    }

    @Override // org.xml.sax.Parser, org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) {
    }

    @Override // org.xml.sax.Parser, org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.parser.setErrorHandler(errorHandler);
    }

    @Override // org.xml.sax.Parser
    public void setLocale(Locale locale) throws SAXException {
        this.parser.setLocale(locale);
    }

    @Override // org.xml.sax.DocumentHandler
    public void startDocument() throws SAXException {
        DocumentHandler documentHandler = this.documentHandler;
        if (documentHandler != null) {
            documentHandler.startDocument();
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void startElement(String str, AttributeList attributeList) throws SAXException {
        this.allowXMLCatalogPI = false;
        DocumentHandler documentHandler = this.documentHandler;
        if (documentHandler != null) {
            documentHandler.startElement(str, attributeList);
        }
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        this.allowXMLCatalogPI = false;
        DTDHandler dTDHandler = this.dtdHandler;
        if (dTDHandler != null) {
            dTDHandler.unparsedEntityDecl(str, str2, str3, str4);
        }
    }

    @Override // org.xml.sax.Parser, org.xml.sax.XMLReader
    public void parse(String str) throws IOException, SAXException {
        setupParse(str);
        try {
            this.parser.parse(str);
        } catch (InternalError e) {
            explain(str);
            throw e;
        }
    }

    public ResolvingParser(CatalogManager catalogManager) {
        this.saxParser = null;
        this.parser = null;
        this.documentHandler = null;
        this.dtdHandler = null;
        CatalogManager.getStaticManager();
        this.catalogResolver = null;
        this.piCatalogResolver = null;
        this.allowXMLCatalogPI = false;
        this.oasisXMLCatalogPI = false;
        this.baseURL = null;
        this.catalogManager = catalogManager;
        initParser();
    }
}
