.class public Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;
.super Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;
.source "SourceFile"


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"


# instance fields
.field protected fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field protected fNonXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

.field protected fXIncludeEnabled:Z

.field protected fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

.field protected fXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const-string p1, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const-string p2, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const-string p3, "http://apache.org/xml/features/xinclude/fixup-language"

    .line 6
    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string v0, "http://apache.org/xml/properties/internal/xinclude-handler"

    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {p0, p3, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 13
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    .line 14
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    .line 15
    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public configurePipeline()V
    .locals 3

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->configurePipeline()V

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    const-string v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->addCommonComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    if-eq v0, v2, :cond_2

    if-nez v2, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-interface {v1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    if-eq v0, v2, :cond_6

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public configureXML11Pipeline()V
    .locals 3

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->configureXML11Pipeline()V

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    const-string v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->addCommonComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    if-eq v0, v2, :cond_2

    if-nez v2, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fXML11DTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fXML11DTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fXML11DTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fXML11DTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fXML11DTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11DTDProcessor;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fXML11DTDProcessor:Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-interface {v1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    if-eq v0, v2, :cond_6

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fConfigUpdated:Z

    return p0

    :cond_0
    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    return p0

    :cond_1
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->getFeature0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fConfigUpdated:Z

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method
