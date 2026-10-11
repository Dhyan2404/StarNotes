.class public Lorg/apache/commons/math3/analysis/function/StepFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# instance fields
.field public final e:[D

.field public final f:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->e:[D

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->f:[D

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p1, p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public value(D)D
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->e:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result p1

    const/4 p2, -0x1

    if-ge p1, p2, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->f:[D

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    aget-wide p0, p0, p1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->f:[D

    aget-wide p0, p0, p1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/function/StepFunction;->f:[D

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    :goto_0
    return-wide p0
.end method
