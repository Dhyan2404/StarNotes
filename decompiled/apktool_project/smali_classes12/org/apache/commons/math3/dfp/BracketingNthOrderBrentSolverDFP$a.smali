.class public Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;

.field public final synthetic b:Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$a;->b:Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;

    iput-object p2, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$a;->a:Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$a;->a:Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$a;->a(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method
