.class public Lcom/graphbuilder/math/func/MaxFunction;
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

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public of([DI)D
    .locals 5

    if-nez p2, :cond_0

    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide p0

    :cond_0
    const-wide v0, -0x10000000000001L

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p2, :cond_2

    aget-wide v2, p1, p0

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "max(x1, x2, ..., xn)"

    return-object p0
.end method
