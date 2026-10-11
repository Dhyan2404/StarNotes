.class public Lorg/apache/commons/math3/ode/FieldExpandableODE;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/FieldSecondaryEquations<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->a:Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->b:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->getDimension()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;-><init>(Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    return-void
.end method


# virtual methods
.method public addSecondaryEquations(Lorg/apache/commons/math3/ode/FieldSecondaryEquations;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldSecondaryEquations<",
            "TT;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;->getDimension()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;-><init>(Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    iget-object p0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getTotalDimension()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->a:Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;

    invoke-interface {v3, p1, v1}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v4, v2, v3, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    :goto_0
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v4, v2, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->b:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;

    invoke-interface {v5, p1, v1, v3, v4}, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v5, v2, v4, v0}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->insertEquationData(I[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    return-object p0
.end method

.method public init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->a:Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;

    invoke-interface {v2, p1, v0, p3}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->getNumberOfEquations()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->c:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    invoke-virtual {v2, v1, p2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->extractEquationData(I[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/ode/FieldExpandableODE;->b:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;

    invoke-interface {v3, p1, v0, v2, p3}, Lorg/apache/commons/math3/ode/FieldSecondaryEquations;->init(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_0

    :cond_0
    return-void
.end method
