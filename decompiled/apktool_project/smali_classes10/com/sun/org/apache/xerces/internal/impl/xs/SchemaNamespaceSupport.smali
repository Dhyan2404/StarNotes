.class public Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;
.super Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    .line 3
    iget v0, p1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespaceSize:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespaceSize:I

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fCurrentContext:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fCurrentContext:I

    .line 8
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fContext:[I

    array-length v1, v1

    if-gt v1, v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 9
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fContext:[I

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fContext:[I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fContext:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getEffectiveLocalContext()[Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fCurrentContext:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fContext:[I

    aget v0, v0, v1

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespaceSize:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public makeGlobal()V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fCurrentContext:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fCurrentContext:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fContext:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespaceSize:I

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
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->pushContext()V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespaceSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    new-array v2, v0, [Ljava/lang/String;

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespaceSize:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fNamespaceSize:I

    :cond_2
    :goto_0
    return-void
.end method
