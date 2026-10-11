.class public abstract Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/linear/LinearOptimizer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_ITERATIONS:I = 0x64


# instance fields
.field public a:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

.field public b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lorg/apache/commons/math3/optimization/GoalType;

.field public d:Z

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->setMaxIterations(I)V

    return-void
.end method


# virtual methods
.method public abstract doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation
.end method

.method public getConstraints()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->b:Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getFunction()Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->a:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    return-object p0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optimization/GoalType;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->c:Lorg/apache/commons/math3/optimization/GoalType;

    return-object p0
.end method

.method public getIterations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->f:I

    return p0
.end method

.method public getMaxIterations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->e:I

    return p0
.end method

.method public incrementIterationsCounter()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->f:I

    iget v1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->e:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    iget p0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public optimize(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;Z)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optimization/linear/LinearConstraint;",
            ">;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "Z)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->a:Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->b:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->c:Lorg/apache/commons/math3/optimization/GoalType;

    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->d:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->f:I

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public restrictToNonNegative()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->d:Z

    return p0
.end method

.method public setMaxIterations(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->e:I

    return-void
.end method
