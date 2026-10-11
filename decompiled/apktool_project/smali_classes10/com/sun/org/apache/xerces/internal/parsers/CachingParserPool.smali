.class public Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;,
        Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHADOW_GRAMMAR_POOL:Z

.field public static final DEFAULT_SHADOW_SYMBOL_TABLE:Z


# instance fields
.field protected fShadowGrammarPool:Z

.field protected fShadowSymbolTable:Z

.field protected fSynchronizedGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field protected fSynchronizedSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fShadowSymbolTable:Z

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fShadowGrammarPool:Z

    .line 5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SynchronizedSymbolTable;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 6
    new-instance p1, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$SynchronizedGrammarPool;-><init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public createDOMParser()Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fShadowSymbolTable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    :goto_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fShadowGrammarPool:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;-><init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    return-object p0
.end method

.method public createSAXParser()Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fShadowSymbolTable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    :goto_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fShadowGrammarPool:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool$ShadowedGrammarPool;-><init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    return-object p0
.end method

.method public getSymbolTable()Lcom/sun/org/apache/xerces/internal/util/SymbolTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-object p0
.end method

.method public getXMLGrammarPool()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    return-object p0
.end method

.method public setShadowSymbolTable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/CachingParserPool;->fShadowSymbolTable:Z

    return-void
.end method
