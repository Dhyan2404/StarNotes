package org.apache.xerces.jaxp;

import com.sunia.HTREnginev2.aun;
import com.sunia.HTREnginev2.i1f;
import com.sunia.HTREnginev2.sqi;
import com.sunia.HTREnginev2.v5m;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.validation.Schema;
import org.apache.xerces.dom.DOMImplementationImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DocumentImpl;
import org.apache.xerces.impl.p117xs.XMLSchemaValidator;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.parsers.DOMParser;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes13.dex */
public class DocumentBuilderImpl extends DocumentBuilder implements JAXPConstants {

    /* renamed from: m */
    public static final String f113281m = "http://xml.org/sax/features/namespaces";

    /* renamed from: n */
    public static final String f113282n = "http://apache.org/xml/features/dom/include-ignorable-whitespace";

    /* renamed from: o */
    public static final String f113283o = "http://apache.org/xml/features/dom/create-entity-ref-nodes";

    /* renamed from: p */
    public static final String f113284p = "http://apache.org/xml/features/include-comments";

    /* renamed from: q */
    public static final String f113285q = "http://apache.org/xml/features/create-cdata-nodes";

    /* renamed from: r */
    public static final String f113286r = "http://apache.org/xml/features/xinclude";

    /* renamed from: s */
    public static final String f113287s = "http://apache.org/xml/features/validation/schema";

    /* renamed from: t */
    public static final String f113288t = "http://xml.org/sax/features/validation";

    /* renamed from: u */
    public static final String f113289u = "http://apache.org/xml/properties/security-manager";

    /* renamed from: e */
    public final DOMParser f113290e;

    /* renamed from: f */
    public final Schema f113291f;

    /* renamed from: g */
    public final XMLComponent f113292g;

    /* renamed from: h */
    public final XMLComponentManager f113293h;

    /* renamed from: i */
    public final ValidationManager f113294i;

    /* renamed from: j */
    public final aun f113295j;

    /* renamed from: k */
    public final ErrorHandler f113296k;

    /* renamed from: l */
    public final EntityResolver f113297l;

    public DocumentBuilderImpl(DocumentBuilderFactoryImpl documentBuilderFactoryImpl, Hashtable hashtable, Hashtable hashtable2) throws SAXNotRecognizedException, SAXNotSupportedException {
        this(documentBuilderFactoryImpl, hashtable, hashtable2, false);
    }

    /* renamed from: a */
    public DOMParser m70493a() {
        return this.f113290e;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public DOMImplementation getDOMImplementation() {
        return DOMImplementationImpl.getDOMImplementation();
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Schema getSchema() {
        return this.f113291f;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isNamespaceAware() {
        try {
            return this.f113290e.getFeature("http://xml.org/sax/features/namespaces");
        } catch (SAXException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isValidating() {
        try {
            return this.f113290e.getFeature("http://xml.org/sax/features/validation");
        } catch (SAXException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public boolean isXIncludeAware() {
        try {
            return this.f113290e.getFeature("http://apache.org/xml/features/xinclude");
        } catch (SAXException unused) {
            return false;
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Document newDocument() {
        return new DocumentImpl();
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public Document parse(InputSource inputSource) throws SAXException, IOException {
        if (inputSource == null) {
            throw new IllegalArgumentException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "jaxp-null-input-source", null));
        }
        if (this.f113292g != null) {
            ValidationManager validationManager = this.f113294i;
            if (validationManager != null) {
                validationManager.reset();
                this.f113295j.m53102a();
            }
            resetSchemaValidator();
        }
        this.f113290e.parse(inputSource);
        Document document = this.f113290e.getDocument();
        this.f113290e.dropDocumentReferences();
        return document;
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public void reset() {
        ErrorHandler errorHandler = this.f113290e.getErrorHandler();
        ErrorHandler errorHandler2 = this.f113296k;
        if (errorHandler != errorHandler2) {
            this.f113290e.setErrorHandler(errorHandler2);
        }
        EntityResolver entityResolver = this.f113290e.getEntityResolver();
        EntityResolver entityResolver2 = this.f113297l;
        if (entityResolver != entityResolver2) {
            this.f113290e.setEntityResolver(entityResolver2);
        }
    }

    public final void resetSchemaValidator() throws SAXException {
        try {
            this.f113292g.reset(this.f113293h);
        } catch (XMLConfigurationException e) {
            throw new SAXException(e);
        }
    }

    public final void setDocumentBuilderFactoryAttributes(Hashtable hashtable) throws SAXNotSupportedException, SAXNotRecognizedException {
        if (hashtable == null) {
            return;
        }
        for (Map.Entry entry : hashtable.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Boolean) {
                this.f113290e.setFeature(str, ((Boolean) value).booleanValue());
            } else if (!"http://java.sun.com/xml/jaxp/properties/schemaLanguage".equals(str)) {
                if ("http://java.sun.com/xml/jaxp/properties/schemaSource".equals(str)) {
                    if (isValidating()) {
                        String str2 = (String) hashtable.get("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
                        if (str2 == null || !"http://www.w3.org/2001/XMLSchema".equals(str2)) {
                            throw new IllegalArgumentException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "jaxp-order-not-supported", new Object[]{"http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://java.sun.com/xml/jaxp/properties/schemaSource"}));
                        }
                    } else {
                        continue;
                    }
                }
                this.f113290e.setProperty(str, value);
            } else if ("http://www.w3.org/2001/XMLSchema".equals(value) && isValidating()) {
                this.f113290e.setFeature("http://apache.org/xml/features/validation/schema", true);
                this.f113290e.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", "http://www.w3.org/2001/XMLSchema");
            }
        }
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public void setEntityResolver(EntityResolver entityResolver) {
        this.f113290e.setEntityResolver(entityResolver);
    }

    @Override // javax.xml.parsers.DocumentBuilder
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.f113290e.setErrorHandler(errorHandler);
    }

    public final void setFeatures(Hashtable hashtable) throws SAXNotSupportedException, SAXNotRecognizedException {
        if (hashtable != null) {
            for (Map.Entry entry : hashtable.entrySet()) {
                this.f113290e.setFeature((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.xerces.parsers.DOMParser, org.apache.xerces.xni.XMLDocumentHandler, org.apache.xerces.xni.XMLDTDHandler, org.apache.xerces.parsers.AbstractXMLDocumentParser] */
    /* JADX WARN: Type inference failed for: r1v13, types: [org.apache.xerces.xni.parser.XMLParserConfiguration, org.apache.xerces.xni.parser.XMLComponentManager] */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.apache.xerces.xni.XMLDTDHandler, org.apache.xerces.xni.parser.XMLDTDSource, com.sunia.HTREnginev2.aun] */
    /* JADX WARN: Type inference failed for: r5v1, types: [javax.xml.validation.Schema] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [org.apache.xerces.xni.XMLDocumentHandler, org.apache.xerces.xni.parser.XMLComponent, org.apache.xerces.xni.parser.XMLDocumentSource] */
    /* JADX WARN: Type inference failed for: r8v7 */
    public DocumentBuilderImpl(DocumentBuilderFactoryImpl documentBuilderFactoryImpl, Hashtable hashtable, Hashtable hashtable2, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        ?? r8;
        ?? dOMParser = new DOMParser();
        this.f113290e = dOMParser;
        if (documentBuilderFactoryImpl.isValidating()) {
            i1f i1fVar = new i1f();
            this.f113296k = i1fVar;
            setErrorHandler(i1fVar);
        } else {
            this.f113296k = dOMParser.getErrorHandler();
        }
        dOMParser.setFeature("http://xml.org/sax/features/validation", documentBuilderFactoryImpl.isValidating());
        dOMParser.setFeature("http://xml.org/sax/features/namespaces", documentBuilderFactoryImpl.isNamespaceAware());
        dOMParser.setFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace", !documentBuilderFactoryImpl.isIgnoringElementContentWhitespace());
        dOMParser.setFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes", !documentBuilderFactoryImpl.isExpandEntityReferences());
        dOMParser.setFeature("http://apache.org/xml/features/include-comments", !documentBuilderFactoryImpl.isIgnoringComments());
        dOMParser.setFeature("http://apache.org/xml/features/create-cdata-nodes", !documentBuilderFactoryImpl.isCoalescing());
        if (documentBuilderFactoryImpl.isXIncludeAware()) {
            dOMParser.setFeature("http://apache.org/xml/features/xinclude", true);
        }
        if (z) {
            dOMParser.setProperty("http://apache.org/xml/properties/security-manager", new SecurityManager());
        }
        ?? schema = documentBuilderFactoryImpl.getSchema();
        this.f113291f = schema;
        XMLComponent xMLComponent = null;
        if (schema != 0) {
            ?? xMLParserConfiguration = dOMParser.getXMLParserConfiguration();
            if (schema instanceof XSGrammarPoolContainer) {
                XMLSchemaValidator xMLSchemaValidator = new XMLSchemaValidator();
                ValidationManager validationManager = new ValidationManager();
                this.f113294i = validationManager;
                ?? aunVar = new aun(validationManager);
                this.f113295j = aunVar;
                xMLParserConfiguration.setDTDHandler(aunVar);
                aunVar.setDTDHandler(dOMParser);
                dOMParser.setDTDSource(aunVar);
                this.f113293h = new v5m(xMLParserConfiguration, (XSGrammarPoolContainer) schema, validationManager);
                r8 = xMLSchemaValidator;
            } else {
                sqi sqiVar = new sqi(schema.newValidatorHandler());
                this.f113294i = null;
                this.f113295j = null;
                this.f113293h = xMLParserConfiguration;
                r8 = sqiVar;
            }
            xMLParserConfiguration.addRecognizedFeatures(r8.getRecognizedFeatures());
            xMLParserConfiguration.addRecognizedProperties(r8.getRecognizedProperties());
            xMLParserConfiguration.setDocumentHandler(r8);
            r8.setDocumentHandler(dOMParser);
            dOMParser.setDocumentSource(r8);
            xMLComponent = r8;
        } else {
            this.f113294i = null;
            this.f113295j = null;
            this.f113293h = null;
        }
        this.f113292g = xMLComponent;
        setFeatures(hashtable2);
        setDocumentBuilderFactoryAttributes(hashtable);
        this.f113297l = dOMParser.getEntityResolver();
    }
}
