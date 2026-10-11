.class public Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static function(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
    .locals 7

    new-instance v6, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;-><init>(DLorg/apache/commons/math3/analysis/UnivariateFunction;D)V

    return-object v6
.end method

.method public static randomize(Lorg/apache/commons/math3/distribution/RealDistribution;Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$b;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$b;-><init>(Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;Lorg/apache/commons/math3/distribution/RealDistribution;)V

    return-object v0
.end method

.method public static uniform(DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(DD)V

    new-instance p0, Lorg/apache/commons/math3/analysis/function/Constant;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/function/Constant;-><init>(D)V

    invoke-static {p0, p1, p2, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->function(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->randomize(Lorg/apache/commons/math3/distribution/RealDistribution;Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    move-result-object p0

    return-object p0
.end method

.method public static uniform(Lorg/apache/commons/math3/random/RandomGenerator;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
    .locals 7

    .line 1
    new-instance v6, Lorg/apache/commons/math3/distribution/UniformRealDistribution;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    new-instance p0, Lorg/apache/commons/math3/analysis/function/Constant;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/function/Constant;-><init>(D)V

    invoke-static {p0, p1, p2, p1, p2}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->function(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    move-result-object p0

    invoke-static {v6, p0}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->randomize(Lorg/apache/commons/math3/distribution/RealDistribution;Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;

    move-result-object p0

    return-object p0
.end method
