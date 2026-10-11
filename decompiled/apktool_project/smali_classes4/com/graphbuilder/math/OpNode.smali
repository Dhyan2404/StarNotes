.class public abstract Lcom/graphbuilder/math/OpNode;
.super Lcom/graphbuilder/math/Expression;
.source "SourceFile"


# instance fields
.field protected leftChild:Lcom/graphbuilder/math/Expression;

.field protected rightChild:Lcom/graphbuilder/math/Expression;


# direct methods
.method public constructor <init>(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/math/Expression;)V
    .locals 1

    invoke-direct {p0}, Lcom/graphbuilder/math/Expression;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphbuilder/math/OpNode;->leftChild:Lcom/graphbuilder/math/Expression;

    iput-object v0, p0, Lcom/graphbuilder/math/OpNode;->rightChild:Lcom/graphbuilder/math/Expression;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/math/OpNode;->setLeftChild(Lcom/graphbuilder/math/Expression;)V

    invoke-virtual {p0, p2}, Lcom/graphbuilder/math/OpNode;->setRightChild(Lcom/graphbuilder/math/Expression;)V

    return-void
.end method


# virtual methods
.method public getLeftChild()Lcom/graphbuilder/math/Expression;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/math/OpNode;->leftChild:Lcom/graphbuilder/math/Expression;

    return-object p0
.end method

.method public getRightChild()Lcom/graphbuilder/math/Expression;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/math/OpNode;->rightChild:Lcom/graphbuilder/math/Expression;

    return-object p0
.end method

.method public abstract getSymbol()Ljava/lang/String;
.end method

.method public setLeftChild(Lcom/graphbuilder/math/Expression;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/graphbuilder/math/Expression;->checkBeforeAccept(Lcom/graphbuilder/math/Expression;)V

    iget-object v0, p0, Lcom/graphbuilder/math/OpNode;->leftChild:Lcom/graphbuilder/math/Expression;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    :cond_0
    iput-object p0, p1, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    iput-object p1, p0, Lcom/graphbuilder/math/OpNode;->leftChild:Lcom/graphbuilder/math/Expression;

    return-void
.end method

.method public setRightChild(Lcom/graphbuilder/math/Expression;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/graphbuilder/math/Expression;->checkBeforeAccept(Lcom/graphbuilder/math/Expression;)V

    iget-object v0, p0, Lcom/graphbuilder/math/OpNode;->rightChild:Lcom/graphbuilder/math/Expression;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    :cond_0
    iput-object p0, p1, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    iput-object p1, p0, Lcom/graphbuilder/math/OpNode;->rightChild:Lcom/graphbuilder/math/Expression;

    return-void
.end method
