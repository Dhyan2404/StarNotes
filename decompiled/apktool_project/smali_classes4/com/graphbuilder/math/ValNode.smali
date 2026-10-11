.class public Lcom/graphbuilder/math/ValNode;
.super Lcom/graphbuilder/math/Expression;
.source "SourceFile"


# instance fields
.field protected val:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lcom/graphbuilder/math/Expression;-><init>()V

    iput-wide p1, p0, Lcom/graphbuilder/math/ValNode;->val:D

    return-void
.end method


# virtual methods
.method public eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D
    .locals 0

    iget-wide p0, p0, Lcom/graphbuilder/math/ValNode;->val:D

    return-wide p0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/graphbuilder/math/ValNode;->val:D

    return-wide v0
.end method

.method public setValue(D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphbuilder/math/ValNode;->val:D

    return-void
.end method
