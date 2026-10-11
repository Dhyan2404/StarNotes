.class public Lorg/apache/commons/math3/ode/events/FieldEventState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/events/FieldEventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

.field public final synthetic b:Lorg/apache/commons/math3/ode/events/FieldEventState;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState$a;->b:Lorg/apache/commons/math3/ode/events/FieldEventState;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState$a;->a:Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState$a;->b:Lorg/apache/commons/math3/ode/events/FieldEventState;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/events/FieldEventState;->a(Lorg/apache/commons/math3/ode/events/FieldEventState;)Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState$a;->a:Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method
