.class final enum Lorg/apache/commons/math3/ode/events/FilterType$2;
.super Lorg/apache/commons/math3/ode/events/FilterType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/FilterType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/FilterType;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/FilterType$1;)V

    return-void
.end method


# virtual methods
.method public getTriggeredIncreasing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 7

    const/4 p0, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz p4, :cond_b

    sget-object p4, Lorg/apache/commons/math3/ode/events/FilterType$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget p4, p4, v6

    if-eq p4, v3, :cond_8

    if-eq p4, v2, :cond_6

    if-eq p4, v1, :cond_4

    if-eq p4, v0, :cond_2

    if-ne p4, p0, :cond_1

    cmpl-double p0, p2, v4

    if-ltz p0, :cond_0

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    :cond_2
    cmpl-double p0, p2, v4

    if-ltz p0, :cond_3

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_3
    return-object p1

    :cond_4
    cmpg-double p0, p2, v4

    if-gtz p0, :cond_5

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_5
    return-object p1

    :cond_6
    cmpg-double p0, p2, v4

    if-gtz p0, :cond_7

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_7
    return-object p1

    :cond_8
    cmpl-double p0, p2, v4

    if-lez p0, :cond_9

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_9
    cmpg-double p0, p2, v4

    if-gez p0, :cond_a

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_a
    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_b
    sget-object p4, Lorg/apache/commons/math3/ode/events/FilterType$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget p4, p4, v6

    if-eq p4, v3, :cond_14

    if-eq p4, v2, :cond_12

    if-eq p4, v1, :cond_10

    if-eq p4, v0, :cond_e

    if-ne p4, p0, :cond_d

    cmpg-double p0, p2, v4

    if-gtz p0, :cond_c

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_c
    return-object p1

    :cond_d
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    :cond_e
    cmpg-double p0, p2, v4

    if-gtz p0, :cond_f

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_f
    return-object p1

    :cond_10
    cmpl-double p0, p2, v4

    if-ltz p0, :cond_11

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_11
    return-object p1

    :cond_12
    cmpl-double p0, p2, v4

    if-ltz p0, :cond_13

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_13
    return-object p1

    :cond_14
    cmpl-double p0, p2, v4

    if-lez p0, :cond_15

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_15
    cmpg-double p0, p2, v4

    if-gez p0, :cond_16

    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0

    :cond_16
    sget-object p0, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0
.end method
