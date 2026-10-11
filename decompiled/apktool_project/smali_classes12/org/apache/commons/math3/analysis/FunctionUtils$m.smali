.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->compose([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$m;->e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$m$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$m$a;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$m;)V

    return-object v0
.end method

.method public value(D)D
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$m;->e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$m;->e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method
