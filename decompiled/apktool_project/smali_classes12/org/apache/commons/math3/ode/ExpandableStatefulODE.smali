.class public Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

.field public final b:Lorg/apache/commons/math3/ode/EquationsMapper;

.field public c:D

.field public final d:[D

.field public final e:[D

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    new-instance p1, Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;-><init>(II)V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->c:D

    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->e:[D

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSecondaryEquations(Lorg/apache/commons/math3/ode/SecondaryEquations;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getFirstIndex()I

    move-result v1

    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-direct {v2, p1, v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;-><init>(Lorg/apache/commons/math3/ode/SecondaryEquations;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public computeDerivatives(D[D[D)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    invoke-virtual {v0, p3, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->e:[D

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->b(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->d(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/SecondaryEquations;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->e:[D

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->b(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object v9

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->c(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object v10

    move-wide v5, p1

    invoke-interface/range {v4 .. v10}, Lorg/apache/commons/math3/ode/SecondaryEquations;->computeDerivatives(D[D[D[D[D)V

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->c(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object v1

    invoke-virtual {v2, v1, p4}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->e:[D

    invoke-virtual {p1, p0, p4}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    return-void
.end method

.method public getCompleteState()[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->b(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPrimary()Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->a:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    return-object p0
.end method

.method public getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    return-object p0
.end method

.method public getPrimaryState()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getPrimaryStateDot()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->e:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSecondaryState(I)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->b(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object p0

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getSecondaryStateDot(I)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->c(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object p0

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getTime()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->c:D

    return-wide v0
.end method

.method public getTotalDimension()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getFirstIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setCompleteState([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->b:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->a(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->b(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result p0

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public setPrimaryState([D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length p0, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->d:[D

    array-length p0, p0

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public setSecondaryState(I[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;

    invoke-static {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;->b(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$a;)[D

    move-result-object p0

    array-length p1, p2

    array-length v0, p0

    if-ne p1, v0, :cond_0

    array-length p1, p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p0, p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method public setTime(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->c:D

    return-void
.end method
