.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field public final b:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/function/Sigmoid;-><init>(DD)V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$c;->a:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    new-instance v0, Lorg/apache/commons/math3/analysis/function/Logit;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/function/Logit;-><init>(DD)V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$c;->b:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    return-void
.end method


# virtual methods
.method public a(D)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$c;->a:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public b(D)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$c;->b:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method
