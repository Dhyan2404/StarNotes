.class public final Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$b;
.super Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->countEvaluations(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/util/Incrementor;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/apache/commons/math3/util/Incrementor;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;Lorg/apache/commons/math3/util/Incrementor;)V
    .locals 0

    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$b;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$b;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    invoke-super {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresAdapter;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object p0

    return-object p0
.end method
