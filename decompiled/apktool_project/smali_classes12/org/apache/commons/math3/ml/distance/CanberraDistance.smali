.class public Lorg/apache/commons/math3/ml/distance/CanberraDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x60c281567cfc58a4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->checkEqualLength([D[D)V

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    move-wide v2, v0

    :goto_0
    array-length v4, p1

    if-ge p0, v4, :cond_1

    aget-wide v4, p1, p0

    aget-wide v6, p2, p0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aget-wide v6, p1, p0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    aget-wide v8, p2, p0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    cmpl-double v8, v4, v0

    if-nez v8, :cond_0

    cmpl-double v8, v6, v0

    if-nez v8, :cond_0

    move-wide v4, v0

    goto :goto_1

    :cond_0
    div-double/2addr v4, v6

    :goto_1
    add-double/2addr v2, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method
