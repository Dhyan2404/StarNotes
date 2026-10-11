.class public Lorg/apache/commons/math3/ode/events/EventFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/events/EventHandler;


# static fields
.field public static final g:I = 0x64


# instance fields
.field public final a:Lorg/apache/commons/math3/ode/events/EventHandler;

.field public final b:Lorg/apache/commons/math3/ode/events/FilterType;

.field public final c:[Lorg/apache/commons/math3/ode/events/Transformer;

.field public final d:[D

.field public e:Z

.field public f:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;Lorg/apache/commons/math3/ode/events/FilterType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->b:Lorg/apache/commons/math3/ode/events/FilterType;

    const/16 p1, 0x64

    new-array p2, p1, [Lorg/apache/commons/math3/ode/events/Transformer;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->d:[D

    return-void
.end method


# virtual methods
.method public eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    .locals 0

    iget-object p4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->b:Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/events/FilterType;->getTriggeredIncreasing()Z

    move-result p0

    invoke-interface {p4, p1, p2, p3, p0}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object p0

    return-object p0
.end method

.method public g(D[D)D
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iget-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length v5, v4

    sub-int/2addr v5, v3

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->f:D

    cmpg-double v6, v6, p1

    if-gez v6, :cond_1

    aget-object v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->b:Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {v6, v4, v0, v1, p3}, Lorg/apache/commons/math3/ode/events/FilterType;->selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;

    move-result-object p3

    if-eq p3, v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->d:[D

    invoke-static {v4, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {v4, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->d:[D

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->f:D

    aput-wide v3, v2, v5

    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object p3, v2, v5

    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->f:D

    invoke-virtual {p3, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    if-lez v5, :cond_3

    iget-object p3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->d:[D

    aget-wide v3, p3, v5

    cmpg-double p3, v3, p1

    if-gtz p3, :cond_2

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object p0, p0, v5

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object p0, p0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p0

    return-wide p0

    :cond_4
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->f:D

    cmpg-double v4, p1, v4

    if-gez v4, :cond_6

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->b:Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {v5, v4, v0, v1, p3}, Lorg/apache/commons/math3/ode/events/FilterType;->selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;

    move-result-object p3

    if-eq p3, v4, :cond_5

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->d:[D

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->d:[D

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->f:D

    aput-wide v4, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object p3, v3, v2

    :cond_5
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->f:D

    invoke-virtual {p3, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p0

    return-wide p0

    :cond_6
    :goto_1
    iget-object p3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->d:[D

    array-length v4, p3

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_8

    aget-wide v4, p3, v2

    cmpg-double p3, p1, v4

    if-gtz p3, :cond_7

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object p0, p0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p0

    return-wide p0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length p1, p3

    sub-int/2addr p1, v3

    aget-object p0, p0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public init(D[DD)V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/events/EventHandler;->init(D[DD)V

    cmpl-double p1, p4, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->e:Z

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1

    :cond_1
    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->f:D

    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->c:[Lorg/apache/commons/math3/ode/events/Transformer;

    sget-object p2, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->d:[D

    iget-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->f:D

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public resetState(D[D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    return-void
.end method
