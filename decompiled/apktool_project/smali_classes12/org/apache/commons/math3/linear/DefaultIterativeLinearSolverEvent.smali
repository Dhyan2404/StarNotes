.class public Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;
.super Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1330241L


# instance fields
.field private final b:Lorg/apache/commons/math3/linear/RealVector;

.field private final r:Lorg/apache/commons/math3/linear/RealVector;

.field private final rnorm:D

.field private final x:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;-><init>(Ljava/lang/Object;I)V

    .line 7
    iput-object p3, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    .line 8
    iput-object p4, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    .line 10
    iput-wide p5, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;-><init>(Ljava/lang/Object;I)V

    .line 2
    iput-object p3, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    .line 3
    iput-object p4, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 4
    iput-object p5, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    .line 5
    iput-wide p6, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    return-void
.end method


# virtual methods
.method public getNormOfResidual()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->rnorm:D

    return-wide v0
.end method

.method public getResidual()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getRightHandSideVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->b:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public getSolution()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->x:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public providesResidual()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;->r:Lorg/apache/commons/math3/linear/RealVector;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
