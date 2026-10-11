.class public Lorg/apache/xerces/impl/dtd/models/CMUniOp;
.super Lorg/apache/xerces/impl/dtd/models/CMNode;
.source "SourceFile"


# instance fields
.field public final g:Lorg/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILorg/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_UST"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/apache/xerces/impl/dtd/models/CMUniOp;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    return-void
.end method


# virtual methods
.method public final b()Lorg/apache/xerces/impl/dtd/models/CMNode;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/CMUniOp;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    return-object p0
.end method

.method public calcFirstPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/CMUniOp;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method public calcLastPos(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/CMUniOp;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method public isNullable()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/CMUniOp;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
