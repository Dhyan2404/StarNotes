.class public Lcom/graphbuilder/math/func/CombinFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphbuilder/math/func/Function;


# instance fields
.field public final a:Lcom/graphbuilder/math/PascalsTriangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphbuilder/math/PascalsTriangle;

    invoke-direct {v0}, Lcom/graphbuilder/math/PascalsTriangle;-><init>()V

    iput-object v0, p0, Lcom/graphbuilder/math/func/CombinFunction;->a:Lcom/graphbuilder/math/PascalsTriangle;

    return-void
.end method


# virtual methods
.method public acceptNumParam(I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public of([DI)D
    .locals 2

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    double-to-int p2, v0

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    double-to-int p1, v0

    iget-object p0, p0, Lcom/graphbuilder/math/func/CombinFunction;->a:Lcom/graphbuilder/math/PascalsTriangle;

    invoke-virtual {p0, p2, p1}, Lcom/graphbuilder/math/PascalsTriangle;->nCr(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "combin(n, r)"

    return-object p0
.end method
