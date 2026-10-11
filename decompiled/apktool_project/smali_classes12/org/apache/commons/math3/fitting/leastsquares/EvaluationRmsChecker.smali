.class public Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/ConvergenceChecker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->a:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->b:D

    return-void
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    check-cast p3, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->converged(ILorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;)Z

    move-result p0

    return p0
.end method

.method public converged(ILorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;)Z
    .locals 8

    .line 2
    invoke-interface {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getRMS()D

    move-result-wide p1

    .line 3
    invoke-interface {p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getRMS()D

    move-result-wide v6

    .line 4
    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->b:D

    move-wide v0, p1

    move-wide v2, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p3

    if-nez p3, :cond_1

    iget-wide v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/EvaluationRmsChecker;->a:D

    move-wide v0, p1

    move-wide v2, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equalsWithRelativeTolerance(DDD)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
