.class public Lorg/apache/commons/math3/ode/MultistepIntegrator$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/MultistepIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:I

.field public final f:[D

.field public final g:[[D

.field public final h:[[D

.field public final synthetic i:Lorg/apache/commons/math3/ode/MultistepIntegrator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;II)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->i:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    new-array p1, p2, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->f:[D

    filled-new-array {p2, p3}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->g:[[D

    filled-new-array {p2, p3}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->h:[[D

    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    iget p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    const/4 v4, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->f:[D

    aput-wide v0, p2, v4

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->i:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->g:[[D

    iget v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v1, v5}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->h:[[D

    iget v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v1, v5}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p2

    array-length v0, p2

    move v1, v4

    move v5, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v6, p2, v1

    invoke-interface {p1, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->g:[[D

    iget v9, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    invoke-interface {p1, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->h:[[D

    iget v9, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->f:[D

    iget v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aput-wide v2, p2, v0

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->i:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->g:[[D

    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->h:[[D

    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p2

    array-length v0, p2

    move v1, v4

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->g:[[D

    iget v7, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aget-object v6, v6, v7

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryDerivatives(I)[D

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->h:[[D

    iget v7, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    aget-object v6, v6, v7

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->e:I

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->f:[D

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->i:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    aget-wide v0, p2, v4

    iput-wide v0, p1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p2, v2

    sub-double/2addr v2, v0

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    int-to-double v0, p2

    div-double/2addr v2, v0

    iput-wide v2, p1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->h:[[D

    aget-object p2, p2, v4

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    iput-object p2, p1, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->i:Lorg/apache/commons/math3/ode/MultistepIntegrator;

    iget-object p2, p1, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    array-length v0, p2

    if-ge v4, v0, :cond_2

    aget-wide v0, p2, v4

    iget-wide v2, p1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v0, v2

    aput-wide v0, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-wide v6, p1, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->f:[D

    iget-object v9, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->g:[[D

    iget-object v10, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;->h:[[D

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance p0, Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;

    invoke-direct {p0}, Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public init(D[DD)V
    .locals 0

    return-void
.end method
