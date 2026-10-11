.class public final Lorg/apache/xerces/util/ShadowedSymbolTable;
.super Lorg/apache/xerces/util/SymbolTable;
.source "SourceFile"


# instance fields
.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hash([CII)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result p0

    return p0
.end method
