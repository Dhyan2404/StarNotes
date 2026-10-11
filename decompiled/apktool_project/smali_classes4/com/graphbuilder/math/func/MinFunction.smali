.class public Lcom/graphbuilder/math/func/MinFunction;
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

    const-wide/16 p0, 0x1

    return-wide p0

    :cond_0
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p2, :cond_2

    aget-wide v2, p1, p0

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "min(x1, x2, ..., xn)"

    return-object p0
.end method
