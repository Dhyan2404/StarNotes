package org.apache.xerces.parsers;

import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xinclude.XIncludeHandler;
import org.apache.xerces.xinclude.XIncludeNamespaceSupport;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.apache.xerces.xpointer.XPointerHandler;

/* loaded from: classes13.dex */
public class XPointerParserConfiguration extends XML11Configuration {
    protected static final String ALLOW_UE_AND_NOTATION_EVENTS = "http://xml.org/sax/features/allow-dtd-events-after-endDTD";
    protected static final String NAMESPACE_CONTEXT = "http://apache.org/xml/properties/internal/namespace-context";
    protected static final String XINCLUDE_FIXUP_BASE_URIS = "http://apache.org/xml/features/xinclude/fixup-base-uris";
    protected static final String XINCLUDE_FIXUP_LANGUAGE = "http://apache.org/xml/features/xinclude/fixup-language";
    protected static final String XINCLUDE_HANDLER = "http://apache.org/xml/properties/internal/xinclude-handler";
    protected static final String XPOINTER_HANDLER = "http://apache.org/xml/properties/internal/xpointer-handler";

    /* renamed from: f */
    public XPointerHandler f113432f;

    /* renamed from: g */
    public XIncludeHandler f113433g;

    public XPointerParserConfiguration() {
        this(null, null, null);
    }

    @Override // org.apache.xerces.parsers.XML11Configuration
    public void configurePipeline() {
        XMLDocumentSource xMLDocumentSource;
        super.configurePipeline();
        this.fDTDScanner.setDTDHandler(this.fDTDProcessor);
        this.fDTDProcessor.setDTDSource(this.fDTDScanner);
        this.fDTDProcessor.setDTDHandler(this.f113433g);
        this.f113433g.setDTDSource(this.fDTDProcessor);
        this.f113433g.setDTDHandler(this.f113432f);
        this.f113432f.setDTDSource(this.f113433g);
        this.f113432f.setDTDHandler(this.fDTDHandler);
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.setDTDSource(this.f113432f);
        }
        if (this.fFeatures.get("http://apache.org/xml/features/validation/schema") == Boolean.TRUE) {
            xMLDocumentSource = this.fSchemaValidator.getDocumentSource();
        } else {
            xMLDocumentSource = this.fLastComponent;
            this.fLastComponent = this.f113432f;
        }
        XMLDocumentHandler documentHandler = xMLDocumentSource.getDocumentHandler();
        xMLDocumentSource.setDocumentHandler(this.f113433g);
        this.f113433g.setDocumentSource(xMLDocumentSource);
        if (documentHandler != null) {
            this.f113433g.setDocumentHandler(documentHandler);
            documentHandler.setDocumentSource(this.f113433g);
        }
        this.f113433g.setDocumentHandler(this.f113432f);
        this.f113432f.setDocumentSource(this.f113433g);
    }

    @Override // org.apache.xerces.parsers.XML11Configuration
    public void configureXML11Pipeline() {
        XMLDocumentSource xMLDocumentSource;
        super.configureXML11Pipeline();
        this.fXML11DTDScanner.setDTDHandler(this.fXML11DTDProcessor);
        this.fXML11DTDProcessor.setDTDSource(this.fXML11DTDScanner);
        this.fDTDProcessor.setDTDHandler(this.f113433g);
        this.f113433g.setDTDSource(this.fXML11DTDProcessor);
        this.f113433g.setDTDHandler(this.f113432f);
        this.f113432f.setDTDSource(this.f113433g);
        this.f113432f.setDTDHandler(this.fDTDHandler);
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.setDTDSource(this.f113432f);
        }
        if (this.fFeatures.get("http://apache.org/xml/features/validation/schema") == Boolean.TRUE) {
            xMLDocumentSource = this.fSchemaValidator.getDocumentSource();
        } else {
            xMLDocumentSource = this.fLastComponent;
            this.fLastComponent = this.f113432f;
        }
        XMLDocumentHandler documentHandler = xMLDocumentSource.getDocumentHandler();
        xMLDocumentSource.setDocumentHandler(this.f113433g);
        this.f113433g.setDocumentSource(xMLDocumentSource);
        if (documentHandler != null) {
            this.f113433g.setDocumentHandler(documentHandler);
            documentHandler.setDocumentSource(this.f113433g);
        }
        this.f113433g.setDocumentHandler(this.f113432f);
        this.f113432f.setDocumentSource(this.f113433g);
    }

    @Override // org.apache.xerces.parsers.XML11Configuration, org.apache.xerces.util.ParserConfigurationSettings
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        super.setProperty(str, obj);
    }

    public XPointerParserConfiguration(SymbolTable symbolTable) {
        this(symbolTable, null, null);
    }

    public XPointerParserConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this(symbolTable, xMLGrammarPool, null);
    }

    public XPointerParserConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLComponentManager xMLComponentManager) {
        super(symbolTable, xMLGrammarPool, xMLComponentManager);
        XIncludeHandler xIncludeHandler = new XIncludeHandler();
        this.f113433g = xIncludeHandler;
        addCommonComponent(xIncludeHandler);
        XPointerHandler xPointerHandler = new XPointerHandler();
        this.f113432f = xPointerHandler;
        addCommonComponent(xPointerHandler);
        addRecognizedFeatures(new String[]{ALLOW_UE_AND_NOTATION_EVENTS, XINCLUDE_FIXUP_BASE_URIS, XINCLUDE_FIXUP_LANGUAGE});
        addRecognizedProperties(new String[]{XINCLUDE_HANDLER, XPOINTER_HANDLER, "http://apache.org/xml/properties/internal/namespace-context"});
        setFeature(ALLOW_UE_AND_NOTATION_EVENTS, true);
        setFeature(XINCLUDE_FIXUP_BASE_URIS, true);
        setFeature(XINCLUDE_FIXUP_LANGUAGE, true);
        setProperty(XINCLUDE_HANDLER, this.f113433g);
        setProperty(XPOINTER_HANDLER, this.f113432f);
        setProperty("http://apache.org/xml/properties/internal/namespace-context", new XIncludeNamespaceSupport());
    }
}
