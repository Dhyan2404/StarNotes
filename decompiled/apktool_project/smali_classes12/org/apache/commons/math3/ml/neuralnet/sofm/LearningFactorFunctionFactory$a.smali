.class public final Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory;->exponentialDecay(DDJ)Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

.field public final synthetic b:D

.field public final synthetic c:D

.field public final synthetic d:J


# direct methods
.method public constructor <init>(DDJ)V
    .locals 8

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$a;->b:D

    iput-wide p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$a;->c:D

    iput-wide p5, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$a;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;-><init>(DDJ)V

    iput-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$a;->a:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    return-void
.end method


# virtual methods
.method public value(J)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/LearningFactorFunctionFactory$a;->a:Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/sofm/util/ExponentialDecayFunction;->value(J)D

    move-result-wide p0

    return-wide p0
.end method
