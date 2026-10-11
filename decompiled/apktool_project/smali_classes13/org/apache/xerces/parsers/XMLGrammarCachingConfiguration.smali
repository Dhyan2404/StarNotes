.class public Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;
.super Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;
.source "SourceFile"


# static fields
.field public static final BIG_PRIME:I = 0x7f7

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final fStaticGrammarPool:Lorg/apache/xerces/util/XMLGrammarPoolImpl;

.field protected static final fStaticSymbolTable:Lorg/apache/xerces/util/SynchronizedSymbolTable;


# instance fields
.field protected fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

.field protected fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xerces/util/SynchronizedSymbolTable;

    const/16 v1, 0x7f7

    invoke-direct {v0, v1}, Lorg/apache/xerces/util/SynchronizedSymbolTable;-><init>(I)V

    sput-object v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticSymbolTable:Lorg/apache/xerces/util/SynchronizedSymbolTable;

    new-instance v0, Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticSymbolTable:Lorg/apache/xerces/util/SynchronizedSymbolTable;

    sget-object v1, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    new-instance p1, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object p2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object p1, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string p2, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object p3, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {p1, p2, p3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    iget-object p2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object p3, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {p1, p2, p3}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    iput-object p1, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    return-void
.end method


# virtual methods
.method public c(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/dtd/DTDGrammar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammar(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "http://www.w3.org/TR/REC-xml"

    invoke-interface {p0, v1, v0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    :cond_1
    return-object p1
.end method

.method public checkFeature(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xerces/parsers/XML11Configuration;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method public checkProperty(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xerces/parsers/XML11Configuration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public clearGrammarPool()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->clear()V

    return-void
.end method

.method public d(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/parsers/XML11Configuration;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    new-instance v2, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v2, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "schema/external-schemaLocation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/XML11Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {p0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p0, v1}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {p0, v1, v0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    :cond_2
    return-object p1
.end method

.method public lockGrammarPool()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->lockPool()V

    return-void
.end method

.method public parseGrammar(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/xerces/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseGrammar(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object p0

    return-object p0
.end method

.method public parseGrammar(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->d(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->c(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public unlockGrammarPool()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {p0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->unlockPool()V

    return-void
.end method
