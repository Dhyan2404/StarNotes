.class public Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;
.super Lorg/apache/xerces/util/NamespaceSupport;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;
    }
.end annotation


# instance fields
.field public a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    iget-object v0, p1, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    iget v0, p1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iput v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    if-ge v1, v0, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    :cond_0
    iget-object v1, p1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    iput v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v1, v1

    if-gt v1, v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    :cond_1
    iget-object p1, p1, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget-object p0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    invoke-direct {v0, p1, p2}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;-><init>(Lorg/w3c/dom/Element;Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public getEffectiveLocalContext()[Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    aget v0, v0, v1

    iget v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-super {p0, p1}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->c:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->b()V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->c:Z

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    iget v1, v1, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->b:I

    if-lez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/NamespaceSupport;->containsPrefix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public makeGlobal()V
    .locals 2

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iput v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget-object v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :cond_0
    return-void
.end method

.method public setEffectiveContext([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    new-array v2, v0, [Ljava/lang/String;

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :cond_2
    :goto_0
    return-void
.end method
