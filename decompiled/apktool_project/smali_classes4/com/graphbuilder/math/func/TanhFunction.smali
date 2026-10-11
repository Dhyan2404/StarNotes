.class public Lcom/graphbuilder/math/func/TanhFunction;
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
    .locals 4

    const/4 p0, 0x0

    aget-wide p0, p1, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v0

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, p0, v0

    add-double/2addr p0, v0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "tanh(x)"

    return-object p0
.end method
