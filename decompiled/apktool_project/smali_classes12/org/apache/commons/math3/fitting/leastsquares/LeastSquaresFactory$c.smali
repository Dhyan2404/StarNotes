.class public final Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/ConvergenceChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->evaluationChecker(Lorg/apache/commons/math3/optim/ConvergenceChecker;)Lorg/apache/commons/math3/optim/ConvergenceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/optim/ConvergenceChecker;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$c;->a:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;)Z
    .locals 3

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$c;->a:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    new-instance v0, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-interface {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[DZ)V

    new-instance p2, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-interface {p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-interface {p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p3

    invoke-direct {p2, v1, p3, v2}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[DZ)V

    invoke-interface {p0, p1, v0, p2}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    check-cast p3, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$c;->a(ILorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;)Z

    move-result p0

    return p0
.end method
