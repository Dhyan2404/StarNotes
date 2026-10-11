.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.super Lorg/apache/commons/math3/ode/MultistepIntegrator;
.source "SourceFile"


# instance fields
.field public final o:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIDDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p11}, Lorg/apache/commons/math3/ode/MultistepIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 2
    invoke-static {p2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->o:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDD[D[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p9}, Lorg/apache/commons/math3/ode/MultistepIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 4
    invoke-static {p2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->o:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    return-void
.end method


# virtual methods
.method public initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->o:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->o:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->o:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    return-void
.end method
