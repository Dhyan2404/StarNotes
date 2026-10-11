.class public final Lcom/sunia/HTREnginev2/tqe$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/tqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:I

.field public c:Z

.field public final synthetic d:Lcom/sunia/HTREnginev2/tqe;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/tqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    const/16 p1, 0x20

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe$a;->a:[Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sunia/HTREnginev2/tqe$a;->b:I

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/tqe$a;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/sunia/HTREnginev2/tqe$a;->b:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe$a;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/tqe$a;->a:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe$a;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/sunia/HTREnginev2/tqe$a;->b:I

    add-int/lit8 v2, v1, 0x1

    aput-object p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/tqe$a;->b:I

    aput-object p2, v0, v2

    return-void
.end method

.method public final b()V
    .locals 9

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/tqe;->b(Lcom/sunia/HTREnginev2/tqe;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/tqe;->b(Lcom/sunia/HTREnginev2/tqe;)Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    iget-object v7, v6, Lcom/sunia/HTREnginev2/tqe;->u:Lorg/apache/xerces/xni/QName;

    invoke-static {v6, v7, v4}, Lcom/sunia/HTREnginev2/tqe;->c(Lcom/sunia/HTREnginev2/tqe;Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    iget-object v4, v4, Lcom/sunia/HTREnginev2/tqe;->u:Lorg/apache/xerces/xni/QName;

    iget-object v6, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v6, v7, :cond_6

    iget-object v6, v4, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_4
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    iget-object v6, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {v6}, Lcom/sunia/HTREnginev2/tqe;->d(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/SymbolTable;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_5
    invoke-virtual {p0, v4, v8}, Lcom/sunia/HTREnginev2/tqe$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sunia/HTREnginev2/tqe$a;->b:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe$a;->a:[Ljava/lang/String;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-object p0, v1, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/util/NamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaredPrefixCount()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result p0

    return p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/tqe$a;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tqe$a;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/tqe$a;->c:Z

    :cond_0
    iget v1, p0, Lcom/sunia/HTREnginev2/tqe$a;->b:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xerces/util/NamespaceSupport;->containsPrefix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tqe$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public popContext()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    return-void
.end method

.method public pushContext()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe$a;->d:Lcom/sunia/HTREnginev2/tqe;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tqe;->a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/tqe$a;->c:Z

    iput v0, p0, Lcom/sunia/HTREnginev2/tqe$a;->b:I

    return-void
.end method
