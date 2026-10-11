package com.sun.org.apache.xerces.internal.jaxp.validation;

import java.io.IOException;
import java.util.Locale;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXTransformerFactory;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stax.StAXResult;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public final class StAXValidatorHelper implements ValidatorHelper {
    private XMLSchemaValidatorComponentManager fComponentManager;
    private Transformer identityTransformer1 = null;
    private TransformerHandler identityTransformer2 = null;
    private ValidatorHandlerImpl handler = null;

    public StAXValidatorHelper(XMLSchemaValidatorComponentManager xMLSchemaValidatorComponentManager) {
        this.fComponentManager = xMLSchemaValidatorComponentManager;
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.validation.ValidatorHelper
    public void validate(Source source, Result result) throws SAXException, IOException {
        if (result != null && !(result instanceof StAXResult)) {
            throw new IllegalArgumentException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SourceResultMismatch", new Object[]{source.getClass().getName(), result.getClass().getName()}));
        }
        if (this.identityTransformer1 == null) {
            try {
                SAXTransformerFactory sAXTransformerFactory = (SAXTransformerFactory) TransformerFactory.newInstance();
                this.identityTransformer1 = sAXTransformerFactory.newTransformer();
                this.identityTransformer2 = sAXTransformerFactory.newTransformerHandler();
            } catch (TransformerConfigurationException e) {
                throw new TransformerFactoryConfigurationError(e);
            }
        }
        if (result != null) {
            ValidatorHandlerImpl validatorHandlerImpl = new ValidatorHandlerImpl(this.fComponentManager);
            this.handler = validatorHandlerImpl;
            validatorHandlerImpl.setContentHandler(this.identityTransformer2);
            this.identityTransformer2.setResult(result);
        }
        try {
            try {
                this.identityTransformer1.transform(source, new SAXResult(this.handler));
            } catch (TransformerException e2) {
                if (!(e2.getException() instanceof SAXException)) {
                    throw new SAXException(e2);
                }
                throw ((SAXException) e2.getException());
            }
        } finally {
            this.handler.setContentHandler(null);
        }
    }
}
