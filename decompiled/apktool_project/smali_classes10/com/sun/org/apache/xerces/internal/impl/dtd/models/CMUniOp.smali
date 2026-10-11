.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;
.super Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
.source "SourceFile"


# instance fields
.field private fChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;-><init>(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

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
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->fChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    return-void
.end method


# virtual methods
.method public calcFirstPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->fChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setTo(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method public calcLastPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->fChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setTo(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    return-void
.end method

.method public final getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->fChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    return-object p0
.end method

.method public isNullable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->fChild:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
