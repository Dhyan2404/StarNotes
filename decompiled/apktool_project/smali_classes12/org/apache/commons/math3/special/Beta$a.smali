.class public final Lorg/apache/commons/math3/special/Beta$a;
.super Lorg/apache/commons/math3/util/ContinuedFraction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:D

.field public final synthetic c:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/special/Beta$a;->b:D

    iput-wide p3, p0, Lorg/apache/commons/math3/special/Beta$a;->c:D

    invoke-direct {p0}, Lorg/apache/commons/math3/util/ContinuedFraction;-><init>()V

    return-void
.end method


# virtual methods
.method public getA(ID)D
    .locals 0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method public getB(ID)D
    .locals 11

    rem-int/lit8 v0, p1, 0x2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-nez v0, :cond_0

    int-to-double v5, p1

    div-double/2addr v5, v3

    iget-wide v7, p0, Lorg/apache/commons/math3/special/Beta$a;->b:D

    sub-double/2addr v7, v5

    mul-double/2addr v7, v5

    mul-double/2addr v7, p2

    iget-wide p0, p0, Lorg/apache/commons/math3/special/Beta$a;->c:D

    mul-double/2addr v5, v3

    add-double p2, p0, v5

    sub-double/2addr p2, v1

    add-double/2addr p0, v5

    mul-double/2addr p2, p0

    div-double/2addr v7, p2

    goto :goto_0

    :cond_0
    int-to-double v5, p1

    sub-double/2addr v5, v1

    div-double/2addr v5, v3

    iget-wide v7, p0, Lorg/apache/commons/math3/special/Beta$a;->c:D

    add-double v9, v7, v5

    iget-wide p0, p0, Lorg/apache/commons/math3/special/Beta$a;->b:D

    add-double/2addr p0, v7

    add-double/2addr p0, v5

    mul-double/2addr v9, p0

    mul-double/2addr v9, p2

    neg-double p0, v9

    mul-double/2addr v5, v3

    add-double p2, v7, v5

    add-double/2addr v7, v5

    add-double/2addr v7, v1

    mul-double/2addr p2, v7

    div-double v7, p0, p2

    :goto_0
    return-wide v7
.end method
