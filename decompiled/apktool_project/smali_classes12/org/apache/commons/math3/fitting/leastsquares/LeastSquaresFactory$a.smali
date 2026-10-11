.class public final Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$a;
.super Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->weightMatrix(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0

    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$a;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/a;

    invoke-super {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$a;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/fitting/leastsquares/a;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-object v0
.end method
