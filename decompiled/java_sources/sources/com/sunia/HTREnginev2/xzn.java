package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.util.HashMap;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXSource;
import javax.xml.validation.TypeInfoProvider;
import javax.xml.validation.ValidatorHandler;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.XMLSchemaValidator;
import org.apache.xerces.impl.validation.EntityState;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.ItemPSVI;
import org.apache.xerces.p118xs.PSVIProvider;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.util.AttributesProxy;
import org.apache.xerces.util.SAXLocatorWrapper;
import org.apache.xerces.util.SAXMessageFormatter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.URI;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.apache.xerces.xni.parser.XMLParseException;
import org.w3c.dom.TypeInfo;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.Attributes2;
import org.xml.sax.ext.EntityResolver2;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes13.dex */
public final class xzn extends ValidatorHandler implements DTDHandler, EntityState, PSVIProvider, yzn, XMLDocumentHandler {

    /* renamed from: J */
    public static final String f90233J = "http://xml.org/sax/properties/lexical-handler";

    /* renamed from: O */
    public static final String f90234O = "http://apache.org/xml/properties/internal/namespace-context";

    /* renamed from: Q */
    public static final String f90235Q = "http://apache.org/xml/properties/internal/validator/schema";

    /* renamed from: Z */
    public static final String f90236Z = "http://apache.org/xml/properties/security-manager";

    /* renamed from: k0 */
    public static final String f90237k0 = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: q0 */
    public static final String f90238q0 = "http://apache.org/xml/properties/internal/validation-manager";

    /* renamed from: w */
    public static final String f90239w = "http://xml.org/sax/features/namespace-prefixes";

    /* renamed from: x */
    public static final String f90240x = "http://xml.org/sax/features/string-interning";

    /* renamed from: y */
    public static final String f90241y = "http://apache.org/xml/features/internal/strings-interned";

    /* renamed from: z */
    public static final String f90242z = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: e */
    public final XMLErrorReporter f90243e;

    /* renamed from: f */
    public final NamespaceContext f90244f;

    /* renamed from: g */
    public final XMLSchemaValidator f90245g;

    /* renamed from: h */
    public final SymbolTable f90246h;

    /* renamed from: i */
    public final ValidationManager f90247i;

    /* renamed from: j */
    public final tlo f90248j;

    /* renamed from: k */
    public final SAXLocatorWrapper f90249k;

    /* renamed from: l */
    public boolean f90250l;

    /* renamed from: m */
    public HashMap f90251m;

    /* renamed from: n */
    public boolean f90252n;

    /* renamed from: o */
    public final QName f90253o;

    /* renamed from: p */
    public final QName f90254p;

    /* renamed from: q */
    public final XMLAttributesImpl f90255q;

    /* renamed from: r */
    public final AttributesProxy f90256r;

    /* renamed from: s */
    public final XMLString f90257s;

    /* renamed from: t */
    public ContentHandler f90258t;

    /* renamed from: u */
    public final C14682b f90259u;

    /* renamed from: v */
    public final C14681a f90260v;

    /* renamed from: com.sunia.HTREnginev2.xzn$a */
    /* loaded from: classes13.dex */
    public static final class C14681a implements EntityResolver2 {

        /* renamed from: f */
        public static final String f90261f = "http://www.w3.org/TR/REC-xml";

        /* renamed from: e */
        public LSResourceResolver f90262e;

        public C14681a() {
        }

        /* renamed from: a */
        public LSResourceResolver m58368a() {
            return this.f90262e;
        }

        /* renamed from: b */
        public final String m58369b(String str, String str2) {
            try {
                return XMLEntityManager.expandSystemId(str, str2, false);
            } catch (URI.MalformedURIException unused) {
                return str;
            }
        }

        /* renamed from: c */
        public void m58370c(LSResourceResolver lSResourceResolver) {
            this.f90262e = lSResourceResolver;
        }

        @Override // org.xml.sax.ext.EntityResolver2
        public InputSource getExternalSubset(String str, String str2) throws SAXException, IOException {
            return null;
        }

        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
            return resolveEntity(null, str, null, str2);
        }

        public C14681a(LSResourceResolver lSResourceResolver) {
            m58370c(lSResourceResolver);
        }

        @Override // org.xml.sax.ext.EntityResolver2
        public InputSource resolveEntity(String str, String str2, String str3, String str4) throws SAXException, IOException {
            LSInput resolveResource;
            LSResourceResolver lSResourceResolver = this.f90262e;
            if (lSResourceResolver == null || (resolveResource = lSResourceResolver.resolveResource("http://www.w3.org/TR/REC-xml", null, str2, str4, str3)) == null) {
                return null;
            }
            String publicId = resolveResource.getPublicId();
            String systemId = resolveResource.getSystemId();
            String baseURI = resolveResource.getBaseURI();
            Reader characterStream = resolveResource.getCharacterStream();
            InputStream byteStream = resolveResource.getByteStream();
            String stringData = resolveResource.getStringData();
            String encoding = resolveResource.getEncoding();
            InputSource inputSource = new InputSource();
            inputSource.setPublicId(publicId);
            if (baseURI != null) {
                systemId = m58369b(systemId, baseURI);
            }
            inputSource.setSystemId(systemId);
            if (characterStream != null) {
                inputSource.setCharacterStream(characterStream);
            } else if (byteStream != null) {
                inputSource.setByteStream(byteStream);
            } else if (stringData != null && stringData.length() != 0) {
                inputSource.setCharacterStream(new StringReader(stringData));
            }
            inputSource.setEncoding(encoding);
            return inputSource;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.xzn$b */
    /* loaded from: classes13.dex */
    public class C14682b extends TypeInfoProvider {

        /* renamed from: a */
        public Augmentations f90263a;

        /* renamed from: b */
        public XMLAttributes f90264b;

        /* renamed from: c */
        public boolean f90265c;

        /* renamed from: d */
        public boolean f90266d;

        public C14682b() {
            this.f90265c = false;
            this.f90266d = false;
        }

        /* renamed from: a */
        public void m58371a(Augmentations augmentations) {
            this.f90266d = true;
            this.f90263a = augmentations;
        }

        /* renamed from: b */
        public void m58372b(Augmentations augmentations, XMLAttributes xMLAttributes) {
            this.f90265c = true;
            this.f90263a = augmentations;
            this.f90264b = xMLAttributes;
        }

        /* renamed from: c */
        public final void m58373c() {
            if (!this.f90265c) {
                throw new IllegalStateException(oqi.m56146a(xzn.this.f90248j.getLocale(), "TypeInfoProviderIllegalStateAttribute", null));
            }
        }

        /* renamed from: d */
        public final void m58374d() {
            if (!this.f90265c && !this.f90266d) {
                throw new IllegalStateException(oqi.m56146a(xzn.this.f90248j.getLocale(), "TypeInfoProviderIllegalStateElement", null));
            }
        }

        /* renamed from: e */
        public AttributePSVI m58375e(int i) {
            Augmentations augmentations;
            XMLAttributes xMLAttributes = this.f90264b;
            if (xMLAttributes == null || (augmentations = xMLAttributes.getAugmentations(i)) == null) {
                return null;
            }
            return (AttributePSVI) augmentations.getItem("ATTRIBUTE_PSVI");
        }

        /* renamed from: f */
        public AttributePSVI m58376f(String str, String str2) {
            Augmentations augmentations;
            XMLAttributes xMLAttributes = this.f90264b;
            if (xMLAttributes == null || (augmentations = xMLAttributes.getAugmentations(str, str2)) == null) {
                return null;
            }
            return (AttributePSVI) augmentations.getItem("ATTRIBUTE_PSVI");
        }

        public void finishEndElement() {
            this.f90266d = false;
            this.f90263a = null;
        }

        public void finishStartElement() {
            this.f90265c = false;
            this.f90263a = null;
            this.f90264b = null;
        }

        /* renamed from: g */
        public ElementPSVI m58377g() {
            Augmentations augmentations = this.f90263a;
            if (augmentations != null) {
                return (ElementPSVI) augmentations.getItem("ELEMENT_PSVI");
            }
            return null;
        }

        public final TypeInfo getAttributeType(int i) {
            m58373c();
            if (i < 0 || this.f90264b.getLength() <= i) {
                throw new IndexOutOfBoundsException(Integer.toString(i));
            }
            Augmentations augmentations = this.f90264b.getAugmentations(i);
            if (augmentations == null) {
                return null;
            }
            return m58378h((AttributePSVI) augmentations.getItem("ATTRIBUTE_PSVI"));
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public TypeInfo getAttributeTypeInfo(int i) {
            m58373c();
            return getAttributeType(i);
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public TypeInfo getElementTypeInfo() {
            m58374d();
            Augmentations augmentations = this.f90263a;
            if (augmentations == null) {
                return null;
            }
            return m58378h((ElementPSVI) augmentations.getItem("ELEMENT_PSVI"));
        }

        /* renamed from: h */
        public final TypeInfo m58378h(ItemPSVI itemPSVI) {
            XSSimpleTypeDefinition memberTypeDefinition;
            if (itemPSVI == null) {
                return null;
            }
            if (itemPSVI.getValidity() == 2 && (memberTypeDefinition = itemPSVI.getMemberTypeDefinition()) != null) {
                if (memberTypeDefinition instanceof TypeInfo) {
                    return (TypeInfo) memberTypeDefinition;
                }
                return null;
            }
            XSTypeDefinition typeDefinition = itemPSVI.getTypeDefinition();
            if (typeDefinition == null || !(typeDefinition instanceof TypeInfo)) {
                return null;
            }
            return (TypeInfo) typeDefinition;
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public boolean isIdAttribute(int i) {
            m58373c();
            XSSimpleType xSSimpleType = (XSSimpleType) getAttributeType(i);
            if (xSSimpleType == null) {
                return false;
            }
            return xSSimpleType.isIDType();
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public boolean isSpecified(int i) {
            m58373c();
            return this.f90264b.isSpecified(i);
        }

        public /* synthetic */ C14682b(xzn xznVar, wzn wznVar) {
            this();
        }

        public TypeInfo getAttributeTypeInfo(String str) {
            m58373c();
            return getAttributeTypeInfo(this.f90264b.getIndex(str));
        }

        public TypeInfo getAttributeTypeInfo(String str, String str2) {
            m58373c();
            return getAttributeTypeInfo(this.f90264b.getIndex(str, str2));
        }
    }

    public xzn(tlo tloVar) {
        this.f90249k = new SAXLocatorWrapper();
        this.f90250l = true;
        this.f90251m = null;
        this.f90252n = false;
        this.f90253o = new QName();
        this.f90254p = new QName();
        XMLAttributesImpl xMLAttributesImpl = new XMLAttributesImpl();
        this.f90255q = xMLAttributesImpl;
        this.f90256r = new AttributesProxy(xMLAttributesImpl);
        this.f90257s = new XMLString();
        this.f90258t = null;
        this.f90259u = new C14682b(this, null);
        this.f90260v = new C14681a(null);
        this.f90248j = tloVar;
        this.f90243e = (XMLErrorReporter) tloVar.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.f90244f = (NamespaceContext) tloVar.getProperty("http://apache.org/xml/properties/internal/namespace-context");
        this.f90245g = (XMLSchemaValidator) tloVar.getProperty("http://apache.org/xml/properties/internal/validator/schema");
        this.f90246h = (SymbolTable) tloVar.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.f90247i = (ValidationManager) tloVar.getProperty("http://apache.org/xml/properties/internal/validation-manager");
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        int i;
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler == null || (i = xMLString.length) == 0) {
            return;
        }
        try {
            contentHandler.characters(xMLString.f113585ch, xMLString.offset, i);
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        this.f90249k.setLocator(null);
        try {
            this.f90245g.endDocument(null);
        } catch (XMLParseException e) {
            throw fzn.m54212b(e);
        } catch (XNIException e2) {
            throw fzn.m54211a(e2);
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        m58367p(this.f90253o, str, str2, str3);
        try {
            try {
                this.f90245g.endElement(this.f90253o, null);
            } catch (XMLParseException e) {
                throw fzn.m54212b(e);
            } catch (XNIException e2) {
                throw fzn.m54211a(e2);
            }
        } finally {
            this.f90244f.popContext();
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            contentHandler.endPrefixMapping(str);
        }
    }

    public final void fillXMLAttribute(Attributes attributes, int i) {
        m58367p(this.f90254p, attributes.getURI(i), attributes.getLocalName(i), attributes.getQName(i));
        String type = attributes.getType(i);
        XMLAttributesImpl xMLAttributesImpl = this.f90255q;
        QName qName = this.f90254p;
        if (type == null) {
            type = XMLSymbols.fCDATASymbol;
        }
        xMLAttributesImpl.addAttributeNS(qName, type, attributes.getValue(i));
    }

    public final void fillXMLAttributes(Attributes attributes) {
        this.f90255q.removeAllAttributes();
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            fillXMLAttribute(attributes, i);
            this.f90255q.setSpecified(i, true);
        }
    }

    public final void fillXMLAttributes2(Attributes2 attributes2) {
        this.f90255q.removeAllAttributes();
        int length = attributes2.getLength();
        for (int i = 0; i < length; i++) {
            fillXMLAttribute(attributes2, i);
            this.f90255q.setSpecified(i, attributes2.isSpecified(i));
            if (attributes2.isDeclared(i)) {
                this.f90255q.getAugmentations(i).putItem("ATTRIBUTE_DECLARED", Boolean.TRUE);
            }
        }
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public AttributePSVI getAttributePSVI(int i) {
        return this.f90259u.m58375e(i);
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public AttributePSVI getAttributePSVIByName(String str, String str2) {
        return this.f90259u.m58376f(str, str2);
    }

    @Override // javax.xml.validation.ValidatorHandler
    public ContentHandler getContentHandler() {
        return this.f90258t;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.f90245g;
    }

    @Override // org.apache.xerces.p118xs.PSVIProvider
    public ElementPSVI getElementPSVI() {
        return this.f90259u.m58377g();
    }

    @Override // javax.xml.validation.ValidatorHandler
    public ErrorHandler getErrorHandler() {
        return this.f90248j.m57391b();
    }

    @Override // javax.xml.validation.ValidatorHandler
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f90248j.getLocale(), "FeatureNameNull", null));
        }
        if (f90241y.equals(str)) {
            return this.f90252n;
        }
        try {
            return this.f90248j.getFeature(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f90248j.getLocale(), "feature-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f90248j.getLocale(), "feature-not-supported", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f90248j.getLocale(), "ProperyNameNull", null));
        }
        try {
            return this.f90248j.getProperty(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f90248j.getLocale(), "property-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f90248j.getLocale(), "property-not-supported", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public LSResourceResolver getResourceResolver() {
        return this.f90248j.m57392c();
    }

    @Override // javax.xml.validation.ValidatorHandler
    public TypeInfoProvider getTypeInfoProvider() {
        return this.f90259u;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            try {
                contentHandler.ignorableWhitespace(xMLString.f113585ch, xMLString.offset, xMLString.length);
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
    }

    @Override // org.apache.xerces.impl.validation.EntityState
    public boolean isEntityDeclared(String str) {
        return false;
    }

    @Override // org.apache.xerces.impl.validation.EntityState
    public boolean isEntityUnparsed(String str) {
        HashMap hashMap = this.f90251m;
        if (hashMap != null) {
            return hashMap.containsKey(str);
        }
        return false;
    }

    @Override // org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
    }

    /* renamed from: p */
    public final void m58367p(QName qName, String str, String str2, String str3) {
        String str4;
        String str5 = null;
        if (this.f90252n) {
            if (str != null && str.length() == 0) {
                str = null;
            }
            if (str2 == null) {
                str2 = XMLSymbols.EMPTY_STRING;
            }
            if (str3 == null) {
                str3 = XMLSymbols.EMPTY_STRING;
            }
            str5 = str;
            str4 = str2;
        } else {
            if (str != null && str.length() > 0) {
                str5 = this.f90246h.addSymbol(str);
            }
            str4 = str2 != null ? this.f90246h.addSymbol(str2) : XMLSymbols.EMPTY_STRING;
            str3 = str3 != null ? this.f90246h.addSymbol(str3) : XMLSymbols.EMPTY_STRING;
        }
        String str6 = XMLSymbols.EMPTY_STRING;
        int indexOf = str3.indexOf(58);
        if (indexOf != -1) {
            str6 = this.f90246h.addSymbol(str3.substring(0, indexOf));
        }
        qName.setValues(str6, str4, str3, str5);
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            contentHandler.processingInstruction(str, str2);
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setContentHandler(ContentHandler contentHandler) {
        this.f90258t = contentHandler;
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.f90249k.setLocator(locator);
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            contentHandler.setDocumentLocator(locator);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.f90248j.m57394e(errorHandler);
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f90248j.getLocale(), "FeatureNameNull", null));
        }
        if (f90241y.equals(str)) {
            this.f90252n = z;
            return;
        }
        try {
            this.f90248j.setFeature(str, z);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() != 0) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f90248j.getLocale(), "feature-not-supported", new Object[]{identifier}));
            }
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f90248j.getLocale(), "feature-not-recognized", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(oqi.m56146a(this.f90248j.getLocale(), "ProperyNameNull", null));
        }
        try {
            this.f90248j.setProperty(str, obj);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() != 0) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(this.f90248j.getLocale(), "property-not-supported", new Object[]{identifier}));
            }
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(this.f90248j.getLocale(), "property-not-recognized", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.f90248j.m57397h(lSResourceResolver);
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            contentHandler.skippedEntity(str);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.f90248j.reset();
        this.f90245g.setDocumentHandler(this);
        this.f90247i.setEntityState(this);
        this.f90259u.finishStartElement();
        this.f90250l = true;
        HashMap hashMap = this.f90251m;
        if (hashMap != null && !hashMap.isEmpty()) {
            this.f90251m.clear();
        }
        this.f90243e.setDocumentLocator(this.f90249k);
        try {
            XMLSchemaValidator xMLSchemaValidator = this.f90245g;
            SAXLocatorWrapper sAXLocatorWrapper = this.f90249k;
            xMLSchemaValidator.startDocument(sAXLocatorWrapper, sAXLocatorWrapper.getEncoding(), this.f90244f, null);
        } catch (XMLParseException e) {
            throw fzn.m54212b(e);
        } catch (XNIException e2) {
            throw fzn.m54211a(e2);
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.f90250l) {
            this.f90244f.pushContext();
        }
        this.f90250l = true;
        m58367p(this.f90253o, str, str2, str3);
        if (attributes instanceof Attributes2) {
            fillXMLAttributes2((Attributes2) attributes);
        } else {
            fillXMLAttributes(attributes);
        }
        try {
            this.f90245g.startElement(this.f90253o, this.f90255q, null);
        } catch (XMLParseException e) {
            throw fzn.m54212b(e);
        } catch (XNIException e2) {
            throw fzn.m54211a(e2);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        String str3;
        String str4 = null;
        if (this.f90252n) {
            str3 = str != null ? str : XMLSymbols.EMPTY_STRING;
            if (str2 != null && str2.length() > 0) {
                str4 = str2;
            }
        } else {
            str3 = str != null ? this.f90246h.addSymbol(str) : XMLSymbols.EMPTY_STRING;
            if (str2 != null && str2.length() > 0) {
                str4 = this.f90246h.addSymbol(str2);
            }
        }
        if (this.f90250l) {
            this.f90250l = false;
            this.f90244f.pushContext();
        }
        this.f90244f.declarePrefix(str3, str4);
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            contentHandler.startPrefixMapping(str, str2);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        if (this.f90251m == null) {
            this.f90251m = new HashMap();
        }
        this.f90251m.put(str, str);
    }

    @Override // com.sunia.HTREnginev2.yzn
    public void validate(Source source, Result result) throws SAXException, IOException {
        LexicalHandler lexicalHandler;
        XMLReader xMLReader;
        Object property;
        if (!(result instanceof SAXResult) && result != null) {
            throw new IllegalArgumentException(oqi.m56146a(this.f90248j.getLocale(), "SourceResultMismatch", new Object[]{source.getClass().getName(), result.getClass().getName()}));
        }
        SAXSource sAXSource = (SAXSource) source;
        SAXResult sAXResult = (SAXResult) result;
        if (result != null) {
            ContentHandler handler = sAXResult.getHandler();
            lexicalHandler = sAXResult.getLexicalHandler();
            if (lexicalHandler == null && (handler instanceof LexicalHandler)) {
                lexicalHandler = (LexicalHandler) handler;
            }
            setContentHandler(handler);
        } else {
            lexicalHandler = null;
        }
        try {
            xMLReader = sAXSource.getXMLReader();
            if (xMLReader == null) {
                try {
                    SAXParserFactory newInstance = SAXParserFactory.newInstance();
                    newInstance.setNamespaceAware(true);
                    try {
                        xMLReader = newInstance.newSAXParser().getXMLReader();
                        if ((xMLReader instanceof SAXParser) && (property = this.f90248j.getProperty("http://apache.org/xml/properties/security-manager")) != null) {
                            try {
                                xMLReader.setProperty("http://apache.org/xml/properties/security-manager", property);
                            } catch (SAXException unused) {
                            }
                        }
                    } catch (Exception e) {
                        throw new FactoryConfigurationError(e);
                    }
                } catch (Throwable th) {
                    th = th;
                    setContentHandler(null);
                    if (xMLReader != null) {
                        try {
                            xMLReader.setContentHandler(null);
                            xMLReader.setDTDHandler(null);
                            xMLReader.setErrorHandler(null);
                            xMLReader.setEntityResolver(null);
                            this.f90260v.m58370c(null);
                            xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", null);
                        } catch (Exception unused2) {
                        }
                    }
                    throw th;
                }
            }
            try {
                this.f90252n = xMLReader.getFeature("http://xml.org/sax/features/string-interning");
            } catch (SAXException unused3) {
                this.f90252n = false;
            }
            ErrorHandler m57391b = this.f90248j.m57391b();
            if (m57391b == null) {
                m57391b = ehf.m53960a();
            }
            xMLReader.setErrorHandler(m57391b);
            xMLReader.setEntityResolver(this.f90260v);
            this.f90260v.m58370c(this.f90248j.m57392c());
            xMLReader.setContentHandler(this);
            xMLReader.setDTDHandler(this);
            try {
                xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", lexicalHandler);
            } catch (SAXException unused4) {
            }
            xMLReader.parse(sAXSource.getInputSource());
            setContentHandler(null);
            try {
                xMLReader.setContentHandler(null);
                xMLReader.setDTDHandler(null);
                xMLReader.setErrorHandler(null);
                xMLReader.setEntityResolver(null);
                this.f90260v.m58370c(null);
                xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", null);
            } catch (Exception unused5) {
            }
        } catch (Throwable th2) {
            th = th2;
            xMLReader = null;
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    public xzn(XSGrammarPoolContainer xSGrammarPoolContainer) {
        this(new tlo(xSGrammarPoolContainer));
        this.f90248j.addRecognizedFeatures(new String[]{"http://xml.org/sax/features/namespace-prefixes"});
        this.f90248j.setFeature("http://xml.org/sax/features/namespace-prefixes", false);
        setErrorHandler(null);
        setResourceResolver(null);
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        try {
            this.f90257s.setValues(cArr, i, i2);
            this.f90245g.characters(this.f90257s, null);
        } catch (XMLParseException e) {
            throw fzn.m54212b(e);
        } catch (XNIException e2) {
            throw fzn.m54211a(e2);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            try {
                contentHandler.endDocument();
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        if (this.f90258t != null) {
            try {
                try {
                    this.f90259u.m58371a(augmentations);
                    ContentHandler contentHandler = this.f90258t;
                    String str = qName.uri;
                    if (str == null) {
                        str = XMLSymbols.EMPTY_STRING;
                    }
                    contentHandler.endElement(str, qName.localpart, qName.rawname);
                } catch (SAXException e) {
                    throw new XNIException(e);
                }
            } finally {
                this.f90259u.finishEndElement();
            }
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        try {
            this.f90257s.setValues(cArr, i, i2);
            this.f90245g.ignorableWhitespace(this.f90257s, null);
        } catch (XMLParseException e) {
            throw fzn.m54212b(e);
        } catch (XNIException e2) {
            throw fzn.m54211a(e2);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            try {
                contentHandler.processingInstruction(str, xMLString.toString());
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        ContentHandler contentHandler = this.f90258t;
        if (contentHandler != null) {
            try {
                contentHandler.startDocument();
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        try {
            if (this.f90258t != null) {
                try {
                    this.f90259u.m58372b(augmentations, xMLAttributes);
                    ContentHandler contentHandler = this.f90258t;
                    String str = qName.uri;
                    if (str == null) {
                        str = XMLSymbols.EMPTY_STRING;
                    }
                    contentHandler.startElement(str, qName.localpart, qName.rawname, this.f90256r);
                } catch (SAXException e) {
                    throw new XNIException(e);
                }
            }
        } finally {
            this.f90259u.finishStartElement();
        }
    }
}
