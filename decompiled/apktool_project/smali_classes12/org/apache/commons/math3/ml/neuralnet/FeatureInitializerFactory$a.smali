.class public final Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory;->function(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public a:D

.field public final synthetic b:D

.field public final synthetic c:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field public final synthetic d:D


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/analysis/UnivariateFunction;D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->b:D

    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->c:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iput-wide p4, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->a:D

    return-void
.end method


# virtual methods
.method public value()D
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->c:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iget-wide v1, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->a:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->a:D

    iget-wide v4, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->d:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializerFactory$a;->a:D

    return-wide v0
.end method
