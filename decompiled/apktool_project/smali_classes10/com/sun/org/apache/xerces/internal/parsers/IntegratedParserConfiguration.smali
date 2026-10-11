.class public Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;
.super Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;
.source "SourceFile"


# instance fields
.field protected fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    .line 5
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    .line 6
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    .line 7
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    .line 8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    return-void
.end method


# virtual methods
.method public configurePipeline()V
    .locals 6

    const-string v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->configureDTDPipeline()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "http://apache.org/xml/properties/internal/validator/dtd"

    const-string v3, "http://apache.org/xml/properties/internal/document-scanner"

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v4, "http://apache.org/xml/properties/internal/namespace-binder"

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fNamespaceBinder:Lcom/sun/org/apache/xerces/internal/impl/XMLNamespaceBinder;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    if-nez v0, :cond_7

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v2, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DTDConfiguration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/StandardParserConfiguration;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    :cond_9
    return-void
.end method

.method public createDTDValidator()Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNSDTDValidator;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLNSDTDValidator;-><init>()V

    return-object p0
.end method

.method public createDocumentScanner()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    return-object v0
.end method
