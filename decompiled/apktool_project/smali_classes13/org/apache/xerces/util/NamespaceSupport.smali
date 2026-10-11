.class public Lorg/apache/xerces/util/NamespaceSupport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/NamespaceSupport$Prefixes;
    }
.end annotation


# instance fields
.field protected fContext:[I

.field protected fCurrentContext:I

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field protected fPrefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    invoke-interface {p1}, Lorg/apache/xerces/xni/NamespaceContext;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public containsPrefix(Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v3, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v2, v2, v3

    const/4 v3, 0x1

    if-gt v0, v2, :cond_2

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iget-object v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v4, v2

    if-ne v0, v4, :cond_1

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    aput-object p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput-object p2, v0, v2

    return v3

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    aget-object v4, v2, v4

    if-ne v4, p1, :cond_3

    sub-int/2addr v0, v3

    aput-object p2, v2, v0

    return v3

    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 7

    iget-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    move v1, v2

    :cond_1
    :goto_0
    iget v4, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sub-int/2addr v4, v2

    if-lt v1, v4, :cond_2

    new-instance v0, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3}, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lorg/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v0

    :cond_2
    iget-object v4, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    aget-object v4, v4, v1

    move v5, v0

    :goto_1
    if-lt v5, v3, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-ne v6, v4, :cond_4

    move v5, v0

    :goto_2
    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    aput-object v4, v5, v3

    move v3, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget p0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget p0, v1, p0

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getDeclaredPrefixCount()I
    .locals 2

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget p0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget p0, v1, p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    if-ne v2, p1, :cond_1

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v2, v1, v2

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget-object p0, v1, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public popContext()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    return-void
.end method

.method public pushContext()V
    .locals 4

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget p0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput p0, v0, v1

    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    aput v0, v1, v0

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    aput-object v3, v1, v0

    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    aput-object v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    return-void
.end method
