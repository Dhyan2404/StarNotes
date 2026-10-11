.class public abstract Lorg/apache/commons/math3/optim/BaseOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/BaseOptimizer$c;,
        Lorg/apache/commons/math3/optim/BaseOptimizer$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;"
        }
    .end annotation
.end field

.field protected final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field protected final iterations:Lorg/apache/commons/math3/util/Incrementor;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->a:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    .line 4
    new-instance p1, Lorg/apache/commons/math3/util/Incrementor;

    new-instance v0, Lorg/apache/commons/math3/optim/BaseOptimizer$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/BaseOptimizer$b;-><init>(Lorg/apache/commons/math3/optim/BaseOptimizer$a;)V

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 5
    new-instance p1, Lorg/apache/commons/math3/util/Incrementor;

    new-instance p2, Lorg/apache/commons/math3/optim/BaseOptimizer$c;

    invoke-direct {p2, v1}, Lorg/apache/commons/math3/optim/BaseOptimizer$c;-><init>(Lorg/apache/commons/math3/optim/BaseOptimizer$a;)V

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    iput-object p1, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    return-void
.end method


# virtual methods
.method public abstract doOptimize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAIR;"
        }
    .end annotation
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->a:Lorg/apache/commons/math3/optim/ConvergenceChecker;

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getIterations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public getMaxIterations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public incrementEvaluationCount()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    return-void
.end method

.method public incrementIterationCount()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    return-void
.end method

.method public optimize()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAIR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->doOptimize()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/optim/OptimizationData;",
            ")TPAIR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 2
    iget-object p1, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 3
    iget-object p1, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->doOptimize()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/MaxEval;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    check-cast v2, Lorg/apache/commons/math3/optim/MaxEval;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/MaxEval;->getMaxEval()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/MaxIter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/optim/BaseOptimizer;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    check-cast v2, Lorg/apache/commons/math3/optim/MaxIter;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/MaxIter;->getMaxIter()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
