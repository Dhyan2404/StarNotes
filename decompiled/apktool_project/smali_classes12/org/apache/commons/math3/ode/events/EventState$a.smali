.class public Lorg/apache/commons/math3/ode/events/EventState$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

.field public final synthetic f:Lorg/apache/commons/math3/ode/events/EventState;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState$a;->f:Lorg/apache/commons/math3/ode/events/EventState;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventState$a;->e:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState$a;->e:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState$a;->f:Lorg/apache/commons/math3/ode/events/EventState;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/events/EventState;->b(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState$a;->f:Lorg/apache/commons/math3/ode/events/EventState;

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState$a;->e:Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    invoke-static {v1, p0}, Lorg/apache/commons/math3/ode/events/EventState;->a(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide p0
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/MaxCountExceededException;)V

    throw p1
.end method
