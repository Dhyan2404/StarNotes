package com.sun.org.apache.xerces.internal.jaxp;

import com.sun.org.apache.xerces.internal.dom.DOMInputImpl;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler;
import com.sun.org.apache.xerces.internal.util.AttributesProxy;
import com.sun.org.apache.xerces.internal.util.AugmentationsImpl;
import com.sun.org.apache.xerces.internal.util.ErrorHandlerProxy;
import com.sun.org.apache.xerces.internal.util.ErrorHandlerWrapper;
import com.sun.org.apache.xerces.internal.util.LocatorProxy;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;
import javax.xml.validation.TypeInfoProvider;
import javax.xml.validation.ValidatorHandler;
import org.w3c.dom.TypeInfo;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class JAXPValidatorComponent extends TeeXMLDocumentFilterImpl implements XMLComponent {
    private static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    private static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    private static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    private static final TypeInfoProvider noInfoProvider = new TypeInfoProvider() { // from class: com.sun.org.apache.xerces.internal.jaxp.JAXPValidatorComponent.3
        @Override // javax.xml.validation.TypeInfoProvider
        public TypeInfo getAttributeTypeInfo(int i) {
            return null;
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public TypeInfo getElementTypeInfo() {
            return null;
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public boolean isIdAttribute(int i) {
            return false;
        }

        @Override // javax.xml.validation.TypeInfoProvider
        public boolean isSpecified(int i) {
            return false;
        }

        public TypeInfo getAttributeTypeInfo(String str) {
            return null;
        }

        public TypeInfo getAttributeTypeInfo(String str, String str2) {
            return null;
        }
    };
    private XMLAttributes fCurrentAttributes;
    private Augmentations fCurrentAug;
    private XMLEntityResolver fEntityResolver;
    private XMLErrorReporter fErrorReporter;
    private SymbolTable fSymbolTable;
    private final SAX2XNI sax2xni;
    private final TypeInfoProvider typeInfoProvider;
    private final ValidatorHandler validator;
    private final XNI2SAX xni2sax;

    /* loaded from: classes10.dex */
    public static final class DraconianErrorHandler implements ErrorHandler {
        private static final DraconianErrorHandler ERROR_HANDLER_INSTANCE = new DraconianErrorHandler();

        private DraconianErrorHandler() {
        }

        public static DraconianErrorHandler getInstance() {
            return ERROR_HANDLER_INSTANCE;
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

    /* loaded from: classes10.dex */
    public final class SAX2XNI extends DefaultHandler {
        private final Augmentations fAugmentations;
        private final QName fQName;

        private SAX2XNI() {
            this.fAugmentations = new AugmentationsImpl();
            this.fQName = new QName();
        }

        private Augmentations aug() {
            if (JAXPValidatorComponent.this.fCurrentAug == null) {
                this.fAugmentations.removeAllItems();
                return this.fAugmentations;
            }
            Augmentations augmentations = JAXPValidatorComponent.this.fCurrentAug;
            JAXPValidatorComponent.this.fCurrentAug = null;
            return augmentations;
        }

        private Augmentations elementAug() {
            return aug();
        }

        private XMLDocumentHandler handler() {
            return JAXPValidatorComponent.this.getDocumentHandler();
        }

        private QName toQName(String str, String str2, String str3) {
            int indexOf = str3.indexOf(58);
            this.fQName.setValues(indexOf > 0 ? JAXPValidatorComponent.this.symbolize(str3.substring(0, indexOf)) : null, JAXPValidatorComponent.this.symbolize(str2), JAXPValidatorComponent.this.symbolize(str3), JAXPValidatorComponent.this.symbolize(str));
            return this.fQName;
        }

        private SAXException toSAXException(XNIException xNIException) {
            Exception exception = xNIException.getException();
            Exception exc = xNIException;
            if (exception != null) {
                exc = exception;
            }
            return exc instanceof SAXException ? (SAXException) exc : new SAXException(exc);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            try {
                handler().characters(new XMLString(cArr, i, i2), aug());
            } catch (XNIException e) {
                throw toSAXException(e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            try {
                handler().endElement(toQName(str, str2, str3), aug());
            } catch (XNIException e) {
                throw toSAXException(e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
            try {
                handler().ignorableWhitespace(new XMLString(cArr, i, i2), aug());
            } catch (XNIException e) {
                throw toSAXException(e);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            try {
                JAXPValidatorComponent.this.updateAttributes(attributes);
                handler().startElement(toQName(str, str2, str3), JAXPValidatorComponent.this.fCurrentAttributes, elementAug());
            } catch (XNIException e) {
                throw toSAXException(e);
            }
        }
    }

    /* loaded from: classes10.dex */
    public final class XNI2SAX extends DefaultXMLDocumentHandler {
        private final AttributesProxy fAttributesProxy;
        private ContentHandler fContentHandler;
        protected NamespaceContext fNamespaceContext;
        private String fVersion;

        private XNI2SAX() {
            this.fAttributesProxy = new AttributesProxy(null);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
            try {
                this.fContentHandler.characters(xMLString.f64120ch, xMLString.offset, xMLString.length);
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
            startElement(qName, xMLAttributes, augmentations);
            endElement(qName, augmentations);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void endDocument(Augmentations augmentations) throws XNIException {
            try {
                this.fContentHandler.endDocument();
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void endElement(QName qName, Augmentations augmentations) throws XNIException {
            try {
                String str = qName.uri;
                if (str == null) {
                    str = "";
                }
                this.fContentHandler.endElement(str, qName.localpart, qName.rawname);
                int declaredPrefixCount = this.fNamespaceContext.getDeclaredPrefixCount();
                if (declaredPrefixCount > 0) {
                    for (int i = 0; i < declaredPrefixCount; i++) {
                        this.fContentHandler.endPrefixMapping(this.fNamespaceContext.getDeclaredPrefixAt(i));
                    }
                }
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        public ContentHandler getContentHandler() {
            return this.fContentHandler;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
            try {
                this.fContentHandler.ignorableWhitespace(xMLString.f64120ch, xMLString.offset, xMLString.length);
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
            try {
                this.fContentHandler.processingInstruction(str, xMLString.toString());
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        public void setContentHandler(ContentHandler contentHandler) {
            this.fContentHandler = contentHandler;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
            this.fNamespaceContext = namespaceContext;
            this.fContentHandler.setDocumentLocator(new LocatorProxy(xMLLocator));
            try {
                this.fContentHandler.startDocument();
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
            try {
                int declaredPrefixCount = this.fNamespaceContext.getDeclaredPrefixCount();
                if (declaredPrefixCount > 0) {
                    for (int i = 0; i < declaredPrefixCount; i++) {
                        String declaredPrefixAt = this.fNamespaceContext.getDeclaredPrefixAt(i);
                        String uri = this.fNamespaceContext.getURI(declaredPrefixAt);
                        ContentHandler contentHandler = this.fContentHandler;
                        if (uri == null) {
                            uri = "";
                        }
                        contentHandler.startPrefixMapping(declaredPrefixAt, uri);
                    }
                }
                String str = qName.uri;
                String str2 = str != null ? str : "";
                String str3 = qName.localpart;
                this.fAttributesProxy.setAttributes(xMLAttributes);
                this.fContentHandler.startElement(str2, str3, qName.rawname, this.fAttributesProxy);
            } catch (SAXException e) {
                throw new XNIException(e);
            }
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
        public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
            this.fVersion = str;
        }
    }

    public JAXPValidatorComponent(ValidatorHandler validatorHandler) {
        XNI2SAX xni2sax = new XNI2SAX();
        this.xni2sax = xni2sax;
        SAX2XNI sax2xni = new SAX2XNI();
        this.sax2xni = sax2xni;
        this.validator = validatorHandler;
        TypeInfoProvider typeInfoProvider = validatorHandler.getTypeInfoProvider();
        this.typeInfoProvider = typeInfoProvider == null ? noInfoProvider : typeInfoProvider;
        xni2sax.setContentHandler(validatorHandler);
        validatorHandler.setContentHandler(sax2xni);
        setSide(xni2sax);
        validatorHandler.setErrorHandler(new ErrorHandlerProxy() { // from class: com.sun.org.apache.xerces.internal.jaxp.JAXPValidatorComponent.1
            @Override // com.sun.org.apache.xerces.internal.util.ErrorHandlerProxy
            public XMLErrorHandler getErrorHandler() {
                XMLErrorHandler errorHandler = JAXPValidatorComponent.this.fErrorReporter.getErrorHandler();
                return errorHandler != null ? errorHandler : new ErrorHandlerWrapper(DraconianErrorHandler.getInstance());
            }
        });
        validatorHandler.setResourceResolver(new LSResourceResolver() { // from class: com.sun.org.apache.xerces.internal.jaxp.JAXPValidatorComponent.2
            @Override // org.w3c.dom.ls.LSResourceResolver
            public LSInput resolveResource(String str, String str2, String str3, String str4, String str5) {
                if (JAXPValidatorComponent.this.fEntityResolver == null) {
                    return null;
                }
                try {
                    XMLInputSource resolveEntity = JAXPValidatorComponent.this.fEntityResolver.resolveEntity(new XMLResourceIdentifierImpl(str3, str4, str5, null));
                    if (resolveEntity == null) {
                        return null;
                    }
                    DOMInputImpl dOMInputImpl = new DOMInputImpl();
                    dOMInputImpl.setBaseURI(resolveEntity.getBaseSystemId());
                    dOMInputImpl.setByteStream(resolveEntity.getByteStream());
                    dOMInputImpl.setCharacterStream(resolveEntity.getCharacterStream());
                    dOMInputImpl.setEncoding(resolveEntity.getEncoding());
                    dOMInputImpl.setPublicId(resolveEntity.getPublicId());
                    dOMInputImpl.setSystemId(resolveEntity.getSystemId());
                    return dOMInputImpl;
                } catch (IOException e) {
                    throw new XNIException(e);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String symbolize(String str) {
        return this.fSymbolTable.addSymbol(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAttributes(Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            String qName = attributes.getQName(i);
            int index = this.fCurrentAttributes.getIndex(qName);
            String value = attributes.getValue(i);
            if (index == -1) {
                int indexOf = qName.indexOf(58);
                this.fCurrentAttributes.addAttribute(new QName(indexOf < 0 ? null : symbolize(qName.substring(0, indexOf)), symbolize(attributes.getLocalName(i)), symbolize(qName), symbolize(attributes.getURI(i))), attributes.getType(i), value);
            } else if (!value.equals(this.fCurrentAttributes.getValue(index))) {
                this.fCurrentAttributes.setValue(index, value);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.TeeXMLDocumentFilterImpl, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.fCurrentAug = augmentations;
        this.xni2sax.characters(xMLString, null);
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.TeeXMLDocumentFilterImpl, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.TeeXMLDocumentFilterImpl, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        this.fCurrentAug = augmentations;
        this.xni2sax.endElement(qName, null);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return new String[]{"http://apache.org/xml/properties/internal/entity-manager", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/symbol-table"};
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.TeeXMLDocumentFilterImpl, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.fCurrentAug = augmentations;
        this.xni2sax.ignorableWhitespace(xMLString, null);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        try {
            this.fEntityResolver = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        } catch (XMLConfigurationException unused) {
            this.fEntityResolver = null;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.TeeXMLDocumentFilterImpl, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        this.fCurrentAttributes = xMLAttributes;
        this.fCurrentAug = augmentations;
        this.xni2sax.startElement(qName, xMLAttributes, null);
        this.fCurrentAttributes = null;
    }
}
