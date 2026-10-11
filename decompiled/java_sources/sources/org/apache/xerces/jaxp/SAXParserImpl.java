package org.apache.xerces.jaxp;

import com.sunia.HTREnginev2.aun;
import com.sunia.HTREnginev2.i1f;
import com.sunia.HTREnginev2.sqi;
import com.sunia.HTREnginev2.v5m;
import java.io.IOException;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import javax.xml.parsers.SAXParser;
import javax.xml.validation.Schema;
import org.apache.xerces.impl.p117xs.XMLSchemaValidator;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.PSVIProvider;
import org.apache.xerces.util.SAXMessageFormatter;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.HandlerBase;
import org.xml.sax.InputSource;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes13.dex */
public class SAXParserImpl extends SAXParser implements JAXPConstants, PSVIProvider {

    /* renamed from: n */
    public static final String f113305n = "http://xml.org/sax/features/namespaces";

    /* renamed from: o */
    public static final String f113306o = "http://xml.org/sax/features/namespace-prefixes";

    /* renamed from: p */
    public static final String f113307p = "http://xml.org/sax/features/validation";

    /* renamed from: q */
    public static final String f113308q = "http://apache.org/xml/features/validation/schema";

    /* renamed from: r */
    public static final String f113309r = "http://apache.org/xml/features/xinclude";

    /* renamed from: s */
    public static final String f113310s = "http://apache.org/xml/properties/security-manager";

    /* renamed from: e */
    public final JAXPSAXParser f113311e;

    /* renamed from: f */
    public String f113312f;

    /* renamed from: g */
    public final Schema f113313g;

    /* renamed from: h */
    public final XMLComponent f113314h;

    /* renamed from: i */
    public final XMLComponentManager f113315i;

    /* renamed from: j */
    public final ValidationManager f113316j;

    /* renamed from: k */
    public final aun f113317k;

    /* renamed from: l */
    public final ErrorHandler f113318l;

    /* renamed from: m */
    public final EntityResolver f113319m;

    /* loaded from: classes13.dex */
    public static class JAXPSAXParser extends org.apache.xerces.parsers.SAXParser {

        /* renamed from: l */
        public final HashMap f113320l;

        /* renamed from: m */
        public final HashMap f113321m;

        /* renamed from: n */
        public final SAXParserImpl f113322n;

        public JAXPSAXParser() {
            this(null);
        }

        @Override // org.apache.xerces.parsers.AbstractSAXParser, org.xml.sax.XMLReader
        public synchronized boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (str == null) {
                throw new NullPointerException();
            }
            if (!str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
                return super.getFeature(str);
            }
            try {
                return super.getProperty("http://apache.org/xml/properties/security-manager") != null;
            } catch (SAXException unused) {
                return false;
            }
        }

        @Override // org.apache.xerces.parsers.AbstractSAXParser, org.xml.sax.XMLReader
        public synchronized Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (str == null) {
                throw new NullPointerException();
            }
            if (this.f113322n == null || !"http://java.sun.com/xml/jaxp/properties/schemaLanguage".equals(str)) {
                return super.getProperty(str);
            }
            return this.f113322n.f113312f;
        }

        public XMLParserConfiguration getXMLParserConfiguration() {
            return this.fConfiguration;
        }

        /* renamed from: o */
        public boolean m70502o(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
            return super.getFeature(str);
        }

        /* renamed from: p */
        public Object m70503p(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
            return super.getProperty(str);
        }

        @Override // org.apache.xerces.parsers.AbstractSAXParser, org.xml.sax.Parser, org.xml.sax.XMLReader
        public void parse(String str) throws SAXException, IOException {
            SAXParserImpl sAXParserImpl = this.f113322n;
            if (sAXParserImpl != null && sAXParserImpl.f113314h != null) {
                if (this.f113322n.f113316j != null) {
                    this.f113322n.f113316j.reset();
                    this.f113322n.f113317k.m53102a();
                }
                m70504q();
            }
            super.parse(str);
        }

        /* renamed from: q */
        public final void m70504q() throws SAXException {
            try {
                this.f113322n.f113314h.reset(this.f113322n.f113315i);
            } catch (XMLConfigurationException e) {
                throw new SAXException(e);
            }
        }

        /* renamed from: r */
        public synchronized void m70505r() throws SAXNotRecognizedException, SAXNotSupportedException {
            if (!this.f113320l.isEmpty()) {
                for (Map.Entry entry : this.f113320l.entrySet()) {
                    super.setFeature((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
                }
                this.f113320l.clear();
            }
            if (!this.f113321m.isEmpty()) {
                for (Map.Entry entry2 : this.f113321m.entrySet()) {
                    super.setProperty((String) entry2.getKey(), entry2.getValue());
                }
                this.f113321m.clear();
            }
        }

        /* renamed from: s */
        public void m70506s(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
            super.setFeature(str, z);
        }

        @Override // org.apache.xerces.parsers.AbstractSAXParser, org.xml.sax.XMLReader
        public synchronized void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
            SecurityManager securityManager;
            if (str == null) {
                throw new NullPointerException();
            }
            if (!str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
                if (!this.f113320l.containsKey(str)) {
                    this.f113320l.put(str, super.getFeature(str) ? Boolean.TRUE : Boolean.FALSE);
                }
                SAXParserImpl sAXParserImpl = this.f113322n;
                if (sAXParserImpl != null && sAXParserImpl.f113314h != null) {
                    m70508u(str, z);
                }
                super.setFeature(str, z);
                return;
            }
            if (z) {
                try {
                    securityManager = new SecurityManager();
                } catch (SAXNotRecognizedException e) {
                    if (z) {
                        throw e;
                    }
                } catch (SAXNotSupportedException e2) {
                    if (z) {
                        throw e2;
                    }
                }
            } else {
                securityManager = null;
            }
            setProperty("http://apache.org/xml/properties/security-manager", securityManager);
        }

        @Override // org.apache.xerces.parsers.AbstractSAXParser, org.xml.sax.XMLReader
        public synchronized void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
            if (str == null) {
                throw new NullPointerException();
            }
            if (this.f113322n != null) {
                if ("http://java.sun.com/xml/jaxp/properties/schemaLanguage".equals(str)) {
                    if (this.f113322n.f113313g != null) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-already-specified", new Object[]{str}));
                    }
                    if ("http://www.w3.org/2001/XMLSchema".equals(obj)) {
                        if (this.f113322n.isValidating()) {
                            this.f113322n.f113312f = "http://www.w3.org/2001/XMLSchema";
                            setFeature("http://apache.org/xml/features/validation/schema", true);
                            if (!this.f113321m.containsKey("http://java.sun.com/xml/jaxp/properties/schemaLanguage")) {
                                this.f113321m.put("http://java.sun.com/xml/jaxp/properties/schemaLanguage", super.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage"));
                            }
                            super.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://www.w3.org/2001/XMLSchema");
                        }
                    } else {
                        if (obj != null) {
                            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-not-supported", null));
                        }
                        this.f113322n.f113312f = null;
                        setFeature("http://apache.org/xml/features/validation/schema", false);
                    }
                    return;
                }
                if ("http://java.sun.com/xml/jaxp/properties/schemaSource".equals(str)) {
                    if (this.f113322n.f113313g != null) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "schema-already-specified", new Object[]{str}));
                    }
                    String str2 = (String) getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
                    if (str2 == null || !"http://www.w3.org/2001/XMLSchema".equals(str2)) {
                        throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "jaxp-order-not-supported", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://java.sun.com/xml/jaxp/properties/schemaSource"}));
                    }
                    if (!this.f113321m.containsKey("http://java.sun.com/xml/jaxp/properties/schemaSource")) {
                        this.f113321m.put("http://java.sun.com/xml/jaxp/properties/schemaSource", super.getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource"));
                    }
                    super.setProperty(str, obj);
                    return;
                }
            }
            if (!this.f113321m.containsKey(str)) {
                this.f113321m.put(str, super.getProperty(str));
            }
            SAXParserImpl sAXParserImpl = this.f113322n;
            if (sAXParserImpl != null && sAXParserImpl.f113314h != null) {
                m70509v(str, obj);
            }
            super.setProperty(str, obj);
        }

        /* renamed from: t */
        public void m70507t(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
            super.setProperty(str, obj);
        }

        /* renamed from: u */
        public final void m70508u(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
            try {
                this.f113322n.f113314h.setFeature(str, z);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() != 0) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-supported", new Object[]{identifier}));
                }
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "feature-not-recognized", new Object[]{identifier}));
            }
        }

        /* renamed from: v */
        public final void m70509v(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
            try {
                this.f113322n.f113314h.setProperty(str, obj);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() != 0) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-supported", new Object[]{identifier}));
                }
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.fConfiguration.getLocale(), "property-not-recognized", new Object[]{identifier}));
            }
        }

        public JAXPSAXParser(SAXParserImpl sAXParserImpl) {
            this.f113320l = new HashMap();
            this.f113321m = new HashMap();
            this.f113322n = sAXParserImpl;
        }

        @Override // org.apache.xerces.parsers.AbstractSAXParser, org.xml.sax.Parser, org.xml.sax.XMLReader
        public void parse(InputSource inputSource) throws SAXException, IOException {
            SAXParserImpl sAXParserImpl = this.f113322n;
            if (sAXParserImpl != null && sAXParserImpl.f113314h != null) {
                if (this.f113322n.f113316j != null) {
                    this.f113322n.f113316j.reset();
                    this.f113322n.f113317k.m53102a();
                }
                m70504q();
            }
            super.parse(inputSource);
        }
    }

    public SAXParserImpl(SAXParserFactoryImpl sAXParserFactoryImpl, Hashtable hashtable) throws SAXException {
        this(sAXParserFactoryImpl, hashtable, false);
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public AttributePSVI getAttributePSVI(int i) {
        return this.f113311e.getAttributePSVI(i);
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public AttributePSVI getAttributePSVIByName(String str, String str2) {
        return this.f113311e.getAttributePSVIByName(str, str2);
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public ElementPSVI getElementPSVI() {
        return this.f113311e.getElementPSVI();
    }

    @Override // javax.xml.parsers.SAXParser
    public Parser getParser() throws SAXException {
        return this.f113311e;
    }

    @Override // javax.xml.parsers.SAXParser
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        return this.f113311e.getProperty(str);
    }

    @Override // javax.xml.parsers.SAXParser
    public Schema getSchema() {
        return this.f113313g;
    }

    @Override // javax.xml.parsers.SAXParser
    public XMLReader getXMLReader() {
        return this.f113311e;
    }

    @Override // javax.xml.parsers.SAXParser
    public boolean isNamespaceAware() {
        try {
            return this.f113311e.getFeature("http://xml.org/sax/features/namespaces");
        } catch (SAXException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.SAXParser
    public boolean isValidating() {
        try {
            return this.f113311e.getFeature("http://xml.org/sax/features/validation");
        } catch (SAXException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.SAXParser
    public boolean isXIncludeAware() {
        try {
            return this.f113311e.getFeature("http://apache.org/xml/features/xinclude");
        } catch (SAXException unused) {
            return false;
        }
    }

    @Override // javax.xml.parsers.SAXParser
    public void parse(InputSource inputSource, HandlerBase handlerBase) throws SAXException, IOException {
        if (inputSource == null) {
            throw new IllegalArgumentException();
        }
        if (handlerBase != null) {
            this.f113311e.setDocumentHandler(handlerBase);
            this.f113311e.setEntityResolver(handlerBase);
            this.f113311e.setErrorHandler(handlerBase);
            this.f113311e.setDTDHandler(handlerBase);
            this.f113311e.setContentHandler(null);
        }
        this.f113311e.parse(inputSource);
    }

    @Override // javax.xml.parsers.SAXParser
    public void reset() {
        try {
            this.f113311e.m70505r();
        } catch (SAXException unused) {
        }
        this.f113311e.setContentHandler(null);
        this.f113311e.setDTDHandler(null);
        ErrorHandler errorHandler = this.f113311e.getErrorHandler();
        ErrorHandler errorHandler2 = this.f113318l;
        if (errorHandler != errorHandler2) {
            this.f113311e.setErrorHandler(errorHandler2);
        }
        EntityResolver entityResolver = this.f113311e.getEntityResolver();
        EntityResolver entityResolver2 = this.f113319m;
        if (entityResolver != entityResolver2) {
            this.f113311e.setEntityResolver(entityResolver2);
        }
    }

    public final void setFeatures(Hashtable hashtable) throws SAXNotSupportedException, SAXNotRecognizedException {
        if (hashtable != null) {
            for (Map.Entry entry : hashtable.entrySet()) {
                this.f113311e.m70506s((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
            }
        }
    }

    @Override // javax.xml.parsers.SAXParser
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        this.f113311e.setProperty(str, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.xerces.xni.XMLDocumentHandler, org.apache.xerces.xni.XMLDTDHandler, org.apache.xerces.jaxp.SAXParserImpl$JAXPSAXParser, org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.parsers.AbstractSAXParser] */
    /* JADX WARN: Type inference failed for: r2v4, types: [org.apache.xerces.xni.XMLDTDHandler, org.apache.xerces.xni.parser.XMLDTDSource, com.sunia.HTREnginev2.aun] */
    /* JADX WARN: Type inference failed for: r6v1, types: [javax.xml.validation.Schema] */
    /* JADX WARN: Type inference failed for: r7v4, types: [org.apache.xerces.xni.parser.XMLParserConfiguration, org.apache.xerces.xni.parser.XMLComponentManager] */
    /* JADX WARN: Type inference failed for: r8v4, types: [org.apache.xerces.xni.XMLDocumentHandler, org.apache.xerces.xni.parser.XMLComponent, org.apache.xerces.xni.parser.XMLDocumentSource] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    public SAXParserImpl(SAXParserFactoryImpl sAXParserFactoryImpl, Hashtable hashtable, boolean z) throws SAXException {
        ?? r8;
        this.f113312f = null;
        ?? jAXPSAXParser = new JAXPSAXParser(this);
        this.f113311e = jAXPSAXParser;
        jAXPSAXParser.m70506s("http://xml.org/sax/features/namespaces", sAXParserFactoryImpl.isNamespaceAware());
        jAXPSAXParser.m70506s("http://xml.org/sax/features/namespace-prefixes", !sAXParserFactoryImpl.isNamespaceAware());
        if (sAXParserFactoryImpl.isXIncludeAware()) {
            jAXPSAXParser.m70506s("http://apache.org/xml/features/xinclude", true);
        }
        if (z) {
            jAXPSAXParser.m70507t("http://apache.org/xml/properties/security-manager", new SecurityManager());
        }
        setFeatures(hashtable);
        if (sAXParserFactoryImpl.isValidating()) {
            i1f i1fVar = new i1f();
            this.f113318l = i1fVar;
            jAXPSAXParser.setErrorHandler(i1fVar);
        } else {
            this.f113318l = jAXPSAXParser.getErrorHandler();
        }
        jAXPSAXParser.m70506s("http://xml.org/sax/features/validation", sAXParserFactoryImpl.isValidating());
        ?? schema = sAXParserFactoryImpl.getSchema();
        this.f113313g = schema;
        if (schema != 0) {
            ?? xMLParserConfiguration = jAXPSAXParser.getXMLParserConfiguration();
            if (schema instanceof XSGrammarPoolContainer) {
                XMLSchemaValidator xMLSchemaValidator = new XMLSchemaValidator();
                ValidationManager validationManager = new ValidationManager();
                this.f113316j = validationManager;
                ?? aunVar = new aun(validationManager);
                this.f113317k = aunVar;
                xMLParserConfiguration.setDTDHandler(aunVar);
                aunVar.setDTDHandler(jAXPSAXParser);
                jAXPSAXParser.setDTDSource(aunVar);
                this.f113315i = new v5m(xMLParserConfiguration, (XSGrammarPoolContainer) schema, validationManager);
                r8 = xMLSchemaValidator;
            } else {
                sqi sqiVar = new sqi(schema.newValidatorHandler());
                this.f113316j = null;
                this.f113317k = null;
                this.f113315i = xMLParserConfiguration;
                r8 = sqiVar;
            }
            xMLParserConfiguration.addRecognizedFeatures(r8.getRecognizedFeatures());
            xMLParserConfiguration.addRecognizedProperties(r8.getRecognizedProperties());
            xMLParserConfiguration.setDocumentHandler(r8);
            r8.setDocumentHandler(jAXPSAXParser);
            jAXPSAXParser.setDocumentSource(r8);
            this.f113314h = r8;
        } else {
            this.f113316j = null;
            this.f113317k = null;
            this.f113315i = null;
            this.f113314h = null;
        }
        this.f113319m = jAXPSAXParser.getEntityResolver();
    }

    @Override // javax.xml.parsers.SAXParser
    public void parse(InputSource inputSource, DefaultHandler defaultHandler) throws SAXException, IOException {
        if (inputSource == null) {
            throw new IllegalArgumentException();
        }
        if (defaultHandler != null) {
            this.f113311e.setContentHandler(defaultHandler);
            this.f113311e.setEntityResolver(defaultHandler);
            this.f113311e.setErrorHandler(defaultHandler);
            this.f113311e.setDTDHandler(defaultHandler);
            this.f113311e.setDocumentHandler(null);
        }
        this.f113311e.parse(inputSource);
    }
}
