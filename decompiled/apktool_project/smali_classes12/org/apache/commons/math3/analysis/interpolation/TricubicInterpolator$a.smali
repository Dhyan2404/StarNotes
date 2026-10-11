.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;
.super Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:[D

.field public final synthetic g:[D

.field public final synthetic h:[D

.field public final synthetic i:Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;[D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[D[D[D)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;->i:Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;->f:[D

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;->g:[D

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;->h:[D

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;-><init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V

    return-void
.end method


# virtual methods
.method public isValidPoint(DDD)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;->f:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v0, v2

    cmpl-double p1, p1, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;->g:[D

    aget-wide v2, p1, v1

    cmpg-double p2, p3, v2

    if-ltz p2, :cond_1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x2

    aget-wide p1, p1, p2

    cmpl-double p1, p3, p1

    if-gtz p1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$a;->h:[D

    aget-wide p1, p0, v1

    cmpg-double p1, p5, p1

    if-ltz p1, :cond_1

    array-length p1, p0

    add-int/lit8 p1, p1, -0x2

    aget-wide p0, p0, p1

    cmpl-double p0, p5, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
