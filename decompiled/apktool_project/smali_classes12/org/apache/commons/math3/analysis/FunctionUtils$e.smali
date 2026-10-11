.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$e;->e:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$e$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$e$a;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$e;)V

    return-object v0
.end method

.method public value(D)D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$e;->e:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method
