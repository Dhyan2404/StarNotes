.class public abstract Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
.super Lorg/apache/commons/math3/util/IterationEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1330241L


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/util/IterationEvent;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public abstract getNormOfResidual()D
.end method

.method public getResidual()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract getRightHandSideVector()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public abstract getSolution()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public providesResidual()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
