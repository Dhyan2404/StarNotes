.class public abstract Lcom/graphbuilder/math/Expression;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected parent:Lcom/graphbuilder/math/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    return-void
.end method

.method public static a(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/struc/Bag;Z)V
    .locals 2

    instance-of v0, p0, Lcom/graphbuilder/math/OpNode;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/graphbuilder/math/OpNode;

    iget-object v0, p0, Lcom/graphbuilder/math/OpNode;->leftChild:Lcom/graphbuilder/math/Expression;

    invoke-static {v0, p1, p2}, Lcom/graphbuilder/math/Expression;->a(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/struc/Bag;Z)V

    iget-object p0, p0, Lcom/graphbuilder/math/OpNode;->rightChild:Lcom/graphbuilder/math/Expression;

    invoke-static {p0, p1, p2}, Lcom/graphbuilder/math/Expression;->a(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/struc/Bag;Z)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/graphbuilder/math/VarNode;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    check-cast p0, Lcom/graphbuilder/math/VarNode;

    iget-object p2, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/graphbuilder/struc/Bag;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/graphbuilder/struc/Bag;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/graphbuilder/math/FuncNode;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/graphbuilder/math/FuncNode;

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/graphbuilder/struc/Bag;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/graphbuilder/struc/Bag;->add(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/graphbuilder/math/FuncNode;->numChildren()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/graphbuilder/math/FuncNode;->child(I)Lcom/graphbuilder/math/Expression;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/graphbuilder/math/Expression;->a(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/struc/Bag;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Lcom/graphbuilder/math/Expression;Ljava/lang/StringBuffer;)V
    .locals 4

    instance-of v0, p0, Lcom/graphbuilder/math/OpNode;

    const-string v1, ")"

    const-string v2, "("

    if-eqz v0, :cond_0

    check-cast p0, Lcom/graphbuilder/math/OpNode;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/graphbuilder/math/OpNode;->leftChild:Lcom/graphbuilder/math/Expression;

    invoke-static {v0, p1}, Lcom/graphbuilder/math/Expression;->c(Lcom/graphbuilder/math/Expression;Ljava/lang/StringBuffer;)V

    invoke-virtual {p0}, Lcom/graphbuilder/math/OpNode;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/graphbuilder/math/OpNode;->rightChild:Lcom/graphbuilder/math/Expression;

    invoke-static {p0, p1}, Lcom/graphbuilder/math/Expression;->c(Lcom/graphbuilder/math/Expression;Ljava/lang/StringBuffer;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/graphbuilder/math/TermNode;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/graphbuilder/math/TermNode;

    invoke-virtual {p0}, Lcom/graphbuilder/math/TermNode;->getNegate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lcom/graphbuilder/math/TermNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p0, Lcom/graphbuilder/math/FuncNode;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/graphbuilder/math/FuncNode;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/graphbuilder/math/FuncNode;->numChildren()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/graphbuilder/math/FuncNode;->child(I)Lcom/graphbuilder/math/Expression;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/graphbuilder/math/Expression;->c(Lcom/graphbuilder/math/Expression;Ljava/lang/StringBuffer;)V

    :cond_2
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/graphbuilder/math/FuncNode;->numChildren()I

    move-result v3

    if-ge v2, v3, :cond_3

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Lcom/graphbuilder/math/FuncNode;->child(I)Lcom/graphbuilder/math/Expression;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/graphbuilder/math/Expression;->c(Lcom/graphbuilder/math/Expression;Ljava/lang/StringBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p0}, Lcom/graphbuilder/math/TermNode;->getNegate()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lcom/graphbuilder/math/ValNode;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/graphbuilder/math/ValNode;

    iget-wide v0, p0, Lcom/graphbuilder/math/ValNode;->val:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public final b(Z)[Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/graphbuilder/struc/Bag;

    invoke-direct {v0}, Lcom/graphbuilder/struc/Bag;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/graphbuilder/math/Expression;->a(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/struc/Bag;Z)V

    invoke-virtual {v0}, Lcom/graphbuilder/struc/Bag;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/graphbuilder/struc/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public checkBeforeAccept(Lcom/graphbuilder/math/Expression;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/graphbuilder/math/Expression;->isDescendent(Lcom/graphbuilder/math/Expression;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cyclic reference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expression must be removed parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expression cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D
.end method

.method public getFunctionNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/graphbuilder/math/Expression;->b(Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lcom/graphbuilder/math/Expression;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    return-object p0
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphbuilder/math/Expression;->b(Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDescendent(Lcom/graphbuilder/math/Expression;)Z
    .locals 0

    :goto_0
    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/graphbuilder/math/Expression;->parent:Lcom/graphbuilder/math/Expression;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0, v0}, Lcom/graphbuilder/math/Expression;->c(Lcom/graphbuilder/math/Expression;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
