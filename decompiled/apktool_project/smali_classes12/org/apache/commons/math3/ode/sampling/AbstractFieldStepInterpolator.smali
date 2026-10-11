.class public abstract Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public f:Lorg/apache/commons/math3/ode/FieldEquationsMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->e:Z

    iput-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->a:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->b:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iput-object p6, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->f:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    return-void
.end method


# virtual methods
.method public abstract computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public abstract create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object p0
.end method

.method public getGlobalCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->b:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object p0
.end method

.method public getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->a:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object p0
.end method

.method public getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->a:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->b:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->b:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->a:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->f:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object p0
.end method

.method public isForward()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->e:Z

    return p0
.end method

.method public restrictStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->e:Z

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->a:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->b:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object v6, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->f:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;

    move-result-object p0

    return-object p0
.end method
