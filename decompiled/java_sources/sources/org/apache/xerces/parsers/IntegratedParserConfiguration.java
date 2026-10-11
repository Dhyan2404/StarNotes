package org.apache.xerces.parsers;

import org.apache.xerces.impl.XMLDocumentScannerImpl;
import org.apache.xerces.impl.XMLNSDocumentScannerImpl;
import org.apache.xerces.impl.dtd.XMLDTDValidator;
import org.apache.xerces.impl.dtd.XMLNSDTDValidator;
import org.apache.xerces.impl.p117xs.XMLSchemaValidator;
import org.apache.xerces.impl.p117xs.XSMessageFormatter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLDocumentScanner;
import org.apache.xerces.xni.parser.XMLDocumentSource;

/* loaded from: classes13.dex */
public class IntegratedParserConfiguration extends StandardParserConfiguration {
    protected XMLNSDocumentScannerImpl fNamespaceScanner;
    protected XMLDTDValidator fNonNSDTDValidator;
    protected XMLDocumentScannerImpl fNonNSScanner;

    public IntegratedParserConfiguration() {
        this(null, null, null);
    }

    @Override // org.apache.xerces.parsers.StandardParserConfiguration, org.apache.xerces.parsers.DTDConfiguration
    public void configurePipeline() {
        XMLDocumentSource xMLDocumentSource;
        setProperty("http://apache.org/xml/properties/internal/datatype-validator-factory", this.fDatatypeValidatorFactory);
        configureDTDPipeline();
        Object obj = this.fFeatures.get("http://xml.org/sax/features/namespaces");
        Boolean bool = Boolean.TRUE;
        if (obj == bool) {
            this.fProperties.put("http://apache.org/xml/properties/internal/namespace-binder", this.fNamespaceBinder);
            XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = this.fNamespaceScanner;
            this.fScanner = xMLNSDocumentScannerImpl;
            this.fProperties.put("http://apache.org/xml/properties/internal/document-scanner", xMLNSDocumentScannerImpl);
            XMLDTDValidator xMLDTDValidator = this.fDTDValidator;
            if (xMLDTDValidator != null) {
                this.fProperties.put("http://apache.org/xml/properties/internal/validator/dtd", xMLDTDValidator);
                this.fNamespaceScanner.setDTDValidator(this.fDTDValidator);
                this.fNamespaceScanner.setDocumentHandler(this.fDTDValidator);
                this.fDTDValidator.setDocumentSource(this.fNamespaceScanner);
                this.fDTDValidator.setDocumentHandler(this.fDocumentHandler);
                XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
                if (xMLDocumentHandler != null) {
                    xMLDocumentHandler.setDocumentSource(this.fDTDValidator);
                }
                xMLDocumentSource = this.fDTDValidator;
            } else {
                this.fNamespaceScanner.setDocumentHandler(this.fDocumentHandler);
                this.fNamespaceScanner.setDTDValidator(null);
                XMLDocumentHandler xMLDocumentHandler2 = this.fDocumentHandler;
                if (xMLDocumentHandler2 != null) {
                    xMLDocumentHandler2.setDocumentSource(this.fNamespaceScanner);
                }
                xMLDocumentSource = this.fNamespaceScanner;
            }
        } else {
            XMLDocumentScannerImpl xMLDocumentScannerImpl = this.fNonNSScanner;
            this.fScanner = xMLDocumentScannerImpl;
            this.fProperties.put("http://apache.org/xml/properties/internal/document-scanner", xMLDocumentScannerImpl);
            XMLDTDValidator xMLDTDValidator2 = this.fNonNSDTDValidator;
            if (xMLDTDValidator2 != null) {
                this.fProperties.put("http://apache.org/xml/properties/internal/validator/dtd", xMLDTDValidator2);
                this.fNonNSScanner.setDocumentHandler(this.fNonNSDTDValidator);
                this.fNonNSDTDValidator.setDocumentSource(this.fNonNSScanner);
                this.fNonNSDTDValidator.setDocumentHandler(this.fDocumentHandler);
                XMLDocumentHandler xMLDocumentHandler3 = this.fDocumentHandler;
                if (xMLDocumentHandler3 != null) {
                    xMLDocumentHandler3.setDocumentSource(this.fNonNSDTDValidator);
                }
                xMLDocumentSource = this.fNonNSDTDValidator;
            } else {
                this.fScanner.setDocumentHandler(this.fDocumentHandler);
                XMLDocumentHandler xMLDocumentHandler4 = this.fDocumentHandler;
                if (xMLDocumentHandler4 != null) {
                    xMLDocumentHandler4.setDocumentSource(this.fScanner);
                }
                xMLDocumentSource = this.fScanner;
            }
        }
        this.fLastComponent = xMLDocumentSource;
        if (this.fFeatures.get("http://apache.org/xml/features/validation/schema") == bool) {
            if (this.fSchemaValidator == null) {
                XMLSchemaValidator xMLSchemaValidator = new XMLSchemaValidator();
                this.fSchemaValidator = xMLSchemaValidator;
                this.fProperties.put("http://apache.org/xml/properties/internal/validator/schema", xMLSchemaValidator);
                addComponent(this.fSchemaValidator);
                if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
                    this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
                }
            }
            this.fLastComponent.setDocumentHandler(this.fSchemaValidator);
            this.fSchemaValidator.setDocumentSource(this.fLastComponent);
            this.fSchemaValidator.setDocumentHandler(this.fDocumentHandler);
            XMLDocumentHandler xMLDocumentHandler5 = this.fDocumentHandler;
            if (xMLDocumentHandler5 != null) {
                xMLDocumentHandler5.setDocumentSource(this.fSchemaValidator);
            }
            this.fLastComponent = this.fSchemaValidator;
        }
    }

    @Override // org.apache.xerces.parsers.DTDConfiguration
    public XMLDTDValidator createDTDValidator() {
        return new XMLNSDTDValidator();
    }

    @Override // org.apache.xerces.parsers.DTDConfiguration
    public XMLDocumentScanner createDocumentScanner() {
        XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = new XMLNSDocumentScannerImpl();
        this.fNamespaceScanner = xMLNSDocumentScannerImpl;
        return xMLNSDocumentScannerImpl;
    }

    public IntegratedParserConfiguration(SymbolTable symbolTable) {
        this(symbolTable, null, null);
    }

    public IntegratedParserConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this(symbolTable, xMLGrammarPool, null);
    }

    public IntegratedParserConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLComponentManager xMLComponentManager) {
        super(symbolTable, xMLGrammarPool, xMLComponentManager);
        this.fNonNSScanner = new XMLDocumentScannerImpl();
        this.fNonNSDTDValidator = new XMLDTDValidator();
        addComponent(this.fNonNSScanner);
        addComponent(this.fNonNSDTDValidator);
    }
}
