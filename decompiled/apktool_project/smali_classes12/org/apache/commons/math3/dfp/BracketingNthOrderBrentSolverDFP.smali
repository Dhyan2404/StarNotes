.class public Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;
.super Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->getAbsoluteAccuracy()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public getAbsoluteAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object p0
.end method

.method public bridge synthetic getFunctionValueAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->getFunctionValueAccuracy()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionValueAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->getFunctionValueAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object p0
.end method

.method public bridge synthetic getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->getRelativeAccuracy()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public getRelativeAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object p0
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    new-instance v2, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$a;

    invoke-direct {v2, p0, p2}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$a;-><init>(Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;)V

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 4
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object p0
.end method
