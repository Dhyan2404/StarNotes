.class public Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;
.super Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lorg/apache/commons/math3/linear/RealVector;

.field public final c:Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

.field public final d:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;-><init>(I)V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->c:Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    .line 4
    iput-object p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 5
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->d:Lorg/apache/commons/math3/linear/RealVector;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method


# virtual methods
.method public getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->c:Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;->computeJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getPoint()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->b:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public getResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->d:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->c:Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$d$a;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;->computeValue([D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method
