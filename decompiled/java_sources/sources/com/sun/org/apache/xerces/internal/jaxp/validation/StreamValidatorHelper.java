package com.sun.org.apache.xerces.internal.jaxp.validation;

import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.msg.XMLMessageFormatter;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator;
import com.sun.org.apache.xerces.internal.parsers.XML11Configuration;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.Locale;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.sax.SAXTransformerFactory;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
final class StreamValidatorHelper implements ValidatorHelper {
    private static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    private static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    private static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    private static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    private static final String SCHEMA_VALIDATOR = "http://apache.org/xml/properties/internal/validator/schema";
    private static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    private static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    private XMLSchemaValidatorComponentManager fComponentManager;
    private XMLSchemaValidator fSchemaValidator;
    private SoftReference fConfiguration = new SoftReference(null);
    private ValidatorHandlerImpl handler = null;

    public StreamValidatorHelper(XMLSchemaValidatorComponentManager xMLSchemaValidatorComponentManager) {
        this.fComponentManager = xMLSchemaValidatorComponentManager;
        this.fSchemaValidator = (XMLSchemaValidator) xMLSchemaValidatorComponentManager.getProperty("http://apache.org/xml/properties/internal/validator/schema");
    }

    private XMLParserConfiguration initialize() {
        XML11Configuration xML11Configuration = new XML11Configuration();
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/entity-resolver", this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver"));
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/error-handler", this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/error-handler"));
        XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter);
        if (xMLErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210") == null) {
            XMLMessageFormatter xMLMessageFormatter = new XMLMessageFormatter();
            xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210", xMLMessageFormatter);
            xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/1999/REC-xml-names-19990114", xMLMessageFormatter);
        }
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/symbol-table", this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table"));
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/validation-manager", this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager"));
        xML11Configuration.setDocumentHandler(this.fSchemaValidator);
        xML11Configuration.setDTDHandler(null);
        xML11Configuration.setDTDContentModelHandler(null);
        this.fConfiguration = new SoftReference(xML11Configuration);
        return xML11Configuration;
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.validation.ValidatorHelper
    public void validate(Source source, Result result) throws SAXException, IOException {
        if (result != null && !(result instanceof StreamResult)) {
            throw new IllegalArgumentException(JAXPValidationMessageFormatter.formatMessage(Locale.getDefault(), "SourceResultMismatch", new Object[]{source.getClass().getName(), result.getClass().getName()}));
        }
        StreamSource streamSource = (StreamSource) source;
        if (result != null) {
            try {
                TransformerHandler newTransformerHandler = ((SAXTransformerFactory) TransformerFactory.newInstance()).newTransformerHandler();
                ValidatorHandlerImpl validatorHandlerImpl = new ValidatorHandlerImpl(this.fComponentManager);
                this.handler = validatorHandlerImpl;
                validatorHandlerImpl.setContentHandler(newTransformerHandler);
                newTransformerHandler.setResult(result);
            } catch (TransformerConfigurationException e) {
                throw new TransformerFactoryConfigurationError(e);
            }
        }
        XMLInputSource xMLInputSource = new XMLInputSource(streamSource.getPublicId(), streamSource.getSystemId(), null);
        xMLInputSource.setByteStream(streamSource.getInputStream());
        xMLInputSource.setCharacterStream(streamSource.getReader());
        XMLParserConfiguration xMLParserConfiguration = (XMLParserConfiguration) this.fConfiguration.get();
        if (xMLParserConfiguration == null) {
            xMLParserConfiguration = initialize();
        } else if (this.fComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings")) {
            xMLParserConfiguration.setProperty("http://apache.org/xml/properties/internal/entity-resolver", this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver"));
            xMLParserConfiguration.setProperty("http://apache.org/xml/properties/internal/error-handler", this.fComponentManager.getProperty("http://apache.org/xml/properties/internal/error-handler"));
        }
        this.fComponentManager.reset();
        this.fSchemaValidator.setDocumentHandler(this.handler);
        try {
            xMLParserConfiguration.parse(xMLInputSource);
        } catch (XMLParseException e2) {
            throw Util.toSAXParseException(e2);
        } catch (XNIException e3) {
            throw Util.toSAXException(e3);
        }
    }
}
