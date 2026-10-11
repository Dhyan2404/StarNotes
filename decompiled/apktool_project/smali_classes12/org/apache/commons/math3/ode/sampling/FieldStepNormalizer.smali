.class public Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:D

.field public final b:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z

.field public final f:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public final g:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;",
            ")V"
        }
    .end annotation

    .line 3
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a:D

    .line 6
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->b:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    .line 7
    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->g:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 8
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->f:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 10
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->f:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->firstIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->b:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-interface {v0, p0, p1}, Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;->handleStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Z)V

    return-void
.end method

.method public final b(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)Z"
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->e:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide p0

    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double p0, p0, v2

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide p0

    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double p0, p0, v2

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->e:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a:D

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->g:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a:D

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a:D

    mul-double/2addr v1, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->g:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v2, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->b(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a(Z)V

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->b(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->f:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->lastIncluded()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpl-double p2, v0, v4

    if-eqz p2, :cond_4

    move v2, v3

    :cond_4
    xor-int/lit8 p2, v2, 0x1

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a(Z)V

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->a(Z)V

    :cond_5
    return-void
.end method

.method public init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->c:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->d:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->e:Z

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->b:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method
