.class public Lcom/graphbuilder/math/VarNode;
.super Lcom/graphbuilder/math/TermNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/math/TermNode;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D
    .locals 0

    iget-object p2, p0, Lcom/graphbuilder/math/TermNode;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/graphbuilder/math/VarMap;->getValue(Ljava/lang/String;)D

    move-result-wide p1

    iget-boolean p0, p0, Lcom/graphbuilder/math/TermNode;->negate:Z

    if-eqz p0, :cond_0

    neg-double p1, p1

    :cond_0
    return-wide p1
.end method
