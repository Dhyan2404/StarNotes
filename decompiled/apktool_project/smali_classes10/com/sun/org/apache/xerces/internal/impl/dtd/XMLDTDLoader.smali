.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;
.super Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarLoader;


# static fields
.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final LOADER_RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"


# instance fields
.field protected fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

.field protected fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

.field protected fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

.field protected fLocale:Ljava/util/Locale;

.field private fStrictURI:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    const-string v1, "http://apache.org/xml/features/standard-uri-conformant"

    const-string v2, "http://xml.org/sax/features/validation"

    const-string v3, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v5, "http://apache.org/xml/properties/internal/grammar-pool"

    const-string v6, "http://apache.org/xml/properties/internal/validator/dtd"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->LOADER_RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fStrictURI:Z

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 7
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-nez p3, :cond_0

    .line 8
    new-instance p3, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;-><init>()V

    .line 9
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/DefaultErrorHandler;-><init>()V

    const-string p2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p3, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_0
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 11
    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object p2

    if-nez p2, :cond_1

    .line 12
    new-instance p2, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {p2}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 14
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v0, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {p1, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    .line 15
    :cond_1
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    .line 16
    instance-of p1, p4, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    if-eqz p1, :cond_2

    .line 17
    check-cast p4, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    goto :goto_0

    .line 18
    :cond_2
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    const-string p2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    .line 21
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    .line 22
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    .line 23
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->reset()V

    return-void
.end method


# virtual methods
.method public getEntityResolver()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    return-object p0
.end method

.method public getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    return p0

    :cond_0
    const-string v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z

    return p0

    :cond_1
    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-object p0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    return-object p0

    :cond_1
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    return-object p0

    :cond_3
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-object p0

    :cond_4
    const-string v0, "http://apache.org/xml/properties/internal/validator/dtd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidator;

    return-object p0

    :cond_5
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->LOADER_RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->reset()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fStrictURI:Z

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->setStandalone(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarBucket:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammarBucket;->setActiveGrammar(Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->scanDTDExternalSubset(Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->closeReaders()V

    throw p1

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->closeReaders()V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    if-eqz v2, :cond_0

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    aput-object p1, v0, v1

    const-string p1, "http://www.w3.org/TR/REC-xml"

    invoke-interface {v2, p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    return-object p0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    return-void
.end method

.method public setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    return-void
.end method

.method public setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fValidation:Z

    goto :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fWarnDuplicateAttdef:Z

    goto :goto_0

    :cond_1
    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fStrictURI:Z

    :goto_0
    return-void

    :cond_3
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    goto :goto_0

    :cond_4
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDProcessor;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_0
    return-void

    :cond_5
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0
.end method
