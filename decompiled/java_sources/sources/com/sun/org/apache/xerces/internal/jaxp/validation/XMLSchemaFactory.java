package com.sun.org.apache.xerces.internal.jaxp.validation;

import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaLoader;
import com.sun.org.apache.xerces.internal.util.DOMEntityResolverWrapper;
import com.sun.org.apache.xerces.internal.util.DOMInputSource;
import com.sun.org.apache.xerces.internal.util.ErrorHandlerWrapper;
import com.sun.org.apache.xerces.internal.util.SAXInputSource;
import com.sun.org.apache.xerces.internal.util.SAXMessageFormatter;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.util.XMLGrammarPoolImpl;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Locale;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;

/* loaded from: classes10.dex */
public final class XMLSchemaFactory extends SchemaFactory {
    private static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    private final DOMEntityResolverWrapper fDOMEntityResolverWrapper;
    private ErrorHandler fErrorHandler;
    private ErrorHandlerWrapper fErrorHandlerWrapper;
    private LSResourceResolver fLSResourceResolver;
    private SecurityManager fSecurityManager;
    private XMLGrammarPoolWrapper fXMLGrammarPoolWrapper;
    private final XMLSchemaLoader fXMLSchemaLoader;

    /* loaded from: classes10.dex */
    public static class XMLGrammarPoolImplExtension extends XMLGrammarPoolImpl {
        public XMLGrammarPoolImplExtension() {
        }

        public int getGrammarCount() {
            return this.fGrammarCount;
        }

        public XMLGrammarPoolImplExtension(int i) {
            super(i);
        }
    }

    /* loaded from: classes10.dex */
    public static class XMLGrammarPoolWrapper implements XMLGrammarPool {
        private XMLGrammarPool fGrammarPool;

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public void cacheGrammars(String str, Grammar[] grammarArr) {
            this.fGrammarPool.cacheGrammars(str, grammarArr);
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public void clear() {
            this.fGrammarPool.clear();
        }

        public XMLGrammarPool getGrammarPool() {
            return this.fGrammarPool;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public void lockPool() {
            this.fGrammarPool.lockPool();
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            return this.fGrammarPool.retrieveGrammar(xMLGrammarDescription);
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public Grammar[] retrieveInitialGrammarSet(String str) {
            return this.fGrammarPool.retrieveInitialGrammarSet(str);
        }

        public void setGrammarPool(XMLGrammarPool xMLGrammarPool) {
            this.fGrammarPool = xMLGrammarPool;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public void unlockPool() {
            this.fGrammarPool.unlockPool();
        }
    }

    public XMLSchemaFactory() {
        XMLSchemaLoader xMLSchemaLoader = new XMLSchemaLoader();
        this.fXMLSchemaLoader = xMLSchemaLoader;
        this.fErrorHandlerWrapper = new ErrorHandlerWrapper(DraconianErrorHandler.getInstance());
        DOMEntityResolverWrapper dOMEntityResolverWrapper = new DOMEntityResolverWrapper();
        this.fDOMEntityResolverWrapper = dOMEntityResolverWrapper;
        this.fXMLGrammarPoolWrapper = new XMLGrammarPoolWrapper();
        xMLSchemaLoader.setFeature("http://apache.org/xml/features/validation/schema-full-checking", true);
        xMLSchemaLoader.setProperty("http://apache.org/xml/properties/internal/grammar-pool", this.fXMLGrammarPoolWrapper);
        xMLSchemaLoader.setEntityResolver(dOMEntityResolverWrapper);
        xMLSchemaLoader.setErrorHandler(this.fErrorHandlerWrapper);
    }

    @Override // javax.xml.validation.SchemaFactory
    public ErrorHandler getErrorHandler() {
        return this.fErrorHandler;
    }

    @Override // javax.xml.validation.SchemaFactory
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "FeatureNameNull", null));
        }
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return this.fSecurityManager != null;
        }
        try {
            return this.fXMLSchemaLoader.getFeature(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "feature-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "feature-not-supported", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "ProperyNameNull", null));
        }
        if (str.equals("http://apache.org/xml/properties/security-manager")) {
            return this.fSecurityManager;
        }
        if (str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-supported", new Object[]{str}));
        }
        try {
            return this.fXMLSchemaLoader.getProperty(str);
        } catch (XMLConfigurationException e) {
            String identifier = e.getIdentifier();
            if (e.getType() == 0) {
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-recognized", new Object[]{identifier}));
            }
            throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-supported", new Object[]{identifier}));
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public LSResourceResolver getResourceResolver() {
        return this.fLSResourceResolver;
    }

    @Override // javax.xml.validation.SchemaFactory
    public boolean isSchemaLanguageSupported(String str) {
        if (str == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SchemaLanguageNull", null));
        }
        if (str.length() != 0) {
            return str.equals("http://www.w3.org/2001/XMLSchema");
        }
        throw new IllegalArgumentException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SchemaLanguageLengthZero", null));
    }

    @Override // javax.xml.validation.SchemaFactory
    public Schema newSchema(Source[] sourceArr) throws SAXException {
        XMLGrammarPoolImplExtension xMLGrammarPoolImplExtension = new XMLGrammarPoolImplExtension();
        this.fXMLGrammarPoolWrapper.setGrammarPool(xMLGrammarPoolImplExtension);
        XMLInputSource[] xMLInputSourceArr = new XMLInputSource[sourceArr.length];
        for (int i = 0; i < sourceArr.length; i++) {
            Source source = sourceArr[i];
            if (source instanceof StreamSource) {
                StreamSource streamSource = (StreamSource) source;
                String publicId = streamSource.getPublicId();
                String systemId = streamSource.getSystemId();
                InputStream inputStream = streamSource.getInputStream();
                Reader reader = streamSource.getReader();
                XMLInputSource xMLInputSource = new XMLInputSource(publicId, systemId, null);
                xMLInputSourceArr[i] = xMLInputSource;
                xMLInputSource.setByteStream(inputStream);
                xMLInputSourceArr[i].setCharacterStream(reader);
            } else if (source instanceof SAXSource) {
                SAXSource sAXSource = (SAXSource) source;
                InputSource inputSource = sAXSource.getInputSource();
                if (inputSource != null) {
                    xMLInputSourceArr[i] = new SAXInputSource(sAXSource.getXMLReader(), inputSource);
                } else {
                    throw new SAXException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SAXSourceNullInputSource", null));
                }
            } else {
                if (!(source instanceof DOMSource)) {
                    if (source == null) {
                        throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SchemaSourceArrayMemberNull", null));
                    }
                    throw new IllegalArgumentException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SchemaFactorySourceUnrecognized", new Object[]{source.getClass().getName()}));
                }
                DOMSource dOMSource = (DOMSource) source;
                xMLInputSourceArr[i] = new DOMInputSource(dOMSource.getNode(), dOMSource.getSystemId());
            }
        }
        try {
            this.fXMLSchemaLoader.loadGrammar(xMLInputSourceArr);
            this.fXMLGrammarPoolWrapper.setGrammarPool(null);
            int grammarCount = xMLGrammarPoolImplExtension.getGrammarCount();
            if (grammarCount > 1) {
                return new XMLSchema(new ReadOnlyGrammarPool(xMLGrammarPoolImplExtension));
            }
            if (grammarCount == 1) {
                return new SimpleXMLSchema(xMLGrammarPoolImplExtension.retrieveInitialGrammarSet("http://www.w3.org/2001/XMLSchema")[0]);
            }
            return EmptyXMLSchema.getInstance();
        } catch (XNIException e) {
            throw Util.toSAXException(e);
        } catch (IOException e2) {
            SAXParseException sAXParseException = new SAXParseException(e2.getMessage(), null, e2);
            this.fErrorHandler.error(sAXParseException);
            throw sAXParseException;
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.fErrorHandler = errorHandler;
        ErrorHandlerWrapper errorHandlerWrapper = this.fErrorHandlerWrapper;
        if (errorHandler == null) {
            errorHandler = DraconianErrorHandler.getInstance();
        }
        errorHandlerWrapper.setErrorHandler(errorHandler);
        this.fXMLSchemaLoader.setErrorHandler(this.fErrorHandlerWrapper);
    }

    @Override // javax.xml.validation.SchemaFactory
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "FeatureNameNull", null));
        }
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            SecurityManager securityManager = z ? new SecurityManager() : null;
            this.fSecurityManager = securityManager;
            this.fXMLSchemaLoader.setProperty("http://apache.org/xml/properties/security-manager", securityManager);
        } else {
            try {
                this.fXMLSchemaLoader.setFeature(str, z);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() != 0) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "feature-not-supported", new Object[]{identifier}));
                }
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "feature-not-recognized", new Object[]{identifier}));
            }
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "ProperyNameNull", null));
        }
        if (str.equals("http://apache.org/xml/properties/security-manager")) {
            SecurityManager securityManager = (SecurityManager) obj;
            this.fSecurityManager = securityManager;
            this.fXMLSchemaLoader.setProperty("http://apache.org/xml/properties/security-manager", securityManager);
        } else {
            if (str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
                throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-supported", new Object[]{str}));
            }
            try {
                this.fXMLSchemaLoader.setProperty(str, obj);
            } catch (XMLConfigurationException e) {
                String identifier = e.getIdentifier();
                if (e.getType() != 0) {
                    throw new SAXNotSupportedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-supported", new Object[]{identifier}));
                }
                throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), "property-not-recognized", new Object[]{identifier}));
            }
        }
    }

    @Override // javax.xml.validation.SchemaFactory
    public void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.fLSResourceResolver = lSResourceResolver;
        this.fDOMEntityResolverWrapper.setEntityResolver(lSResourceResolver);
        this.fXMLSchemaLoader.setEntityResolver(this.fDOMEntityResolverWrapper);
    }

    @Override // javax.xml.validation.SchemaFactory
    public Schema newSchema() throws SAXException {
        return new WeakReferenceXMLSchema();
    }
}
