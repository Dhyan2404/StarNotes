.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->combine(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field public final synthetic f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field public final synthetic g:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$a;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$a;->f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iput-object p3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$a;->g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$a;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$a;->f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$a;->g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide p0

    return-wide p0
.end method
