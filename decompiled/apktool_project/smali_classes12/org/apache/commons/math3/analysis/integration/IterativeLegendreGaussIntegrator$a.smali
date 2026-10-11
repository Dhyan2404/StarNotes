.class public Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;->a(I)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$a;->e:Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator$a;->e:Lorg/apache/commons/math3/analysis/integration/IterativeLegendreGaussIntegrator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->computeObjectiveValue(D)D

    move-result-wide p0

    return-wide p0
.end method
