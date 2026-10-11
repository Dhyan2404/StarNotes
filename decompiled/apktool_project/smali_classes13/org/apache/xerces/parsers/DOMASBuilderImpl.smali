.class public Lorg/apache/xerces/parsers/DOMASBuilderImpl;
.super Lorg/apache/xerces/parsers/DOMParserImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom3/as/DOMASBuilder;


# static fields
.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field protected fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

.field protected fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0, p1}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    invoke-direct {p0, v0}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {p0, v0}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method


# virtual methods
.method public getAbstractSchema()Lorg/apache/xerces/dom3/as/ASModel;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    return-object p0
.end method

.method public parseASInputSource(Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/dom3/as/ASModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/DOMParserImpl;->o(Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->y(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/dom3/as/ASModel;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method public parseASURI(Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/apache/xerces/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->y(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/dom3/as/ASModel;

    move-result-object p0

    return-object p0
.end method

.method public setAbstractSchema(Lorg/apache/xerces/dom3/as/ASModel;)V
    .locals 2

    check-cast p1, Lorg/apache/xerces/dom/ASModelImpl;

    iput-object p1, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    iget-object p1, p0, Lorg/apache/xerces/parsers/XMLParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    invoke-direct {p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/parsers/XMLParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->x(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    :cond_1
    return-void
.end method

.method public final u(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 2

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/xerces/dom/ASModelImpl;

    invoke-direct {v0}, Lorg/apache/xerces/dom/ASModelImpl;-><init>()V

    aget-object v1, p0, p2

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/ASModelImpl;->setGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-virtual {p1, v0}, Lorg/apache/xerces/dom/ASModelImpl;->addASModel(Lorg/apache/xerces/dom3/as/ASModel;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->reset()V

    iget-object v0, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->w(Lorg/apache/xerces/dom/ASModelImpl;)V

    :cond_0
    return-void
.end method

.method public final w(Lorg/apache/xerces/dom/ASModelImpl;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xerces/dom/ASModelImpl;->getGrammar()Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p1}, Lorg/apache/xerces/dom/ASModelImpl;->getGrammar()Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/dom/ASModelImpl;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->w(Lorg/apache/xerces/dom/ASModelImpl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final x(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    invoke-virtual {p1}, Lorg/apache/xerces/dom/ASModelImpl;->getGrammar()Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/dom/ASModelImpl;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->x(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public y(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/dom3/as/ASModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->v()V

    iget-object v0, p0, Lorg/apache/xerces/parsers/XMLParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    invoke-virtual {v0}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->lockGrammarPool()V

    invoke-virtual {v0, p1}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->d(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->unlockGrammarPool()V

    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/xerces/dom/ASModelImpl;

    invoke-direct {v0}, Lorg/apache/xerces/dom/ASModelImpl;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    iget-object p1, p0, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->u(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/impl/xs/XSGrammarBucket;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
