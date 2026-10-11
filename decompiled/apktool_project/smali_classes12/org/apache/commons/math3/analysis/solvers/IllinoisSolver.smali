.class public Lorg/apache/commons/math3/analysis/solvers/IllinoisSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1
    sget-object v2, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    .line 3
    sget-object v5, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8

    .line 4
    sget-object v7, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DDDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    return-void
.end method
