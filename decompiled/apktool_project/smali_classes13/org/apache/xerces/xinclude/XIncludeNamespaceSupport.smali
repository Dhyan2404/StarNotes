.class public Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;
.super Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;
.source "SourceFile"


# instance fields
.field public a:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->a:[Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    const/16 p1, 0x8

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->a:[Z

    return-void
.end method


# virtual methods
.method public getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->a:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public pushContext()V
    .locals 5

    invoke-super {p0}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    iget v0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->a:[Z

    array-length v3, v2

    if-ne v0, v3, :cond_0

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->a:[Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->a:[Z

    iget p0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aput-boolean v1, v0, p0

    return-void
.end method

.method public setContextInvalid()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->a:[Z

    iget p0, p0, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v1, 0x0

    aput-boolean v1, v0, p0

    return-void
.end method
