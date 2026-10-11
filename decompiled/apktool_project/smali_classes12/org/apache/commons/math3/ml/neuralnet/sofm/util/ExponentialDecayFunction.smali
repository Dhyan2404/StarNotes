.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DDJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_3

    cmpg-double v0, p3, v0

    if-lez v0, :cond_2

    cmpl-double v0, p3, p1

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->a:D

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    neg-double p1, p1

    long-to-double p3, p5

    div-double/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->b:D

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public value(J)D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->a:D

    neg-long p1, p1

    long-to-double p1, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->b:D

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method
