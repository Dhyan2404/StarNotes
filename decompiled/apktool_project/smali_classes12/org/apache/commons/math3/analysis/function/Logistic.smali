.class public Lorg/apache/commons/math3/analysis/function/Logistic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;
    }
.end annotation


# instance fields
.field public final e:D

.field public final f:D

.field public final g:D

.field public final h:D

.field public final i:D

.field public final j:D


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p11, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->f:D

    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->j:D

    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->g:D

    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->i:D

    iput-wide p9, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->e:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, p11

    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->h:D

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p11, p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public static synthetic a(DDDDDD)D
    .locals 0

    invoke-static/range {p0 .. p11}, Lorg/apache/commons/math3/analysis/function/Logistic;->b(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static b(DDDDDD)D
    .locals 0

    sub-double/2addr p2, p8

    mul-double/2addr p4, p0

    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr p6, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p6, p0

    invoke-static {p6, p7, p10, p11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p0

    div-double/2addr p2, p0

    add-double/2addr p8, p2

    return-wide p8
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p0

    return-object p0
.end method

.method public value(D)D
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lorg/apache/commons/math3/analysis/function/Logistic;->j:D

    sub-double v3, v1, p1

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/function/Logistic;->f:D

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/function/Logistic;->g:D

    iget-wide v9, v0, Lorg/apache/commons/math3/analysis/function/Logistic;->i:D

    iget-wide v11, v0, Lorg/apache/commons/math3/analysis/function/Logistic;->e:D

    iget-wide v13, v0, Lorg/apache/commons/math3/analysis/function/Logistic;->h:D

    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/analysis/function/Logistic;->b(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->j:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->g:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->exp()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->i:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->h:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->reciprocal()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->f:D

    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->e:D

    sub-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Logistic;->e:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method
