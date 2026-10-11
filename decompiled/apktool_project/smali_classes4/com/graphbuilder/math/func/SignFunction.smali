.class public Lcom/graphbuilder/math/func/SignFunction;
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

    const-wide/16 v0, 0x0

    cmpl-double p2, p0, v0

    if-lez p2, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_0
    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "sign(x)"

    return-object p0
.end method
