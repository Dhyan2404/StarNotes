.class public Lorg/apache/commons/math3/ode/AbstractIntegrator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/ode/events/EventState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lorg/apache/commons/math3/ode/AbstractIntegrator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/AbstractIntegrator;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$a;->f:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    iput p2, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/events/EventState;)I
    .locals 2

    iget p0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator$a;->e:I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    mul-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/ode/events/EventState;

    check-cast p2, Lorg/apache/commons/math3/ode/events/EventState;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractIntegrator$a;->a(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/events/EventState;)I

    move-result p0

    return p0
.end method
