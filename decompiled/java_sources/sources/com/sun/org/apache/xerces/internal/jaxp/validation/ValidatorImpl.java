package com.sun.org.apache.xerces.internal.jaxp.validation;

import com.sun.org.apache.xerces.internal.p056xs.AttributePSVI;
import com.sun.org.apache.xerces.internal.p056xs.ElementPSVI;
import com.sun.org.apache.xerces.internal.p056xs.PSVIProvider;
import com.sun.org.apache.xerces.internal.util.SAXMessageFormatter;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import java.io.IOException;
import java.util.Locale;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stax.StAXSource;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Validator;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes10.dex */
final class ValidatorImpl extends Validator implements PSVIProvider {
    private XMLSchemaValidatorComponentManager fComponentManager;
    private DOMValidatorHelper fDOMValidatorHelper;
    private ValidatorHandlerImpl fSAXValidatorHelper;
    private StAXValidatorHelper fStaxValidatorHelper;
    private StreamValidatorHelper fStreamValidatorHelper;
    private boolean fConfigurationChanged = false;
    private boolean fErrorHandlerChanged = false;
    private boolean fResourceResolverChanged = false;

    public ValidatorImpl(XSGrammarPoolContainer xSGrammarPoolContainer) {
        this.fComponentManager = new XMLSchemaValidatorComponentManager(xSGrammarPoolContainer);
        setErrorHandler(null);
        setResourceResolver(null);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public AttributePSVI getAttributePSVI(int i) {
        ValidatorHandlerImpl validatorHandlerImpl = this.fSAXValidatorHelper;
        if (validatorHandlerImpl != null) {
            return validatorHandlerImpl.getAttributePSVI(i);
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public AttributePSVI getAttributePSVIByName(String str, String str2) {
        ValidatorHandlerImpl validatorHandlerImpl = this.fSAXValidatorHelper;
        if (validatorHandlerImpl != null) {
            return validatorHandlerImpl.getAttributePSVIByName(str, str2);
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.PSVIProvider
    public ElementPSVI getElementPSVI() {
        ValidatorHandlerImpl validatorHandlerImpl = this.fSAXValidatorHelper;
        if (validatorHandlerImpl != null) {
            return validatorHandlerImpl.getElementPSVI();
        }
        return null;
    }

    @Override // javax.xml.validation.Validator
    public ErrorHandler getErrorHandler() {
        return this.fComponentManager.getErrorHandler();
    }

    @Override // javax.xml.validation.Validator
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        try {
            return this.fComponentManager.getFeature(str);
        } catch (XMLConfigurationException e) {
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), e.getType() == 0 ? "feature-not-recognized" : "feature-not-supported", new Object[]{e.getIdentifier()}));
        }
    }

    @Override // javax.xml.validation.Validator
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        try {
            return this.fComponentManager.getProperty(str);
        } catch (XMLConfigurationException e) {
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), e.getType() == 0 ? "property-not-recognized" : "property-not-supported", new Object[]{e.getIdentifier()}));
        }
    }

    @Override // javax.xml.validation.Validator
    public LSResourceResolver getResourceResolver() {
        return this.fComponentManager.getResourceResolver();
    }

    @Override // javax.xml.validation.Validator
    public void reset() {
        if (this.fConfigurationChanged) {
            this.fComponentManager.restoreInitialState();
            setErrorHandler(null);
            setResourceResolver(null);
            this.fConfigurationChanged = false;
            this.fErrorHandlerChanged = false;
            this.fResourceResolverChanged = false;
            return;
        }
        if (this.fErrorHandlerChanged) {
            setErrorHandler(null);
            this.fErrorHandlerChanged = false;
        }
        if (this.fResourceResolverChanged) {
            setResourceResolver(null);
            this.fResourceResolverChanged = false;
        }
    }

    @Override // javax.xml.validation.Validator
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.fErrorHandlerChanged = errorHandler != null;
        this.fComponentManager.setErrorHandler(errorHandler);
    }

    @Override // javax.xml.validation.Validator
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        try {
            this.fComponentManager.setFeature(str, z);
            this.fConfigurationChanged = true;
        } catch (XMLConfigurationException e) {
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), e.getType() == 0 ? "feature-not-recognized" : "feature-not-supported", new Object[]{e.getIdentifier()}));
        }
    }

    @Override // javax.xml.validation.Validator
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        str.getClass();
        try {
            this.fComponentManager.setProperty(str, obj);
            this.fConfigurationChanged = true;
        } catch (XMLConfigurationException e) {
            throw new SAXNotRecognizedException(SAXMessageFormatter.formatMessage(Locale.getDefault(), e.getType() == 0 ? "property-not-recognized" : "property-not-supported", new Object[]{e.getIdentifier()}));
        }
    }

    @Override // javax.xml.validation.Validator
    public void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.fResourceResolverChanged = lSResourceResolver != null;
        this.fComponentManager.setResourceResolver(lSResourceResolver);
    }

    @Override // javax.xml.validation.Validator
    public void validate(Source source, Result result) throws SAXException, IOException {
        if (source instanceof SAXSource) {
            if (this.fSAXValidatorHelper == null) {
                this.fSAXValidatorHelper = new ValidatorHandlerImpl(this.fComponentManager);
            }
            this.fSAXValidatorHelper.validate(source, result);
            return;
        }
        if (source instanceof DOMSource) {
            if (this.fDOMValidatorHelper == null) {
                this.fDOMValidatorHelper = new DOMValidatorHelper(this.fComponentManager);
            }
            this.fDOMValidatorHelper.validate(source, result);
        } else if (source instanceof StreamSource) {
            if (this.fStreamValidatorHelper == null) {
                this.fStreamValidatorHelper = new StreamValidatorHelper(this.fComponentManager);
            }
            this.fStreamValidatorHelper.validate(source, result);
        } else {
            if (!(source instanceof StAXSource)) {
                if (source != null) {
                    throw new IllegalArgumentException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SourceNotAccepted", new Object[]{source.getClass().getName()}));
                }
                throw new NullPointerException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SourceParameterNull", null));
            }
            if (this.fStaxValidatorHelper == null) {
                this.fStaxValidatorHelper = new StAXValidatorHelper(this.fComponentManager);
            }
            this.fStaxValidatorHelper.validate(source, result);
        }
    }
}
