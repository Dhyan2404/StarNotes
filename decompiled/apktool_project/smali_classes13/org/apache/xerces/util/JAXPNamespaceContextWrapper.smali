.class public final Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/NamespaceContext;


# instance fields
.field public a:Ljavax/xml/namespace/NamespaceContext;

.field public b:Lorg/apache/xerces/util/SymbolTable;

.field public c:Ljava/util/List;

.field public final d:Ljava/util/Vector;

.field public e:[I

.field public f:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->d:Ljava/util/Vector;

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->e:[I

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Ljava/util/TreeSet;

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->d:Ljava/util/Vector;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDeclaredPrefixCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->c:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDeclaredPrefixes()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->c:Ljava/util/List;

    return-object p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->a:Ljavax/xml/namespace/NamespaceContext;

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->a:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_3

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-interface {v0, p1}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->b:Lorg/apache/xerces/util/SymbolTable;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSymbolTable()Lorg/apache/xerces/util/SymbolTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->b:Lorg/apache/xerces/util/SymbolTable;

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->a:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->b:Lorg/apache/xerces/util/SymbolTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public popContext()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->d:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->e:[I

    iget v2, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->f:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->f:I

    aget p0, v1, v2

    invoke-virtual {v0, p0}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method

.method public pushContext()V
    .locals 4

    iget v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->e:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->e:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->e:[I

    iget v1, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->f:I

    iget-object v2, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->f:I

    iget-object v1, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->e:[I

    aput v0, v1, v0

    iget-object p0, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->d:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public setDeclaredPrefixes(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->c:Ljava/util/List;

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->a:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->b:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method
