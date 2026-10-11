.class public Lorg/apache/commons/math3/linear/RRQRDecomposition$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/RRQRDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/linear/DecompositionSolver;

.field public b:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->a:Lorg/apache/commons/math3/linear/DecompositionSolver;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RRQRDecomposition$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;-><init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public isNonSingular()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->a:Lorg/apache/commons/math3/linear/DecompositionSolver;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->isNonSingular()Z

    move-result p0

    return p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->a:Lorg/apache/commons/math3/linear/DecompositionSolver;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;->a:Lorg/apache/commons/math3/linear/DecompositionSolver;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method
