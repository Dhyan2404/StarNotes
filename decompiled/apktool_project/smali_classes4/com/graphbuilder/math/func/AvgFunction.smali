.class public Lcom/graphbuilder/math/func/AvgFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphbuilder/math/func/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptNumParam(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public of([DI)D
    .locals 4

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p2, :cond_0

    aget-wide v2, p1, p0

    add-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    int-to-double p0, p2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "avg(x1, x2, ..., xn)"

    return-object p0
.end method
