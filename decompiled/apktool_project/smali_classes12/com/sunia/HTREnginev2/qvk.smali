.class public Lcom/sunia/HTREnginev2/qvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/ParameterizedODE;


# instance fields
.field public final a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qvk;->a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    return-void
.end method


# virtual methods
.method public a(D[D[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qvk;->a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    return-void
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qvk;->a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {p0}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result p0

    return p0
.end method

.method public getParameter(Ljava/lang/String;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/qvk;->isSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getParametersNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setParameter(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method
