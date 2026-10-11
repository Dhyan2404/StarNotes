.class public Lorg/apache/xerces/parsers/CachingParserPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;,
        Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHADOW_GRAMMAR_POOL:Z

.field public static final DEFAULT_SHADOW_SYMBOL_TABLE:Z


# instance fields
.field protected fShadowGrammarPool:Z

.field protected fShadowSymbolTable:Z

.field protected fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/xerces/parsers/CachingParserPool;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    iput-boolean v0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    new-instance v0, Lorg/apache/xerces/util/SynchronizedSymbolTable;

    invoke-direct {v0, p1}, Lorg/apache/xerces/util/SynchronizedSymbolTable;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance p1, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;

    invoke-direct {p1, p2}, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    iput-object p1, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public createDOMParser()Lorg/apache/xerces/parsers/DOMParser;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xerces/util/ShadowedSymbolTable;

    iget-object v1, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lorg/apache/xerces/util/ShadowedSymbolTable;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    :goto_0
    iget-boolean v1, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;

    iget-object p0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {v1, p0}, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_1
    new-instance p0, Lorg/apache/xerces/parsers/DOMParser;

    invoke-direct {p0, v0, v1}, Lorg/apache/xerces/parsers/DOMParser;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-object p0
.end method

.method public createSAXParser()Lorg/apache/xerces/parsers/SAXParser;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xerces/util/ShadowedSymbolTable;

    iget-object v1, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lorg/apache/xerces/util/ShadowedSymbolTable;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    :goto_0
    iget-boolean v1, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;

    iget-object p0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {v1, p0}, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    :goto_1
    new-instance p0, Lorg/apache/xerces/parsers/SAXParser;

    invoke-direct {p0, v0, v1}, Lorg/apache/xerces/parsers/SAXParser;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-object p0
.end method

.method public getSymbolTable()Lorg/apache/xerces/util/SymbolTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-object p0
.end method

.method public getXMLGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-object p0
.end method

.method public setShadowSymbolTable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    return-void
.end method
