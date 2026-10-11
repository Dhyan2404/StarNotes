package com.sun.org.apache.xerces.internal.jaxp.validation;

import com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator;
import com.sun.org.apache.xerces.internal.impl.validation.EntityState;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.p056xs.AttributePSVI;
import com.sun.org.apache.xerces.internal.p056xs.ElementPSVI;
import com.sun.org.apache.xerces.internal.p056xs.ItemPSVI;
import com.sun.org.apache.xerces.internal.p056xs.PSVIProvider;
import com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.parsers.SAXParser;
import com.sun.org.apache.xerces.internal.util.AttributesProxy;
import com.sun.org.apache.xerces.internal.util.SAXLocatorWrapper;
import com.sun.org.apache.xerces.internal.util.SAXMessageFormatter;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.URI;
import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Locale;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXSource;
import javax.xml.validation.TypeInfoProvider;
import javax.xml.validation.ValidatorHandler;
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

/* loaded from: classes10.dex */
final class ValidatorHandlerImpl extends ValidatorHandler implements DTDHandler, EntityState, PSVIProvider, ValidatorHelper, XMLDocumentHandler {
    private static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    private static final String NAMESPACE_CONTEXT = "http://apache.org/xml/properties/internal/namespace-context";
    private static final String NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    private static final String SCHEMA_VALIDATOR = "http://apache.org/xml/properties/internal/validator/schema";
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    protected static final String STRING_INTERNING = "http://xml.org/sax/features/string-interning";
    private static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    private static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    private final AttributesProxy fAttrAdapter;
    private final QName fAttributeQName;
    private final XMLAttributesImpl fAttributes;
    private XMLSchemaValidatorComponentManager fComponentManager;
    private ContentHandler fContentHandler;
    private final QName fElementQName;
    private XMLErrorReporter fErrorReporter;
    private NamespaceContext fNamespaceContext;
    private boolean fNeedPushNSContext;
    private final ResolutionForwarder fResolutionForwarder;
    private final SAXLocatorWrapper fSAXLocatorWrapper;
    private XMLSchemaValidator fSchemaValidator;
    private boolean fStringsInternalized;
    private SymbolTable fSymbolTable;
    private final XMLString fTempString;
    private final XMLSchemaTypeInfoProvider fTypeInfoProvider;
    private HashMap fUnparsedEntities;
    private ValidationManager fValidationManager;

    /* loaded from: classes10.dex */
    public static final class ResolutionForwarder implements EntityResolver2 {
        private static final String XML_TYPE = "http://www.w3.org/TR/REC-xml";
        protected LSResourceResolver fEntityResolver;

        public ResolutionForwarder() {
        }

        private String resolveSystemId(String str, String str2) {
            try {
                return XMLEntityManager.expandSystemId(str, str2, false);
            } catch (URI.MalformedURIException unused) {
                return str;
            }
        }

        public LSResourceResolver getEntityResolver() {
            return this.fEntityResolver;
        }

        @Override // org.xml.sax.ext.EntityResolver2
        public InputSource getExternalSubset(String str, String str2) throws SAXException, IOException {
            return null;
        }

        @Override // org.xml.sax.ext.EntityResolver2
        public InputSource resolveEntity(String str, String str2, String str3, String str4) throws SAXException, IOException {
            LSInput resolveResource;
            LSResourceResolver lSResourceResolver = this.fEntityResolver;
            if (lSResourceResolver == null || (resolveResource = lSResourceResolver.resolveResource("http://www.w3.org/TR/REC-xml", null, str2, str4, str3)) == null) {
                return null;
            }
            String publicId = resolveResource.getPublicId();
            resolveResource.getSystemId();
            String baseURI = resolveResource.getBaseURI();
            Reader characterStream = resolveResource.getCharacterStream();
            InputStream byteStream = resolveResource.getByteStream();
            String stringData = resolveResource.getStringData();
            String encoding = resolveResource.getEncoding();
            InputSource inputSource = new InputSource();
            inputSource.setPublicId(publicId);
            if (baseURI != null) {
                str4 = resolveSystemId(str4, baseURI);
            }
            inputSource.setSystemId(str4);
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

        public void setEntityResolver(LSResourceResolver lSResourceResolver) {
            this.fEntityResolver = lSResourceResolver;
        }

        public ResolutionForwarder(LSResourceResolver lSResourceResolver) {
            setEntityResolver(lSResourceResolver);
        }

        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
            return resolveEntity(null, str, null, str2);
        }
    }

    public ValidatorHandlerImpl(XSGrammarPoolContainer xSGrammarPoolContainer) {
        this(new XMLSchemaValidatorComponentManager(xSGrammarPoolContainer));
        this.fComponentManager.addRecognizedFeatures(new String[]{"http://xml.org/sax/features/namespace-prefixes"});
        this.fComponentManager.setFeature("http://xml.org/sax/features/namespace-prefixes", false);
        setErrorHandler(null);
        setResourceResolver(null);
    }

    private void fillQName(QName qName, String str, String str2, String str3) {
        String str4;
        String str5 = null;
        if (this.fStringsInternalized) {
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
                str5 = this.fSymbolTable.addSymbol(str);
            }
            str4 = str2 != null ? this.fSymbolTable.addSymbol(str2) : XMLSymbols.EMPTY_STRING;
            str3 = str3 != null ? this.fSymbolTable.addSymbol(str3) : XMLSymbols.EMPTY_STRING;
        }
        String str6 = XMLSymbols.EMPTY_STRING;
        int indexOf = str3.indexOf(58);
        if (indexOf != -1) {
            str6 = this.fSymbolTable.addSymbol(str3.substring(0, indexOf));
        }
        qName.setValues(str6, str4, str3, str5);
    }

    private void fillXMLAttribute(Attributes attributes, int i) {
        fillQName(this.fAttributeQName, attributes.getURI(i), attributes.getLocalName(i), attributes.getQName(i));
        String type = attributes.getType(i);
        XMLAttributesImpl xMLAttributesImpl = this.fAttributes;
        QName qName = this.fAttributeQName;
        if (type == null) {
            type = XMLSymbols.fCDATASymbol;
        }
        xMLAttributesImpl.addAttributeNS(qName, type, attributes.getValue(i));
    }

    private void fillXMLAttributes(Attributes attributes) {
        this.fAttributes.removeAllAttributes();
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            fillXMLAttribute(attributes, i);
            this.fAttributes.setSpecified(i, true);
        }
    }

    private void fillXMLAttributes2(Attributes2 attributes2) {
        this.fAttributes.removeAllAttributes();
        int length = attributes2.getLength();
        for (int i = 0; i < length; i++) {
            fillXMLAttribute(attributes2, i);
            this.fAttributes.setSpecified(i, attributes2.isSpecified(i));
            if (attributes2.isDeclared(i)) {
                this.fAttributes.getAugmentations(i).putItem("ATTRIBUTE_DECLARED", Boolean.TRUE);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        int i;
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler == null || (i = xMLString.length) == 0) {
            return;
        }
        try {
            contentHandler.characters(xMLString.f64120ch, xMLString.offset, i);
        } catch (SAXException e) {
            throw new XNIException(e);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            try {
                contentHandler.endDocument();
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        if (this.fContentHandler != null) {
            try {
                try {
                    this.fTypeInfoProvider.beginEndElement(augmentations);
                    ContentHandler contentHandler = this.fContentHandler;
                    String str = qName.uri;
                    if (str == null) {
                        str = XMLSymbols.EMPTY_STRING;
                    }
                    contentHandler.endElement(str, qName.localpart, qName.rawname);
                } catch (SAXException e) {
                    throw new XNIException(e);
                }
            } finally {
                this.fTypeInfoProvider.finishEndElement();
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            contentHandler.endPrefixMapping(str);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public AttributePSVI getAttributePSVI(int i) {
        return this.fTypeInfoProvider.getAttributePSVI(i);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public AttributePSVI getAttributePSVIByName(String str, String str2) {
        return this.fTypeInfoProvider.getAttributePSVIByName(str, str2);
    }

    @Override // javax.xml.validation.ValidatorHandler
    public ContentHandler getContentHandler() {
        return this.fContentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.fSchemaValidator;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public ElementPSVI getElementPSVI() {
        return this.fTypeInfoProvider.getElementPSVI();
    }

    @Override // javax.xml.validation.ValidatorHandler
    public ErrorHandler getErrorHandler() {
        return this.fComponentManager.getErrorHandler();
    }

    @Override // javax.xml.validation.ValidatorHandler
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        try {
            return this.fComponentManager.getFeature(str);
        } catch (XMLConfigurationException e) {
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), e.getType() == 0 ? "feature-not-recognized" : "feature-not-supported", new Object[]{e.getIdentifier()}));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        try {
            return this.fComponentManager.getProperty(str);
        } catch (XMLConfigurationException e) {
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), e.getType() == 0 ? "property-not-recognized" : "property-not-supported", new Object[]{e.getIdentifier()}));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public LSResourceResolver getResourceResolver() {
        return this.fComponentManager.getResourceResolver();
    }

    @Override // javax.xml.validation.ValidatorHandler
    public TypeInfoProvider getTypeInfoProvider() {
        return this.fTypeInfoProvider;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            try {
                contentHandler.ignorableWhitespace(xMLString.f64120ch, xMLString.offset, xMLString.length);
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.validation.EntityState
    public boolean isEntityDeclared(String str) {
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.validation.EntityState
    public boolean isEntityUnparsed(String str) {
        HashMap hashMap = this.fUnparsedEntities;
        if (hashMap != null) {
            return hashMap.containsKey(str);
        }
        return false;
    }

    @Override // org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            try {
                contentHandler.processingInstruction(str, xMLString.toString());
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setContentHandler(ContentHandler contentHandler) {
        this.fContentHandler = contentHandler;
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.fSAXLocatorWrapper.setLocator(locator);
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            contentHandler.setDocumentLocator(locator);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.fComponentManager.setErrorHandler(errorHandler);
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        try {
            this.fComponentManager.setFeature(str, z);
        } catch (XMLConfigurationException e) {
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), e.getType() == 0 ? "feature-not-recognized" : "feature-not-supported", new Object[]{e.getIdentifier()}));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        try {
            this.fComponentManager.setProperty(str, obj);
        } catch (XMLConfigurationException e) {
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), e.getType() == 0 ? "property-not-recognized" : "property-not-supported", new Object[]{e.getIdentifier()}));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler
    public void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.fComponentManager.setResourceResolver(lSResourceResolver);
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            contentHandler.skippedEntity(str);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            try {
                contentHandler.startDocument();
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        try {
            if (this.fContentHandler != null) {
                try {
                    this.fTypeInfoProvider.beginStartElement(augmentations, xMLAttributes);
                    ContentHandler contentHandler = this.fContentHandler;
                    String str = qName.uri;
                    if (str == null) {
                        str = XMLSymbols.EMPTY_STRING;
                    }
                    contentHandler.startElement(str, qName.localpart, qName.rawname, this.fAttrAdapter);
                } catch (SAXException e) {
                    throw new XNIException(e);
                }
            }
        } finally {
            this.fTypeInfoProvider.finishStartElement();
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        String str3;
        String str4 = null;
        if (this.fStringsInternalized) {
            str3 = str != null ? str : XMLSymbols.EMPTY_STRING;
            if (str2 != null && str2.length() > 0) {
                str4 = str2;
            }
        } else {
            str3 = str != null ? this.fSymbolTable.addSymbol(str) : XMLSymbols.EMPTY_STRING;
            if (str2 != null && str2.length() > 0) {
                str4 = this.fSymbolTable.addSymbol(str2);
            }
        }
        if (this.fNeedPushNSContext) {
            this.fNeedPushNSContext = false;
            this.fNamespaceContext.pushContext();
        }
        this.fNamespaceContext.declarePrefix(str3, str4);
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            contentHandler.startPrefixMapping(str, str2);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        if (this.fUnparsedEntities == null) {
            this.fUnparsedEntities = new HashMap();
        }
        this.fUnparsedEntities.put(str, str);
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.validation.ValidatorHelper
    public void validate(Source source, Result result) throws SAXException, IOException {
        SecurityManager securityManager;
        if (!(result instanceof SAXResult) && result != null) {
            throw new IllegalArgumentException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SourceResultMismatch", new Object[]{source.getClass().getName(), result.getClass().getName()}));
        }
        SAXSource sAXSource = (SAXSource) source;
        SAXResult sAXResult = (SAXResult) result;
        if (result != null) {
            setContentHandler(sAXResult.getHandler());
        }
        try {
            XMLReader xMLReader = sAXSource.getXMLReader();
            if (xMLReader == null) {
                SAXParserFactory newInstance = SAXParserFactory.newInstance();
                newInstance.setNamespaceAware(true);
                try {
                    xMLReader = newInstance.newSAXParser().getXMLReader();
                    if ((xMLReader instanceof SAXParser) && (securityManager = (SecurityManager) this.fComponentManager.getProperty("http://apache.org/xml/properties/security-manager")) != null) {
                        try {
                            xMLReader.setProperty("http://apache.org/xml/properties/security-manager", securityManager);
                        } catch (SAXException unused) {
                        }
                    }
                } catch (Exception e) {
                    throw new FactoryConfigurationError(e);
                }
            }
            try {
                this.fStringsInternalized = xMLReader.getFeature("http://xml.org/sax/features/string-interning");
            } catch (SAXException unused2) {
                this.fStringsInternalized = false;
            }
            ErrorHandler errorHandler = this.fComponentManager.getErrorHandler();
            if (errorHandler == null) {
                errorHandler = DraconianErrorHandler.getInstance();
            }
            xMLReader.setErrorHandler(errorHandler);
            xMLReader.setEntityResolver(this.fResolutionForwarder);
            this.fResolutionForwarder.setEntityResolver(this.fComponentManager.getResourceResolver());
            xMLReader.setContentHandler(this);
            xMLReader.setDTDHandler(this);
            xMLReader.parse(sAXSource.getInputSource());
        } finally {
            setContentHandler(null);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    /* loaded from: classes10.dex */
    public static class XMLSchemaTypeInfoProvider extends TypeInfoProvider {
        private XMLAttributes fAttributes;
        private Augmentations fElementAugs;
        private boolean fInStartElement;

        private XMLSchemaTypeInfoProvider() {
            this.fInStartElement = false;
        }

        private void checkState() {
            if (!this.fInStartElement) {
                throw new IllegalStateException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "TypeInfoProviderIllegalState", null));
            }
        }

        private TypeInfo getAttributeType(int i) {
            checkState();
            if (i < 0 || this.fAttributes.getLength() <= i) {
                throw new IndexOutOfBoundsException(Integer.toString(i));
            }
            Augmentations augmentations = this.fAttributes.getAugmentations(i);
            if (augmentations == null) {
                return null;
            }
            return getTypeInfoFromPSVI((AttributePSVI) augmentations.getItem("ATTRIBUTE_PSVI"));
        }

        private TypeInfo getTypeInfoFromPSVI(ItemPSVI itemPSVI) {
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

        public void beginEndElement(Augmentations augmentations) {
            this.fElementAugs = augmentations;
        }

        public void beginStartElement(Augmentations augmentations, XMLAttributes xMLAttributes) {
            this.fInStartElement = true;
            this.fElementAugs = augmentations;
            this.fAttributes = xMLAttributes;
        }

        public void finishEndElement() {
            this.fElementAugs = null;
        }

        public void finishStartElement() {
            this.fInStartElement = false;
            this.fElementAugs = null;
            this.fAttributes = null;
        }

        public AttributePSVI getAttributePSVI(int i) {
            Augmentations augmentations;
            XMLAttributes xMLAttributes = this.fAttributes;
            if (xMLAttributes == null || (augmentations = xMLAttributes.getAugmentations(i)) == null) {
                return null;
            }
            return (AttributePSVI) augmentations.getItem("ATTRIBUTE_PSVI");
        }

        public AttributePSVI getAttributePSVIByName(String str, String str2) {
            Augmentations augmentations;
            XMLAttributes xMLAttributes = this.fAttributes;
            if (xMLAttributes == null || (augmentations = xMLAttributes.getAugmentations(str, str2)) == null) {
                return null;
            }
            return (AttributePSVI) augmentations.getItem("ATTRIBUTE_PSVI");
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public TypeInfo getAttributeTypeInfo(int i) {
            checkState();
            return getAttributeType(i);
        }

        public ElementPSVI getElementPSVI() {
            Augmentations augmentations = this.fElementAugs;
            if (augmentations != null) {
                return (ElementPSVI) augmentations.getItem("ELEMENT_PSVI");
            }
            return null;
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public TypeInfo getElementTypeInfo() {
            checkState();
            Augmentations augmentations = this.fElementAugs;
            if (augmentations == null) {
                return null;
            }
            return getTypeInfoFromPSVI((ElementPSVI) augmentations.getItem("ELEMENT_PSVI"));
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public boolean isIdAttribute(int i) {
            checkState();
            XSSimpleType xSSimpleType = (XSSimpleType) getAttributeType(i);
            if (xSSimpleType == null) {
                return false;
            }
            return xSSimpleType.isIDType();
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public boolean isSpecified(int i) {
            checkState();
            return this.fAttributes.isSpecified(i);
        }

        public TypeInfo getAttributeTypeInfo(String str, String str2) {
            checkState();
            return getAttributeTypeInfo(this.fAttributes.getIndex(str, str2));
        }

        public TypeInfo getAttributeTypeInfo(String str) {
            checkState();
            return getAttributeTypeInfo(this.fAttributes.getIndex(str));
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        this.fSAXLocatorWrapper.setLocator(null);
        try {
            this.fSchemaValidator.endDocument(null);
        } catch (XMLParseException e) {
            throw Util.toSAXParseException(e);
        } catch (XNIException e2) {
            throw Util.toSAXException(e2);
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        try {
            this.fTempString.setValues(cArr, i, i2);
            this.fSchemaValidator.ignorableWhitespace(this.fTempString, null);
        } catch (XMLParseException e) {
            throw Util.toSAXParseException(e);
        } catch (XNIException e2) {
            throw Util.toSAXException(e2);
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        ContentHandler contentHandler = this.fContentHandler;
        if (contentHandler != null) {
            contentHandler.processingInstruction(str, str2);
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.fComponentManager.reset();
        this.fSchemaValidator.setDocumentHandler(this);
        this.fValidationManager.setEntityState(this);
        this.fTypeInfoProvider.finishStartElement();
        this.fNeedPushNSContext = true;
        HashMap hashMap = this.fUnparsedEntities;
        if (hashMap != null && !hashMap.isEmpty()) {
            this.fUnparsedEntities.clear();
        }
        this.fErrorReporter.setDocumentLocator(this.fSAXLocatorWrapper);
        try {
            XMLSchemaValidator xMLSchemaValidator = this.fSchemaValidator;
            SAXLocatorWrapper sAXLocatorWrapper = this.fSAXLocatorWrapper;
            xMLSchemaValidator.startDocument(sAXLocatorWrapper, sAXLocatorWrapper.getEncoding(), this.fNamespaceContext, null);
        } catch (XMLParseException e) {
            throw Util.toSAXParseException(e);
        } catch (XNIException e2) {
            throw Util.toSAXException(e2);
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        try {
            this.fTempString.setValues(cArr, i, i2);
            this.fSchemaValidator.characters(this.fTempString, null);
        } catch (XMLParseException e) {
            throw Util.toSAXParseException(e);
        } catch (XNIException e2) {
            throw Util.toSAXException(e2);
        }
    }

    public ValidatorHandlerImpl(XMLSchemaValidatorComponentManager xMLSchemaValidatorComponentManager) {
        this.fSAXLocatorWrapper = new SAXLocatorWrapper();
        this.fNeedPushNSContext = true;
        this.fUnparsedEntities = null;
        this.fStringsInternalized = false;
        this.fElementQName = new QName();
        this.fAttributeQName = new QName();
        XMLAttributesImpl xMLAttributesImpl = new XMLAttributesImpl();
        this.fAttributes = xMLAttributesImpl;
        this.fAttrAdapter = new AttributesProxy(xMLAttributesImpl);
        this.fTempString = new XMLString();
        this.fContentHandler = null;
        this.fTypeInfoProvider = new XMLSchemaTypeInfoProvider();
        this.fResolutionForwarder = new ResolutionForwarder(null);
        this.fComponentManager = xMLSchemaValidatorComponentManager;
        this.fErrorReporter = (XMLErrorReporter) xMLSchemaValidatorComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fNamespaceContext = (NamespaceContext) this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/namespace-context");
        this.fSchemaValidator = (XMLSchemaValidator) this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/validator/schema");
        this.fSymbolTable = (SymbolTable) this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fValidationManager = (ValidationManager) this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager");
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        fillQName(this.fElementQName, str, str2, str3);
        try {
            try {
                this.fSchemaValidator.endElement(this.fElementQName, null);
            } catch (XMLParseException e) {
                throw Util.toSAXParseException(e);
            } catch (XNIException e2) {
                throw Util.toSAXException(e2);
            }
        } finally {
            this.fNamespaceContext.popContext();
        }
    }

    @Override // javax.xml.validation.ValidatorHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.fNeedPushNSContext) {
            this.fNamespaceContext.pushContext();
        }
        this.fNeedPushNSContext = true;
        fillQName(this.fElementQName, str, str2, str3);
        if (attributes instanceof Attributes2) {
            fillXMLAttributes2((Attributes2) attributes);
        } else {
            fillXMLAttributes(attributes);
        }
        try {
            this.fSchemaValidator.startElement(this.fElementQName, this.fAttributes, null);
        } catch (XMLParseException e) {
            throw Util.toSAXParseException(e);
        } catch (XNIException e2) {
            throw Util.toSAXException(e2);
        }
    }
}
