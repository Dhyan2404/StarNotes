.class public final Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;
.super Lcom/sun/org/apache/xerces/internal/util/SymbolTable;
.source "SourceFile"


# instance fields
.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->containsSymbol([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hash([CII)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ShadowedSymbolTable;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->hash([CII)I

    move-result p0

    return p0
.end method
