.class public Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;
.super Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;
.source "SourceFile"


# static fields
.field public static final BIG_PRIME:I = 0x7f7

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final fStaticGrammarPool:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;

.field protected static final fStaticSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;


# instance fields
.field protected fDTDLoader:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;

.field protected fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;

    const/16 v1, 0x7f7

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fStaticSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fStaticSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    .line 5
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    const-string p2, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 6
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-direct {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;

    return-void
.end method


# virtual methods
.method public checkFeature(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method public checkProperty(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public clearGrammarPool()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->clear()V

    return-void
.end method

.method public lockGrammarPool()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->lockPool()V

    return-void
.end method

.method public parseDTD(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->getEntityResolver()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;->loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "http://www.w3.org/TR/REC-xml"

    invoke-interface {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    :cond_1
    return-object p1
.end method

.method public parseGrammar(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->parseXMLSchema(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "http://www.w3.org/TR/REC-xml"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->parseDTD(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public parseGrammar(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->parseGrammar(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public parseXMLSchema(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->getEntityResolver()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "schema/external-schemaLocation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadGrammar(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    :cond_2
    return-object p1
.end method

.method public unlockGrammarPool()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;->unlockPool()V

    return-void
.end method
