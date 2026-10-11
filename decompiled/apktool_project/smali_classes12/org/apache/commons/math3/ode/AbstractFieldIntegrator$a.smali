.class public Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/ode/events/FieldEventState<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$a;->f:Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;

    iput p2, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/events/FieldEventState;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventState<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/events/FieldEventState<",
            "TT;>;)I"
        }
    .end annotation

    iget p0, p0, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$a;->e:I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/events/FieldEventState;->getEventTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    mul-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/ode/events/FieldEventState;

    check-cast p2, Lorg/apache/commons/math3/ode/events/FieldEventState;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator$a;->a(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/events/FieldEventState;)I

    move-result p0

    return p0
.end method
