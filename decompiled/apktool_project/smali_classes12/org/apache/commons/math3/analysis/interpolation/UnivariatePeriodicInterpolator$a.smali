.class public Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field public final synthetic f:D

.field public final synthetic g:Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;->g:Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;->e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;->f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;->e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;->g:Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;->a(Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator;)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/interpolation/UnivariatePeriodicInterpolator$a;->f:D

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/MathUtils;->reduce(DDD)D

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method
