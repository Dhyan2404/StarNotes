.class public Lorg/apache/xerces/impl/xs/models/XSCMLeaf;
.super Lorg/apache/xerces/impl/dtd/models/CMNode;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/Object;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->g:Ljava/lang/Object;

    iput p3, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->h:I

    iput p4, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->i:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->h:I

    return p0
.end method

.method public calcFirstPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->i:I

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

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->i:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    :goto_0
    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->i:I

    return p0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->i:I

    return-void
.end method

.method public isNullable()Z
    .locals 1

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->i:I

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->i:I

    if-ltz v1, :cond_0

    const-string v1, " (Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->i:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
