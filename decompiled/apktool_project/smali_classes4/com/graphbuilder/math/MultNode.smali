.class public Lcom/graphbuilder/math/MultNode;
.super Lcom/graphbuilder/math/OpNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/math/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/math/OpNode;-><init>(Lcom/graphbuilder/math/Expression;Lcom/graphbuilder/math/Expression;)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D
    .locals 2

    iget-object v0, p0, Lcom/graphbuilder/math/OpNode;->leftChild:Lcom/graphbuilder/math/Expression;

    invoke-virtual {v0, p1, p2}, Lcom/graphbuilder/math/Expression;->eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/graphbuilder/math/OpNode;->rightChild:Lcom/graphbuilder/math/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/graphbuilder/math/Expression;->eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 0

    const-string p0, "*"

    return-object p0
.end method
