.class public Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;
    .locals 1

    invoke-static {}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$b;->a()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$b;->a()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;

    move-result-object p0

    return-object p0
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 0

    return-void
.end method

.method public init(D[DD)V
    .locals 0

    return-void
.end method
