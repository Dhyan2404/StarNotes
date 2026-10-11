.class public Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;
.super Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final n:D = 1.0E-15

.field public static final o:D = 4.9E-324


# instance fields
.field public final l:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

.field public final synthetic m:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;DD)V
    .locals 6

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->m:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    const-wide v1, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide/16 v3, 0x1

    new-instance v5, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;

    invoke-direct {v5, p2, p3, p4, p5}, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;-><init>(DD)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    new-instance p1, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-direct {p1}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->l:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    return-void
.end method


# virtual methods
.method public b([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 13

    array-length v0, p1

    new-instance v8, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;

    invoke-direct {v8, p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a$a;-><init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;I[D[D)V

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->m:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->l:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v2, v8

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)V

    const v2, 0x7fffffff

    iget-object p2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->l:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getLo()D

    move-result-wide v5

    iget-object p2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->l:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getHi()D

    move-result-wide v9

    iget-object p2, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->l:Lorg/apache/commons/math3/optimization/univariate/BracketFinder;

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->getMid()D

    move-result-wide v11

    move-object v1, p0

    move-object v3, v8

    move-object v4, p1

    move-wide v7, v9

    move-wide v9, v11

    invoke-virtual/range {v1 .. v10}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object p0

    return-object p0
.end method
