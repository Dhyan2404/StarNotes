package com.sunia.HTREnginev2;

import javax.xml.validation.TypeInfoProvider;
import javax.xml.validation.ValidatorHandler;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler;
import org.apache.xerces.util.AttributesProxy;
import org.apache.xerces.util.AugmentationsImpl;
import org.apache.xerces.util.LocatorProxy;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes13.dex */
public final class sqi extends qan implements XMLComponent {

    /* renamed from: q */
    public static final String f84463q = "http://apache.org/xml/properties/internal/entity-manager";

    /* renamed from: r */
    public static final String f84464r = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: s */
    public static final String f84465s = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: t */
    public static final TypeInfoProvider f84466t = new pqi();

    /* renamed from: h */
    public final ValidatorHandler f84467h;

    /* renamed from: i */
    public final C14416c f84468i;

    /* renamed from: j */
    public final C14415b f84469j;

    /* renamed from: k */
    public final TypeInfoProvider f84470k;

    /* renamed from: l */
    public Augmentations f84471l;

    /* renamed from: m */
    public XMLAttributes f84472m;

    /* renamed from: n */
    public SymbolTable f84473n;

    /* renamed from: o */
    public XMLErrorReporter f84474o;

    /* renamed from: p */
    public XMLEntityResolver f84475p;

    /* renamed from: com.sunia.HTREnginev2.sqi$a */
    /* loaded from: classes13.dex */
    public static final class C14414a implements ErrorHandler {

        /* renamed from: e */
        public static final C14414a f84476e = new C14414a();

        /* renamed from: a */
        public static C14414a m57240a() {
            return f84476e;
        }

        @Override // org.xml.sax.ErrorHandler
        public void error(SAXParseException sAXParseException) throws SAXException {
            throw sAXParseException;
        }

        @Override // org.xml.sax.ErrorHandler
        public void fatalError(SAXParseException sAXParseException) throws SAXException {
            throw sAXParseException;
        }

        @Override // org.xml.sax.ErrorHandler
        public void warning(SAXParseException sAXParseException) throws SAXException {
        }
    }

    /* renamed from: com.sunia.HTREnginev2.sqi$b */
    /* loaded from: classes13.dex */
    public final class C14415b extends DefaultHandler {

        /* renamed from: e */
        public final Augmentations f84477e;

        /* renamed from: f */
        public final QName f84478f;

        public C14415b() {
            this.f84477e = new AugmentationsImpl();
            this.f84478f = new QName();
        }

        /* renamed from: a */
        public final Augmentations m57241a() {
            if (sqi.this.f84471l == null) {
                this.f84477e.removeAllItems();
                return this.f84477e;
            }
            Augmentations augmentations = sqi.this.f84471l;
            sqi.this.f84471l = null;
            return augmentations;
        }

        /* renamed from: b */
        public final Augmentations m57242b() {
            return m57241a();
        }

        /* renamed from: c */
        public final XMLDocumentHandler m57243c() {
            return sqi.this.getDocumentHandler();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            try {
                m57243c().characters(new XMLString(cArr, i, i2), m57241a());
            } catch (XNIException e) {
                throw m57245e(e);
            }
        }

        /* renamed from: d */
        public final QName m57244d(String str, String str2, String str3) {
            int indexOf = str3.indexOf(58);
            this.f84478f.setValues(indexOf > 0 ? sqi.this.m57238x(str3.substring(0, indexOf)) : null, sqi.this.m57238x(str2), sqi.this.m57238x(str3), sqi.this.m57238x(str));
            return this.f84478f;
        }

        /* renamed from: e */
        public final SAXException m57245e(XNIException xNIException) {
            Exception exception = xNIException.getException();
            Exception exc = xNIException;
            if (exception != null) {
                exc = exception;
            }
            return exc instanceof SAXException ? (SAXException) exc : new SAXException(exc);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            try {
                m57243c().endElement(m57244d(str, str2, str3), m57241a());
            } catch (XNIException e) {
                throw m57245e(e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
            try {
                m57243c().ignorableWhitespace(new XMLString(cArr, i, i2), m57241a());
            } catch (XNIException e) {
                throw m57245e(e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            try {
                sqi.this.m57239y(attributes);
                m57243c().startElement(m57244d(str, str2, str3), sqi.this.f84472m, m57242b());
            } catch (XNIException e) {
                throw m57245e(e);
            }
        }

        public /* synthetic */ C14415b(sqi sqiVar, pqi pqiVar) {
            this();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.sqi$c */
    /* loaded from: classes13.dex */
    public static final class C14416c extends DefaultXMLDocumentHandler {

        /* renamed from: h */
        public ContentHandler f84480h;

        /* renamed from: i */
        public String f84481i;

        /* renamed from: j */
        public NamespaceContext f84482j;

        /* renamed from: k */
        public final AttributesProxy f84483k;

        public C14416c() {
            this.f84483k = new AttributesProxy(null);
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
            try {
                this.f84480h.characters(xMLString.f113585ch, xMLString.offset, xMLString.length);
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
            startElement(qName, xMLAttributes, augmentations);
            endElement(qName, augmentations);
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void endDocument(Augmentations augmentations) throws XNIException {
            try {
                this.f84480h.endDocument();
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void endElement(QName qName, Augmentations augmentations) throws XNIException {
            try {
                String str = qName.uri;
                if (str == null) {
                    str = "";
                }
                this.f84480h.endElement(str, qName.localpart, qName.rawname);
                int declaredPrefixCount = this.f84482j.getDeclaredPrefixCount();
                if (declaredPrefixCount > 0) {
                    for (int i = 0; i < declaredPrefixCount; i++) {
                        this.f84480h.endPrefixMapping(this.f84482j.getDeclaredPrefixAt(i));
                    }
                }
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
            try {
                this.f84480h.ignorableWhitespace(xMLString.f113585ch, xMLString.offset, xMLString.length);
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        /* renamed from: o */
        public ContentHandler m57246o() {
            return this.f84480h;
        }

        /* renamed from: p */
        public void m57247p(ContentHandler contentHandler) {
            this.f84480h = contentHandler;
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
            try {
                this.f84480h.processingInstruction(str, xMLString.toString());
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
            this.f84482j = namespaceContext;
            this.f84480h.setDocumentLocator(new LocatorProxy(xMLLocator));
            try {
                this.f84480h.startDocument();
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
            try {
                int declaredPrefixCount = this.f84482j.getDeclaredPrefixCount();
                if (declaredPrefixCount > 0) {
                    for (int i = 0; i < declaredPrefixCount; i++) {
                        String declaredPrefixAt = this.f84482j.getDeclaredPrefixAt(i);
                        String uri = this.f84482j.getURI(declaredPrefixAt);
                        ContentHandler contentHandler = this.f84480h;
                        if (uri == null) {
                            uri = "";
                        }
                        contentHandler.startPrefixMapping(declaredPrefixAt, uri);
                    }
                }
                String str = qName.uri;
                String str2 = str != null ? str : "";
                String str3 = qName.localpart;
                this.f84483k.setAttributes(xMLAttributes);
                this.f84480h.startElement(str2, str3, qName.rawname, this.f84483k);
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // org.apache.xerces.impl.p117xs.opti.DefaultXMLDocumentHandler, org.apache.xerces.xni.XMLDocumentHandler
        public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
            this.f84481i = str;
        }

        public /* synthetic */ C14416c(pqi pqiVar) {
            this();
        }
    }

    public sqi(ValidatorHandler validatorHandler) {
        pqi pqiVar = null;
        C14416c c14416c = new C14416c(pqiVar);
        this.f84468i = c14416c;
        C14415b c14415b = new C14415b(this, pqiVar);
        this.f84469j = c14415b;
        this.f84467h = validatorHandler;
        TypeInfoProvider typeInfoProvider = validatorHandler.getTypeInfoProvider();
        this.f84470k = typeInfoProvider == null ? f84466t : typeInfoProvider;
        c14416c.m57247p(validatorHandler);
        validatorHandler.setContentHandler(c14415b);
        m56664p(c14416c);
        validatorHandler.setErrorHandler(new qqi(this));
        validatorHandler.setResourceResolver(new rqi(this));
    }

    @Override // com.sunia.HTREnginev2.qan, org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.f84471l = augmentations;
        this.f84468i.characters(xMLString, null);
    }

    @Override // com.sunia.HTREnginev2.qan, org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // com.sunia.HTREnginev2.qan, org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        this.f84471l = augmentations;
        this.f84468i.endElement(qName, null);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        return null;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        return null;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return null;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return new String[]{"http://apache.org/xml/properties/internal/entity-manager", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/symbol-table"};
    }

    @Override // com.sunia.HTREnginev2.qan, org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.f84471l = augmentations;
        this.f84468i.ignorableWhitespace(xMLString, null);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        this.f84473n = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.f84474o = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        try {
            this.f84475p = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        } catch (XMLConfigurationException unused) {
            this.f84475p = null;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
    }

    @Override // com.sunia.HTREnginev2.qan, org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        this.f84472m = xMLAttributes;
        this.f84471l = augmentations;
        this.f84468i.startElement(qName, xMLAttributes, null);
        this.f84472m = null;
    }

    /* renamed from: x */
    public final String m57238x(String str) {
        return this.f84473n.addSymbol(str);
    }

    /* renamed from: y */
    public final void m57239y(Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            String qName = attributes.getQName(i);
            int index = this.f84472m.getIndex(qName);
            String value = attributes.getValue(i);
            if (index == -1) {
                int indexOf = qName.indexOf(58);
                this.f84472m.addAttribute(new QName(indexOf < 0 ? null : m57238x(qName.substring(0, indexOf)), m57238x(attributes.getLocalName(i)), m57238x(qName), m57238x(attributes.getURI(i))), attributes.getType(i), value);
            } else if (!value.equals(this.f84472m.getValue(index))) {
                this.f84472m.setValue(index, value);
            }
        }
    }
}
