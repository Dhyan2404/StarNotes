.class public abstract Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fFirstPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

.field private fFollowPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

.field private fLastPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

.field private fMaxStates:I

.field private fType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fFirstPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fFollowPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fLastPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fMaxStates:I

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fType:I

    return-void
.end method


# virtual methods
.method public abstract calcFirstPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
.end method

.method public abstract calcLastPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
.end method

.method public final firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fFirstPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fMaxStates:I

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fFirstPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->calcFirstPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fFirstPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    return-object p0
.end method

.method public abstract isNullable()Z
.end method

.method public final lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fLastPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fMaxStates:I

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fLastPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->calcLastPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fLastPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    return-object p0
.end method

.method public final setFollowPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fFollowPos:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    return-void
.end method

.method public final setMaxStates(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fMaxStates:I

    return-void
.end method

.method public final type()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->fType:I

    return p0
.end method
