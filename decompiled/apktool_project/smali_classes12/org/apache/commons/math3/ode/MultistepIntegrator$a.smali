.class public Lorg/apache/commons/math3/ode/MultistepIntegrator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/MultistepIntegrator;->start(D[DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/ode/MultistepIntegrator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$a;->a:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$a;->a:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->computeDerivatives(D[D[D)V

    return-void
.end method

.method public getDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$a;->a:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result p0

    return p0
.end method
