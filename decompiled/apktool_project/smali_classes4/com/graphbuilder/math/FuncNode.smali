.class public Lcom/graphbuilder/math/FuncNode;
.super Lcom/graphbuilder/math/TermNode;
.source "SourceFile"


# instance fields
.field public a:Lcom/graphbuilder/struc/Bag;

.field public b:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/math/TermNode;-><init>(Ljava/lang/String;Z)V

    new-instance p1, Lcom/graphbuilder/struc/Bag;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/graphbuilder/struc/Bag;-><init>(I)V

    iput-object p1, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    new-array p1, p2, [D

    iput-object p1, p0, Lcom/graphbuilder/math/FuncNode;->b:[D

    return-void
.end method


# virtual methods
.method public add(Lcom/graphbuilder/math/Expression;)V
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {v0}, Lcom/graphbuilder/struc/Bag;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/graphbuilder/math/FuncNode;->insert(Lcom/graphbuilder/math/Expression;I)V

    return-void
.end method

.method public child(I)Lcom/graphbuilder/math/Expression;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphbuilder/math/Expression;

    return-object p0
.end method

.method public eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D
    .locals 5

    iget-object v0, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {v0}, Lcom/graphbuilder/struc/Bag;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/graphbuilder/math/FuncNode;->b:[D

    invoke-virtual {p0, v1}, Lcom/graphbuilder/math/FuncNode;->child(I)Lcom/graphbuilder/math/Expression;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/graphbuilder/math/Expression;->eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/graphbuilder/math/FuncMap;->getFunction(Ljava/lang/String;I)Lcom/graphbuilder/math/func/Function;

    move-result-object p1

    iget-object p2, p0, Lcom/graphbuilder/math/FuncNode;->b:[D

    invoke-interface {p1, p2, v0}, Lcom/graphbuilder/math/func/Function;->of([DI)D

    move-result-wide p1

    iget-boolean p0, p0, Lcom/graphbuilder/math/TermNode;->negate:Z

    if-eqz p0, :cond_1

    neg-double p1, p1

    :cond_1
    return-wide p1
.end method

.method public insert(Lcom/graphbuilder/math/Expression;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/graphbuilder/math/Expression;->checkBeforeAccept(Lcom/graphbuilder/math/Expression;)V

    iget-object v0, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {v0}, Lcom/graphbuilder/struc/Bag;->getCapacity()I

    move-result v0

    iget-object v1, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {v1, p1, p2}, Lcom/graphbuilder/struc/Bag;->insert(Ljava/lang/Object;I)V

    iget-object p2, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p2}, Lcom/graphbuilder/struc/Bag;->getCapacity()I

    move-result p2

    if-eq v0, p2, :cond_0

    new-array p2, p2, [D

    iput-object p2, p0, Lcom/graphbuilder/math/FuncNode;->b:[D

    :cond_0
    iput-object p0, p1, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    return-void
.end method

.method public numChildren()I
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0}, Lcom/graphbuilder/struc/Bag;->size()I

    move-result p0

    return p0
.end method

.method public remove(Lcom/graphbuilder/math/Expression;)V
    .locals 2

    iget-object v0, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {v0}, Lcom/graphbuilder/struc/Bag;->size()I

    move-result v0

    iget-object v1, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {v1, p1}, Lcom/graphbuilder/struc/Bag;->remove(Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/graphbuilder/math/FuncNode;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0}, Lcom/graphbuilder/struc/Bag;->size()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    :cond_0
    return-void
.end method
