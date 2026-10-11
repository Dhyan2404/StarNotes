.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;
.super Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/MultistepFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final w:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "IIDDDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p12}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V

    .line 2
    invoke-static {p1, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->getInstance(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->w:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "IIDD[D[D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V

    .line 4
    invoke-static {p1, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->getInstance(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->w:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    return-void
.end method


# virtual methods
.method public initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;[[TT;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->w:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object p0

    return-object p0
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->w:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object p0

    return-object p0
.end method

.method public updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;->w:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    return-void
.end method
