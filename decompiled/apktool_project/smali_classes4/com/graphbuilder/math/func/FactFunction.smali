.class public Lcom/graphbuilder/math/func/FactFunction;
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

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public of([DI)D
    .locals 2

    const/4 p0, 0x0

    aget-wide p0, p1, p0

    double-to-int p0, p0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :goto_0
    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    int-to-double v0, p0

    mul-double/2addr p1, v0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "fact(n)"

    return-object p0
.end method
