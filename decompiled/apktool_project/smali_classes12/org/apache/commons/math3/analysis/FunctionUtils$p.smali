.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->add([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
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

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$p;->e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$p$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$p$a;-><init>(Lorg/apache/commons/math3/analysis/FunctionUtils$p;)V

    return-object v0
.end method

.method public value(D)D
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$p;->e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$p;->e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
