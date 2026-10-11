.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;
.super Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
.source "SourceFile"


# instance fields
.field private fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

.field private fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;-><init>(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_BST"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    return-void
.end method


# virtual methods
.method public calcFirstPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setTo(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setTo(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_BST"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public calcLastPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setTo(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setTo(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_BST"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    return-object p0
.end method

.method public final getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    return-object p0
.end method

.method public isNullable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fLeftChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->fRightChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ImplementationMessages.VAL_BST"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
