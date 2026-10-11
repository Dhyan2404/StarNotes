.class public Lorg/apache/commons/math3/ode/sampling/StepNormalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# instance fields
.field public e:D

.field public final f:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

.field public g:D

.field public h:D

.field public i:[D

.field public j:[D

.field public k:Z

.field public final l:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public final m:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;)V
    .locals 6

    .line 1
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 6

    .line 3
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;)V
    .locals 6

    .line 2
    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->e:D

    .line 6
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->f:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    .line 7
    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->m:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 8
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->l:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 9
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->g:D

    .line 10
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->i:[D

    .line 12
    iput-object p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->j:[D

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->l:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->firstIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->g:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->f:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->i:[D

    iget-object v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->j:[D

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;->handleStep(D[D[DZ)V

    return-void
.end method

.method public final b(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 4

    iget-boolean p0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->k:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    if-eqz p0, :cond_0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_0
    cmpl-double p0, p1, v2

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public final c(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iput-wide p2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object p2

    iget-object p3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->i:[D

    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->j:[D

    array-length p2, p0

    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->i:[D

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->g:D

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->i:[D

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->j:[D

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->k:Z

    if-nez v0, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->e:D

    neg-double v3, v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->e:D

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->m:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v3, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->e:D

    add-double/2addr v3, v5

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->e:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->e:D

    mul-double/2addr v3, v5

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->m:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v5, :cond_3

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    invoke-static {v3, v4, v5, v6, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->e:D

    add-double/2addr v3, v5

    :cond_3
    invoke-virtual {p0, v3, v4, p1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->b(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->a(Z)V

    invoke-virtual {p0, p1, v3, v4}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->c(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->e:D

    add-double/2addr v3, v5

    invoke-virtual {p0, v3, v4, p1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->b(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v0

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->l:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->lastIncluded()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v5

    cmpl-double p2, v3, v5

    if-eqz p2, :cond_5

    move v1, v2

    :cond_5
    xor-int/lit8 p2, v1, 0x1

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->a(Z)V

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->c(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->a(Z)V

    :cond_6
    return-void
.end method

.method public init(D[DD)V
    .locals 7

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->g:D

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->i:[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->j:[D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->k:Z

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->f:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;->init(D[DD)V

    return-void
.end method
