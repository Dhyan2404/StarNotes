.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$a;
.super Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:[D

.field public final synthetic g:[D

.field public final synthetic h:Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;[D[D[[D[[D[[D[[D[D[D)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$a;->h:Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;

    move-object v1, p8

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$a;->f:[D

    move-object/from16 v1, p9

    iput-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$a;->g:[D

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;-><init>([D[D[[D[[D[[D[[D)V

    return-void
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$a;->f:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v0, v2

    cmpl-double p1, p1, v2

    if-gtz p1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$a;->g:[D

    aget-wide p1, p0, v1

    cmpg-double p1, p3, p1

    if-ltz p1, :cond_1

    array-length p1, p0

    add-int/lit8 p1, p1, -0x2

    aget-wide p0, p0, p1

    cmpl-double p0, p3, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
