.class public abstract Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationProblem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$c;,
        Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/OptimizationProblem<",
        "TPAIR;>;"
    }
.end annotation


# static fields
.field public static final d:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$b;

.field public static final e:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$c;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$b;-><init>(Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$a;)V

    sput-object v0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->d:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$b;

    new-instance v0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$c;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$c;-><init>(Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$a;)V

    sput-object v0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->e:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$c;

    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->a:I

    iput p2, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->b:I

    iput-object p3, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->c:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    return-void
.end method


# virtual methods
.method public getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->c:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    return-object p0
.end method

.method public getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    iget p0, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->a:I

    sget-object v1, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->d:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$b;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method

.method public getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    iget p0, p0, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->b:I

    sget-object v1, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;->e:Lorg/apache/commons/math3/optim/AbstractOptimizationProblem$c;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method
