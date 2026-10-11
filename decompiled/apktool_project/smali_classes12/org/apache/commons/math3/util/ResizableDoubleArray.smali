.class public Lorg/apache/commons/math3/util/ResizableDoubleArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/util/DoubleArray;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;
    }
.end annotation


# static fields
.field public static final ADDITIVE_MODE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_CONTRACTION_DELTA:D = 0.5

.field private static final DEFAULT_EXPANSION_FACTOR:D = 2.0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field public static final MULTIPLICATIVE_MODE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x305f1707055087bbL


# instance fields
.field private contractionCriterion:D

.field private expansionFactor:D

.field private expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

.field private internalArray:[D

.field private numElements:I

.field private startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v6, p2, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    .line 5
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 7
    sget-object v6, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    return-void
.end method

.method public varargs constructor <init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    .line 11
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 12
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 13
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 15
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    if-lez p1, :cond_1

    .line 16
    invoke-virtual {p0, p4, p5, p2, p3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    .line 17
    iput-wide p2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 18
    iput-wide p4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 19
    iput-object p6, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 20
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 21
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 22
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    if-eqz p7, :cond_0

    .line 23
    array-length p1, p7

    if-lez p1, :cond_0

    .line 24
    invoke-virtual {p0, p7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElements([D)V

    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_CAPACITY_NOT_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public constructor <init>(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    float-to-double v0, p2

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    float-to-double v2, p2

    float-to-double v4, p3

    move-object v0, p0

    move v1, p1

    .line 6
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDD)V

    return-void
.end method

.method public constructor <init>(IFFI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    float-to-double v2, p2

    float-to-double v4, p3

    const/4 p2, 0x1

    if-ne p4, p2, :cond_0

    .line 8
    sget-object p2, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    :goto_0
    move-object v6, p2

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    .line 9
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    .line 27
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 28
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 29
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 31
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 32
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 8

    const/16 v1, 0x10

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    .line 3
    sget-object v6, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(IDDLorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;[D)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    iput-wide v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    .line 6
    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    iput-wide v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iput-object v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 8
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    .line 9
    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    iput v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    .line 11
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iput v0, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    .line 12
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private declared-synchronized discardExtremeElements(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_3

    if-ltz p1, :cond_2

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->shouldContract()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contract()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_DISCARD_NEGATIVE_NUMBER_OF_ELEMENTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-direct {p2, v0, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    :cond_3
    new-instance p2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_ELEMENTS_TO_DISCARD_FROM_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    iget p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-direct {p2, v0, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized expandTo(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-array p1, p1, [D

    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized shouldContract()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    sget-object v1, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addElement(D)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expand()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/2addr v1, v2

    aput-wide p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addElementRolling(D)D
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    array-length v0, v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expand()V

    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v0, v4

    aput-wide p1, v1, v0

    invoke-direct {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->shouldContract()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contract()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addElements([D)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length v2, p1

    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iput v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkContractExpand(DD)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    cmpg-double p0, p1, p3

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ltz p0, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p1, v2

    const/4 v0, 0x0

    if-lez p0, :cond_1

    cmpg-double p0, p3, v2

    if-lez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p1

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EXPANSION_FACTOR_SMALLER_THAN_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 5
    throw p0

    .line 6
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p3, v1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p3

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTRACTION_CRITERIA_SMALLER_THAN_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 8
    throw p0

    .line 9
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTRACTION_CRITERIA_SMALLER_THAN_EXPANSION_FACTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 11
    throw p0
.end method

.method public checkContractExpand(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    float-to-double v0, p1

    float-to-double p1, p2

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compute(Lorg/apache/commons/math3/util/MathArrays$Function;)D
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays$Function;->evaluate([DII)D

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized contract()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [D

    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iput v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/util/ResizableDoubleArray;
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>()V

    .line 17
    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->copy(Lorg/apache/commons/math3/util/ResizableDoubleArray;Lorg/apache/commons/math3/util/ResizableDoubleArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardFrontElements(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardExtremeElements(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized discardMostRecentElements(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->discardExtremeElements(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    iget-wide v3, v1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    iget-wide v5, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    iget-wide v3, v1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    iget-wide v5, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    iget-object v3, v1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    iget-object v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    if-ne v3, v4, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    iget v3, v1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-ne v3, v4, :cond_5

    move v3, v0

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    if-eqz v3, :cond_6

    iget v3, v1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    iget v4, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    if-ne v3, v4, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    if-nez v0, :cond_7

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :cond_7
    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget-object v1, v1, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public declared-synchronized expand()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    sget-object v1, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    new-array v0, v0, [D

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getArrayRef()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    return-object p0
.end method

.method public getCapacity()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length p0, p0

    return p0
.end method

.method public getContractionCriteria()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getContractionCriterion()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getContractionCriterion()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    return-wide v0
.end method

.method public declared-synchronized getElement(I)D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getElements()[D
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    new-array v1, v0, [D

    iget-object v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExpansionFactor()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    double-to-float p0, v0

    return p0
.end method

.method public getExpansionMode()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/math3/util/ResizableDoubleArray$a;->a:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getInternalLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInternalValues()[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumElements()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStartIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    return p0
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [I

    iget-wide v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-wide v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    const/4 v2, 0x5

    aput v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContractionCriteria(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getExpansionFactor()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(FF)V

    monitor-enter p0

    float-to-double v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->contractionCriterion:D

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized setElement(ID)V
    .locals 4

    monitor-enter p0

    if-ltz p1, :cond_2

    add-int/lit8 v0, p1, 0x1

    :try_start_0
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    :cond_0
    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int v2, v1, p1

    iget-object v3, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v3, v3

    if-lt v2, v3, :cond_1

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expandTo(I)V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    iget v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setExpansionFactor(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getContractionCriterion()D

    move-result-wide v0

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->checkContractExpand(DD)V

    monitor-enter p0

    :try_start_0
    iput-wide v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionFactor:D

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExpansionMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNSUPPORTED_EXPANSION_MODE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MULTIPLICATIVE_MODE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "ADDITIVE_MODE"

    filled-new-array {p1, v2, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    monitor-enter p0

    if-nez p1, :cond_2

    .line 3
    :try_start_0
    sget-object p1, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->MULTIPLICATIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-ne p1, v0, :cond_3

    .line 4
    sget-object p1, Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;->ADDITIVE:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V

    .line 5
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExpansionMode(Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expansionMode:Lorg/apache/commons/math3/util/ResizableDoubleArray$ExpansionMode;

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInitialCapacity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public declared-synchronized setNumElements(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-ltz p1, :cond_1

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->expandTo(I)V

    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX_NOT_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substituteMostRecentElement(D)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->numElements:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v2, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->startIndex:I

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/apache/commons/math3/util/ResizableDoubleArray;->internalArray:[D

    aget-wide v3, v0, v2

    aput-wide p1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v3

    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_SUBSTITUTE_ELEMENT_FROM_EMPTY_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
