.class public Lorg/apache/commons/math3/ode/JacobianMatrices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;,
        Lorg/apache/commons/math3/ode/JacobianMatrices$c;,
        Lorg/apache/commons/math3/ode/JacobianMatrices$b;
    }
.end annotation


# instance fields
.field public a:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field public b:I

.field public c:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

.field public d:Lorg/apache/commons/math3/ode/ParameterizedODE;

.field public e:I

.field public f:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/ParameterJacobianProvider;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Z

.field public j:[D


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ode/JacobianMatrices$c;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/ode/JacobianMatrices$c;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D)V

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/math3/ode/JacobianMatrices;-><init>(Lorg/apache/commons/math3/ode/MainStateJacobianProvider;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/ode/MainStateJacobianProvider;[Ljava/lang/String;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->a:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->b:I

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->c:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    .line 6
    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->d:Lorg/apache/commons/math3/ode/ParameterizedODE;

    .line 7
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->f:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .line 9
    iput p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->h:I

    goto :goto_1

    .line 10
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lorg/apache/commons/math3/ode/ParameterConfiguration;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->f:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move v0, p1

    .line 11
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->f:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    new-instance v2, Lorg/apache/commons/math3/ode/ParameterConfiguration;

    aget-object v3, p2, v0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/ParameterConfiguration;-><init>(Ljava/lang/String;D)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    array-length p2, p2

    iput p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->h:I

    .line 14
    :goto_1
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->i:Z

    .line 15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->g:Ljava/util/List;

    .line 16
    iget p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->h:I

    add-int/2addr v0, p2

    mul-int/2addr v0, p2

    new-array p2, v0, [D

    iput-object p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->j:[D

    .line 17
    :goto_2
    iget p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    if-ge p1, p2, :cond_2

    .line 18
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->j:[D

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/ode/JacobianMatrices;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/ode/JacobianMatrices;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->h:I

    return p0
.end method

.method public static synthetic c(Lorg/apache/commons/math3/ode/JacobianMatrices;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->i:Z

    return p0
.end method

.method public static synthetic d(Lorg/apache/commons/math3/ode/JacobianMatrices;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->i:Z

    return p1
.end method

.method public static synthetic e(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->c:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/ParameterizedODE;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->d:Lorg/apache/commons/math3/ode/ParameterizedODE;

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->f:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addParameterJacobianProvider(Lorg/apache/commons/math3/ode/ParameterJacobianProvider;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentMainSetJacobian([[D)V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->a:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->b:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryState(I)[D

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    if-ge v2, v4, :cond_0

    aget-object v5, p1, v2

    invoke-static {v0, v3, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentParameterJacobian(Ljava/lang/String;[D)V
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->a:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->b:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryState(I)[D

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    mul-int/2addr v1, v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->f:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    invoke-static {v0, v1, p2, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    if-ne p0, p1, :cond_1

    return-void

    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method

.method public registerVariationalEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->c:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    instance-of v1, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$c;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/commons/math3/ode/JacobianMatrices$c;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/JacobianMatrices$c;->a(Lorg/apache/commons/math3/ode/JacobianMatrices$c;)Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimary()Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-result-object v1

    if-ne v1, v0, :cond_1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->a:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    new-instance v0, Lorg/apache/commons/math3/ode/JacobianMatrices$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/ode/JacobianMatrices$b;-><init>(Lorg/apache/commons/math3/ode/JacobianMatrices;Lorg/apache/commons/math3/ode/JacobianMatrices$a;)V

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->addSecondaryEquations(Lorg/apache/commons/math3/ode/SecondaryEquations;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->b:I

    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->a:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->j:[D

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    return-void

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;

    invoke-direct {p0}, Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;-><init>()V

    throw p0
.end method

.method public setInitialMainStateJacobian([[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/ode/JacobianMatrices;->i(ILjava/lang/Object;)V

    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->i(ILjava/lang/Object;)V

    array-length v0, p1

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->j:[D

    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    invoke-static {v4, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->a:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->b:I

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->j:[D

    invoke-virtual {p1, v0, p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    :cond_1
    return-void
.end method

.method public setInitialParameterJacobian(Ljava/lang/String;[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->i(ILjava/lang/Object;)V

    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    mul-int/2addr v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->f:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->j:[D

    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->a:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    if-eqz p1, :cond_0

    iget p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->b:I

    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->j:[D

    invoke-virtual {p1, p2, p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    :cond_0
    return-void

    :cond_1
    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->e:I

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setParameterStep(Ljava/lang/String;D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->f:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p2, p3}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->setHP(D)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->i:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setParameterizedODE(Lorg/apache/commons/math3/ode/ParameterizedODE;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->d:Lorg/apache/commons/math3/ode/ParameterizedODE;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->i:Z

    return-void
.end method
