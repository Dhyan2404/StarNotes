.class public Lorg/apache/commons/math3/analysis/FunctionUtils$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$s;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/FunctionUtils$s;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$s;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$s$a;->e:Lorg/apache/commons/math3/analysis/FunctionUtils$s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$s$a;->e:Lorg/apache/commons/math3/analysis/FunctionUtils$s;

    iget-object v4, v4, Lorg/apache/commons/math3/analysis/FunctionUtils$s;->e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    move v6, v2

    :goto_1
    iget-object v7, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$s$a;->e:Lorg/apache/commons/math3/analysis/FunctionUtils$s;

    iget-object v7, v7, Lorg/apache/commons/math3/analysis/FunctionUtils$s;->e:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v8, v7

    if-ge v6, v8, :cond_1

    if-eq v3, v6, :cond_0

    aget-object v7, v7, v6

    invoke-interface {v7, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v7

    mul-double/2addr v4, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method
