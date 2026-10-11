.class public Lorg/apache/xerces/parsers/XPointerParserConfiguration;
.super Lorg/apache/xerces/parsers/XML11Configuration;
.source "SourceFile"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"

.field protected static final XPOINTER_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xpointer-handler"


# instance fields
.field public f:Lorg/apache/xerces/xpointer/XPointerHandler;

.field public g:Lorg/apache/xerces/xinclude/XIncludeHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/parsers/XPointerParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    new-instance p1, Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {p1}, Lorg/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    new-instance p1, Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p1}, Lorg/apache/xerces/xpointer/XPointerHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    const-string p1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const-string p2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const-string p3, "http://apache.org/xml/features/xinclude/fixup-language"

    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string v0, "http://apache.org/xml/properties/internal/xinclude-handler"

    const-string v1, "http://apache.org/xml/properties/internal/xpointer-handler"

    const-string v2, "http://apache.org/xml/properties/internal/namespace-context"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p0, p2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p0, p3, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-direct {p1}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    invoke-virtual {p0, v2, p1}, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public configurePipeline()V
    .locals 3

    invoke-super {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDTDSource;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-interface {v0}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    iget-object p0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    return-void
.end method

.method public configureXML11Pipeline()V
    .locals 3

    invoke-super {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    iput-object v1, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-interface {v0}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->f:Lorg/apache/xerces/xpointer/XPointerHandler;

    iget-object p0, p0, Lorg/apache/xerces/parsers/XPointerParserConfiguration;->g:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
