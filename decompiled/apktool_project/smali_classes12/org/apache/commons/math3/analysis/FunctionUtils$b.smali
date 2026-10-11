.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->collector(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field public final synthetic f:D

.field public final synthetic g:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/BivariateFunction;DLorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;->f:D

    iput-object p4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;->g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;->f:D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;->g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    const/4 v4, 0x0

    aget-wide v4, p1, v4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$b;->g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    aget-wide v5, p1, v2

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    invoke-interface {v3, v0, v1, v4, v5}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
