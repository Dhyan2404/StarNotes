.class public Lcom/github/mikephil/charting/data/filter/Approximator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/filter/Approximator$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([[F)[F
    .locals 8

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v3, p1, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array p0, v2, [F

    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    array-length v5, v4

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    aput v7, p0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public reduceWithDouglasPeucker([FF)[F
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    new-instance v6, Lcom/github/mikephil/charting/data/filter/Approximator$a;

    const/4 v7, 0x0

    aget v2, p1, v7

    const/4 v8, 0x1

    aget v3, p1, v8

    array-length v0, p1

    const/4 v9, 0x2

    sub-int/2addr v0, v9

    aget v4, p1, v0

    array-length v0, p1

    sub-int/2addr v0, v8

    aget v5, p1, v0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/mikephil/charting/data/filter/Approximator$a;-><init>(Lcom/github/mikephil/charting/data/filter/Approximator;FFFF)V

    const/4 v0, 0x0

    move v2, v7

    move v1, v9

    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v9

    if-ge v1, v3, :cond_1

    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    invoke-virtual {v6, v3, v4}, Lcom/github/mikephil/charting/data/filter/Approximator$a;->a(FF)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_0

    move v2, v1

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, p2

    if-lez v0, :cond_2

    add-int/lit8 v0, v2, 0x2

    invoke-static {p1, v7, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/mikephil/charting/data/filter/Approximator;->reduceWithDouglasPeucker([FF)[F

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/data/filter/Approximator;->reduceWithDouglasPeucker([FF)[F

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v9, p2}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p1

    new-array p2, v9, [[F

    aput-object v0, p2, v7

    aput-object p1, p2, v8

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/data/filter/Approximator;->a([[F)[F

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/filter/Approximator$a;->b()[F

    move-result-object p0

    return-object p0
.end method
