.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;
.super Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;,
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/AbstractOptimizationProblem<",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
        ">;",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
    }
.end annotation


# instance fields
.field public final f:Lorg/apache/commons/math3/linear/RealVector;

.field public final g:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

.field public final h:Lorg/apache/commons/math3/linear/RealVector;

.field public final i:Z

.field public final j:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;IIZ",
            "Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p5, p6, p4}, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;-><init>(IILorg/apache/commons/math3/optim/ConvergenceChecker;)V

    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->f:Lorg/apache/commons/math3/linear/RealVector;

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->g:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    iput-object p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->h:Lorg/apache/commons/math3/linear/RealVector;

    iput-boolean p7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->i:Z

    iput-object p8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->j:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    if-eqz p7, :cond_1

    instance-of p0, p1, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_IMPLEMENTATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->j:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;->validate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    :goto_0
    move-object v4, p1

    iget-boolean p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->i:Z

    if-eqz p1, :cond_1

    new-instance p1, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->g:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    check-cast v0, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->f:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v4, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$a;)V

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->g:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;->value(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;

    move-result-object p1

    new-instance v6, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$b;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->f:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$b;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$a;)V

    return-object v6
.end method

.method public getObservationSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->f:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p0

    return p0
.end method

.method public getParameterSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->h:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p0

    return p0
.end method

.method public getStart()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;->h:Lorg/apache/commons/math3/linear/RealVector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    :goto_0
    return-object p0
.end method
