.class public Lorg/apache/xerces/impl/dtd/models/CMLeaf;
.super Lorg/apache/xerces/impl/dtd/models/CMNode;
.source "SourceFile"


# instance fields
.field public final g:Lorg/apache/xerces/xni/QName;

.field public h:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/QName;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->g:Lorg/apache/xerces/xni/QName;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/QName;I)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->g:Lorg/apache/xerces/xni/QName;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iput p2, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    return-void
.end method


# virtual methods
.method public final b()Lorg/apache/xerces/xni/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->g:Lorg/apache/xerces/xni/QName;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    return p0
.end method

.method public calcFirstPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget p0, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    :goto_0
    return-void
.end method

.method public calcLastPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget p0, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    return-void
.end method

.method public isNullable()Z
    .locals 1

    iget p0, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->g:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1}, Lorg/apache/xerces/xni/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->g:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->g:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    if-ltz v2, :cond_0

    const-string v2, " (Pos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
