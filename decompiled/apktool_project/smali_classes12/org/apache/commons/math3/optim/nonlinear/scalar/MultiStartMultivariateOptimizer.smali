.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer<",
        "Lorg/apache/commons/math3/optim/PointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/BaseMultiStartMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->m:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->l:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;)Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->l:Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;

    return-object p0
.end method


# virtual methods
.method public final c()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer$a;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;)V

    return-object v0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic getOptima()[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->getOptima()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->m:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->c()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->m:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/optim/PointValuePair;

    return-object p0
.end method

.method public bridge synthetic store(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->store(Lorg/apache/commons/math3/optim/PointValuePair;)V

    return-void
.end method

.method public store(Lorg/apache/commons/math3/optim/PointValuePair;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultiStartMultivariateOptimizer;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
