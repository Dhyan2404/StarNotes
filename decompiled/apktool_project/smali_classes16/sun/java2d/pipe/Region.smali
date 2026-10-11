.class public Lsun/java2d/pipe/Region;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_REGION:Lsun/java2d/pipe/Region;

.field static final GROW_SIZE:I = 0x32

.field private static final INCLUDE_A:I = 0x1

.field private static final INCLUDE_B:I = 0x2

.field private static final INCLUDE_COMMON:I = 0x4

.field static final INIT_SIZE:I = 0x32

.field public static final WHOLE_REGION:Lsun/java2d/pipe/Region;


# instance fields
.field bands:[I

.field endIndex:I

.field hix:I

.field hiy:I

.field lox:I

.field loy:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsun/java2d/pipe/Region;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    sput-object v0, Lsun/java2d/pipe/Region;->EMPTY_REGION:Lsun/java2d/pipe/Region;

    new-instance v0, Lsun/java2d/pipe/Region;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v1, v2, v2}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    sput-object v0, Lsun/java2d/pipe/Region;->WHOLE_REGION:Lsun/java2d/pipe/Region;

    invoke-static {}, Lsun/java2d/pipe/Region;->initIDs()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lsun/java2d/pipe/Region;->lox:I

    .line 3
    iput p2, p0, Lsun/java2d/pipe/Region;->loy:I

    .line 4
    iput p3, p0, Lsun/java2d/pipe/Region;->hix:I

    .line 5
    iput p4, p0, Lsun/java2d/pipe/Region;->hiy:I

    return-void
.end method

.method private constructor <init>(IIII[II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lsun/java2d/pipe/Region;->lox:I

    .line 8
    iput p2, p0, Lsun/java2d/pipe/Region;->loy:I

    .line 9
    iput p3, p0, Lsun/java2d/pipe/Region;->hix:I

    .line 10
    iput p4, p0, Lsun/java2d/pipe/Region;->hiy:I

    .line 11
    iput-object p5, p0, Lsun/java2d/pipe/Region;->bands:[I

    .line 12
    iput p6, p0, Lsun/java2d/pipe/Region;->endIndex:I

    return-void
.end method

.method private appendSpan([I)V
    .locals 12

    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lsun/java2d/pipe/Region;->lox:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v2, 0x1

    aget v3, p1, v2

    iget v4, p0, Lsun/java2d/pipe/Region;->loy:I

    if-ge v3, v4, :cond_1

    move v3, v4

    :cond_1
    const/4 v4, 0x2

    aget v5, p1, v4

    iget v6, p0, Lsun/java2d/pipe/Region;->hix:I

    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    const/4 v6, 0x3

    aget v6, p1, v6

    iget v7, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-le v6, v7, :cond_3

    move v6, v7

    :cond_3
    if-le v5, v1, :cond_a

    if-gt v6, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x4

    aget v8, p1, v7

    iget v9, p0, Lsun/java2d/pipe/Region;->endIndex:I

    if-eqz v9, :cond_8

    iget-object v10, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v11, v8, 0x1

    aget v11, v10, v11

    if-lt v3, v11, :cond_5

    goto :goto_0

    :cond_5
    aget p1, v10, v8

    if-ne v3, p1, :cond_7

    if-ne v6, v11, :cond_7

    add-int/lit8 p1, v9, -0x1

    aget p1, v10, p1

    if-lt v1, p1, :cond_7

    add-int/lit8 p1, v9, -0x1

    aget p1, v10, p1

    if-ne v1, p1, :cond_6

    sub-int/2addr v9, v2

    aput v5, v10, v9

    return-void

    :cond_6
    invoke-direct {p0, v4}, Lsun/java2d/pipe/Region;->needSpace(I)V

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "bad span"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    iget-object v9, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-nez v9, :cond_9

    const/16 p1, 0x32

    new-array p1, p1, [I

    iput-object p1, p0, Lsun/java2d/pipe/Region;->bands:[I

    goto :goto_1

    :cond_9
    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lsun/java2d/pipe/Region;->needSpace(I)V

    invoke-direct {p0, p1}, Lsun/java2d/pipe/Region;->endRow([I)V

    aget v8, p1, v7

    :goto_1
    iget-object p1, p0, Lsun/java2d/pipe/Region;->bands:[I

    iget v7, p0, Lsun/java2d/pipe/Region;->endIndex:I

    add-int/lit8 v9, v7, 0x1

    aput v3, p1, v7

    add-int/lit8 v3, v9, 0x1

    aput v6, p1, v9

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lsun/java2d/pipe/Region;->endIndex:I

    aput v0, p1, v3

    :goto_2
    iget-object p1, p0, Lsun/java2d/pipe/Region;->bands:[I

    iget v0, p0, Lsun/java2d/pipe/Region;->endIndex:I

    add-int/lit8 v3, v0, 0x1

    aput v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lsun/java2d/pipe/Region;->endIndex:I

    aput v5, p1, v3

    add-int/2addr v8, v4

    aget p0, p1, v8

    add-int/2addr p0, v2

    aput p0, p1, v8

    :cond_a
    :goto_3
    return-void
.end method

.method private calcBBox()V
    .locals 9

    iget-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    iget v1, p0, Lsun/java2d/pipe/Region;->endIndex:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    iput v4, p0, Lsun/java2d/pipe/Region;->hiy:I

    iput v4, p0, Lsun/java2d/pipe/Region;->hix:I

    iput v4, p0, Lsun/java2d/pipe/Region;->loy:I

    iput v4, p0, Lsun/java2d/pipe/Region;->lox:I

    goto :goto_0

    :cond_0
    aget v1, v0, v4

    iput v1, p0, Lsun/java2d/pipe/Region;->loy:I

    aget v1, v0, v3

    iput v1, p0, Lsun/java2d/pipe/Region;->hiy:I

    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lsun/java2d/pipe/Region;->lox:I

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p0, Lsun/java2d/pipe/Region;->hix:I

    iput v4, p0, Lsun/java2d/pipe/Region;->endIndex:I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    return-void

    :cond_1
    iget v1, p0, Lsun/java2d/pipe/Region;->hix:I

    iget v2, p0, Lsun/java2d/pipe/Region;->lox:I

    move v5, v4

    move v6, v5

    :goto_1
    iget v7, p0, Lsun/java2d/pipe/Region;->endIndex:I

    if-ge v5, v7, :cond_4

    add-int/lit8 v6, v5, 0x2

    aget v6, v0, v6

    add-int/lit8 v7, v5, 0x3

    aget v8, v0, v7

    if-le v1, v8, :cond_2

    move v1, v8

    :cond_2
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    add-int/lit8 v6, v7, -0x1

    aget v6, v0, v6

    if-ge v2, v6, :cond_3

    move v2, v6

    :cond_3
    move v6, v5

    move v5, v7

    goto :goto_1

    :cond_4
    iput v1, p0, Lsun/java2d/pipe/Region;->lox:I

    aget v1, v0, v4

    iput v1, p0, Lsun/java2d/pipe/Region;->loy:I

    iput v2, p0, Lsun/java2d/pipe/Region;->hix:I

    add-int/2addr v6, v3

    aget v0, v0, v6

    iput v0, p0, Lsun/java2d/pipe/Region;->hiy:I

    return-void
.end method

.method public static clipAdd(II)I
    .locals 3

    add-int v0, p0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq p0, v1, :cond_3

    if-gez p1, :cond_2

    const/high16 p0, -0x80000000

    goto :goto_2

    :cond_2
    const p0, 0x7fffffff

    :goto_2
    move v0, p0

    :cond_3
    return v0
.end method

.method public static clipRound(D)I
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p0, v0

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static clipScale(ID)I
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    int-to-double v0, p0

    mul-double/2addr v0, p1

    const-wide/high16 p0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double p0, v0, p0

    if-gez p0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    const-wide p0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double p0, v0, p0

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    return p0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static dimAdd(II)I
    .locals 0

    if-gtz p1, :cond_0

    return p0

    :cond_0
    add-int/2addr p1, p0

    if-ge p1, p0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    return p1
.end method

.method private endRow([I)V
    .locals 8

    const/4 v0, 0x4

    aget v1, p1, v0

    const/4 v2, 0x5

    aget v3, p1, v2

    if-le v1, v3, :cond_2

    iget-object v4, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v5, v3, 0x1

    aget v5, v4, v5

    aget v6, v4, v1

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, v3, 0x2

    aget v5, v4, v5

    add-int/lit8 v6, v1, 0x2

    aget v6, v4, v6

    if-ne v5, v6, :cond_2

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v3, v3, 0x3

    :goto_0
    if-lez v6, :cond_1

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    add-int/lit8 v7, v3, 0x1

    aget v3, v4, v3

    if-eq v1, v3, :cond_0

    move v3, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    move v1, v5

    move v3, v7

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    aget p1, p1, v2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v3, 0x1

    aget v0, v4, v0

    aput v0, v4, p1

    iput v3, p0, Lsun/java2d/pipe/Region;->endIndex:I

    return-void

    :cond_2
    aget v1, p1, v0

    aput v1, p1, v2

    iget p0, p0, Lsun/java2d/pipe/Region;->endIndex:I

    aput p0, p1, v0

    return-void
.end method

.method private filterSpans(Lsun/java2d/pipe/Region;Lsun/java2d/pipe/Region;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lsun/java2d/pipe/Region;->bands:[I

    iget-object v4, v2, Lsun/java2d/pipe/Region;->bands:[I

    const/4 v5, 0x1

    if-nez v3, :cond_0

    iget v3, v1, Lsun/java2d/pipe/Region;->loy:I

    iget v6, v1, Lsun/java2d/pipe/Region;->hiy:I

    iget v7, v1, Lsun/java2d/pipe/Region;->lox:I

    iget v8, v1, Lsun/java2d/pipe/Region;->hix:I

    filled-new-array {v3, v6, v5, v7, v8}, [I

    move-result-object v3

    :cond_0
    if-nez v4, :cond_1

    iget v4, v2, Lsun/java2d/pipe/Region;->loy:I

    iget v6, v2, Lsun/java2d/pipe/Region;->hiy:I

    iget v7, v2, Lsun/java2d/pipe/Region;->lox:I

    iget v8, v2, Lsun/java2d/pipe/Region;->hix:I

    filled-new-array {v4, v6, v5, v7, v8}, [I

    move-result-object v4

    :cond_1
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    aget v8, v3, v7

    aget v9, v3, v5

    const/4 v10, 0x2

    aget v11, v3, v10

    mul-int/2addr v11, v10

    const/4 v12, 0x3

    add-int/2addr v11, v12

    aget v13, v4, v7

    aget v14, v4, v5

    aget v15, v4, v10

    mul-int/2addr v15, v10

    add-int/2addr v15, v12

    iget v7, v0, Lsun/java2d/pipe/Region;->loy:I

    move/from16 v17, v12

    move/from16 v18, v17

    :goto_0
    iget v12, v0, Lsun/java2d/pipe/Region;->hiy:I

    if-ge v7, v12, :cond_19

    if-lt v7, v9, :cond_4

    iget v8, v1, Lsun/java2d/pipe/Region;->endIndex:I

    if-ge v11, v8, :cond_2

    add-int/lit8 v8, v11, 0x1

    aget v9, v3, v11

    add-int/lit8 v11, v8, 0x1

    aget v8, v3, v8

    add-int/lit8 v17, v11, 0x1

    aget v11, v3, v11

    mul-int/2addr v11, v10

    add-int v11, v17, v11

    move/from16 v24, v9

    move v9, v8

    move/from16 v8, v24

    goto :goto_0

    :cond_2
    and-int/lit8 v8, p3, 0x2

    if-nez v8, :cond_3

    goto/16 :goto_9

    :cond_3
    move v8, v12

    move v9, v8

    goto :goto_0

    :cond_4
    if-lt v7, v14, :cond_7

    iget v13, v2, Lsun/java2d/pipe/Region;->endIndex:I

    if-ge v15, v13, :cond_5

    add-int/lit8 v12, v15, 0x1

    aget v13, v4, v15

    add-int/lit8 v14, v12, 0x1

    aget v12, v4, v12

    add-int/lit8 v18, v14, 0x1

    aget v14, v4, v14

    mul-int/2addr v14, v10

    add-int v15, v18, v14

    move v14, v12

    goto :goto_0

    :cond_5
    and-int/lit8 v13, p3, 0x1

    if-nez v13, :cond_6

    goto/16 :goto_9

    :cond_6
    move v13, v12

    move v14, v13

    goto :goto_0

    :cond_7
    if-ge v7, v13, :cond_9

    if-ge v7, v8, :cond_8

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_0

    :cond_8
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    and-int/lit8 v20, p3, 0x1

    if-eqz v20, :cond_a

    aput v7, v6, v5

    const/4 v7, 0x3

    aput v12, v6, v7

    move/from16 v7, v17

    :goto_1
    if-ge v7, v11, :cond_a

    add-int/lit8 v20, v7, 0x1

    aget v7, v3, v7

    const/16 v16, 0x0

    aput v7, v6, v16

    add-int/lit8 v7, v20, 0x1

    aget v20, v3, v20

    aput v20, v6, v10

    invoke-direct {v0, v6}, Lsun/java2d/pipe/Region;->appendSpan([I)V

    goto :goto_1

    :cond_9
    if-ge v7, v8, :cond_b

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    and-int/lit8 v20, p3, 0x2

    if-eqz v20, :cond_a

    aput v7, v6, v5

    const/4 v7, 0x3

    aput v12, v6, v7

    move/from16 v7, v18

    :goto_2
    if-ge v7, v15, :cond_a

    add-int/lit8 v20, v7, 0x1

    aget v7, v4, v7

    const/16 v16, 0x0

    aput v7, v6, v16

    add-int/lit8 v7, v20, 0x1

    aget v20, v4, v20

    aput v20, v6, v10

    invoke-direct {v0, v6}, Lsun/java2d/pipe/Region;->appendSpan([I)V

    goto :goto_2

    :cond_a
    move/from16 v19, v8

    move/from16 v21, v9

    move v7, v12

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_b
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v7, v6, v5

    const/4 v7, 0x3

    aput v12, v6, v7

    add-int/lit8 v19, v17, 0x1

    aget v5, v3, v17

    add-int/lit8 v21, v19, 0x1

    aget v19, v3, v19

    add-int/lit8 v22, v18, 0x1

    aget v7, v4, v18

    add-int/lit8 v23, v22, 0x1

    aget v22, v4, v22

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v1, v0, Lsun/java2d/pipe/Region;->lox:I

    if-ge v10, v1, :cond_c

    move v10, v1

    :cond_c
    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v19, v8

    move/from16 v21, v9

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v22, v12

    :goto_3
    iget v12, v0, Lsun/java2d/pipe/Region;->hix:I

    if-ge v10, v12, :cond_18

    if-lt v10, v1, :cond_f

    if-ge v2, v11, :cond_d

    add-int/lit8 v1, v2, 0x1

    aget v5, v3, v2

    add-int/lit8 v2, v1, 0x1

    aget v1, v3, v1

    goto :goto_3

    :cond_d
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_e

    goto/16 :goto_7

    :cond_e
    move v1, v12

    move v5, v1

    goto :goto_3

    :cond_f
    if-lt v10, v8, :cond_12

    if-ge v9, v15, :cond_10

    add-int/lit8 v7, v9, 0x1

    aget v8, v4, v9

    add-int/lit8 v9, v7, 0x1

    aget v7, v4, v7

    move/from16 v24, v8

    move v8, v7

    move/from16 v7, v24

    goto :goto_3

    :cond_10
    and-int/lit8 v7, p3, 0x1

    if-nez v7, :cond_11

    goto :goto_7

    :cond_11
    move v7, v12

    move v8, v7

    goto :goto_3

    :cond_12
    if-ge v10, v7, :cond_15

    if-ge v10, v5, :cond_14

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_13
    const/16 v23, 0x0

    goto :goto_5

    :cond_14
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    and-int/lit8 v23, p3, 0x1

    if-eqz v23, :cond_13

    :goto_4
    const/16 v23, 0x1

    goto :goto_5

    :cond_15
    if-ge v10, v5, :cond_16

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    and-int/lit8 v23, p3, 0x2

    if-eqz v23, :cond_13

    goto :goto_4

    :cond_16
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    and-int/lit8 v23, p3, 0x4

    if-eqz v23, :cond_13

    goto :goto_4

    :goto_5
    if-eqz v23, :cond_17

    const/16 v16, 0x0

    aput v10, v6, v16

    const/4 v10, 0x2

    aput v12, v6, v10

    invoke-direct {v0, v6}, Lsun/java2d/pipe/Region;->appendSpan([I)V

    goto :goto_6

    :cond_17
    const/4 v10, 0x2

    const/16 v16, 0x0

    :goto_6
    move v10, v12

    goto :goto_3

    :cond_18
    :goto_7
    const/4 v10, 0x2

    const/16 v16, 0x0

    move/from16 v7, v22

    :goto_8
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, v19

    move/from16 v9, v21

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_19
    :goto_9
    invoke-direct {v0, v6}, Lsun/java2d/pipe/Region;->endRow([I)V

    invoke-direct/range {p0 .. p0}, Lsun/java2d/pipe/Region;->calcBBox()V

    return-void
.end method

.method public static getInstance(IIII[I)Lsun/java2d/pipe/Region;
    .locals 16

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v0, 0x0

    .line 13
    aget v5, p4, v0

    const/4 v6, 0x1

    .line 14
    aget v7, p4, v6

    if-le v4, v2, :cond_4

    if-le v3, v1, :cond_4

    if-gt v7, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    sub-int v8, v7, v5

    mul-int/lit8 v8, v8, 0x5

    .line 15
    new-array v8, v8, [I

    const/4 v9, 0x2

    move v15, v9

    move v9, v0

    move v0, v15

    :goto_0
    if-ge v5, v7, :cond_2

    add-int/lit8 v10, v0, 0x1

    .line 16
    aget v0, p4, v0

    invoke-static {v1, v0}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v11, v10, 0x1

    .line 17
    aget v10, p4, v10

    invoke-static {v1, v10}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v10

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 18
    invoke-static {v2, v5}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 19
    invoke-static {v12, v6}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v13

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v12, v13, :cond_1

    add-int/lit8 v14, v9, 0x1

    .line 20
    aput v12, v8, v9

    add-int/lit8 v9, v14, 0x1

    .line 21
    aput v13, v8, v14

    add-int/lit8 v12, v9, 0x1

    .line 22
    aput v6, v8, v9

    add-int/lit8 v9, v12, 0x1

    .line 23
    aput v0, v8, v12

    add-int/lit8 v0, v9, 0x1

    .line 24
    aput v10, v8, v9

    move v9, v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v0, v11

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_3

    .line 25
    new-instance v7, Lsun/java2d/pipe/Region;

    move-object v0, v7

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v8

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lsun/java2d/pipe/Region;-><init>(IIII[II)V

    goto :goto_1

    :cond_3
    sget-object v7, Lsun/java2d/pipe/Region;->EMPTY_REGION:Lsun/java2d/pipe/Region;

    :goto_1
    return-object v7

    .line 26
    :cond_4
    :goto_2
    sget-object v0, Lsun/java2d/pipe/Region;->EMPTY_REGION:Lsun/java2d/pipe/Region;

    return-object v0
.end method

.method public static getInstance(Ljava/awt/Rectangle;)Lsun/java2d/pipe/Region;
    .locals 3

    .line 27
    iget v0, p0, Ljava/awt/Rectangle;->x:I

    iget v1, p0, Ljava/awt/Rectangle;->y:I

    iget v2, p0, Ljava/awt/Rectangle;->width:I

    iget p0, p0, Ljava/awt/Rectangle;->height:I

    invoke-static {v0, v1, v2, p0}, Lsun/java2d/pipe/Region;->getInstanceXYWH(IIII)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)Lsun/java2d/pipe/Region;
    .locals 2

    .line 1
    sget-object v0, Lsun/java2d/pipe/Region;->WHOLE_REGION:Lsun/java2d/pipe/Region;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lsun/java2d/pipe/Region;->getInstance(Lsun/java2d/pipe/Region;ZLjava/awt/Shape;Ljava/awt/geom/AffineTransform;)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lsun/java2d/pipe/Region;Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)Lsun/java2d/pipe/Region;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Lsun/java2d/pipe/Region;->getInstance(Lsun/java2d/pipe/Region;ZLjava/awt/Shape;Ljava/awt/geom/AffineTransform;)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lsun/java2d/pipe/Region;ZLjava/awt/Shape;Ljava/awt/geom/AffineTransform;)Lsun/java2d/pipe/Region;
    .locals 2

    .line 3
    instance-of v0, p2, Ljava/awt/geom/RectangularShape;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/awt/geom/RectangularShape;

    .line 4
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p0, Lsun/java2d/pipe/Region;->EMPTY_REGION:Lsun/java2d/pipe/Region;

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 6
    new-instance v1, Lsun/java2d/pipe/ShapeSpanIterator;

    invoke-direct {v1, p1}, Lsun/java2d/pipe/ShapeSpanIterator;-><init>(Z)V

    .line 7
    :try_start_0
    invoke-virtual {v1, p0}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputArea(Lsun/java2d/pipe/Region;)V

    .line 8
    invoke-interface {p2, p3}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p0

    invoke-virtual {v1, p0}, Lsun/java2d/pipe/ShapeSpanIterator;->appendPath(Ljava/awt/geom/PathIterator;)V

    .line 9
    invoke-virtual {v1, v0}, Lsun/java2d/pipe/ShapeSpanIterator;->getPathBox([I)V

    .line 10
    invoke-static {v0, v1}, Lsun/java2d/pipe/Region;->getInstance([ILsun/java2d/pipe/SpanIterator;)Lsun/java2d/pipe/Region;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v1}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    .line 12
    throw p0
.end method

.method public static getInstance([I)Lsun/java2d/pipe/Region;
    .locals 5

    .line 28
    new-instance v0, Lsun/java2d/pipe/Region;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    return-object v0
.end method

.method public static getInstance([ILsun/java2d/pipe/SpanIterator;)Lsun/java2d/pipe/Region;
    .locals 5

    .line 29
    new-instance v0, Lsun/java2d/pipe/Region;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    .line 30
    invoke-virtual {v0, p1}, Lsun/java2d/pipe/Region;->appendSpans(Lsun/java2d/pipe/SpanIterator;)V

    return-object v0
.end method

.method public static getInstanceXYWH(IIII)Lsun/java2d/pipe/Region;
    .locals 0

    invoke-static {p0, p2}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p2

    invoke-static {p1, p3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lsun/java2d/pipe/Region;->getInstanceXYXY(IIII)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public static getInstanceXYXY(IIII)Lsun/java2d/pipe/Region;
    .locals 1

    new-instance v0, Lsun/java2d/pipe/Region;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    return-object v0
.end method

.method private getSafeTranslatedRegion(II)Lsun/java2d/pipe/Region;
    .locals 11

    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    invoke-static {v0, p1}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v0

    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    invoke-static {v1, p2}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v1

    iget v2, p0, Lsun/java2d/pipe/Region;->hix:I

    invoke-static {v2, p1}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v2

    iget v3, p0, Lsun/java2d/pipe/Region;->hiy:I

    invoke-static {v3, p2}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v3

    new-instance v4, Lsun/java2d/pipe/Region;

    invoke-direct {v4, v0, v1, v2, v3}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    iget-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-eqz v0, :cond_7

    iget p0, p0, Lsun/java2d/pipe/Region;->endIndex:I

    new-array v1, p0, [I

    const/4 v2, 0x0

    move v3, v2

    move v5, v3

    :goto_0
    if-ge v3, p0, :cond_4

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v3, 0x1

    aget v3, v0, v3

    invoke-static {v3, p2}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v3

    aput v3, v1, v5

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v8, v7, 0x1

    aget v7, v0, v7

    invoke-static {v7, p2}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v7

    aput v7, v1, v6

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v9, v8, 0x1

    aget v8, v0, v8

    aput v8, v1, v5

    if-ge v3, v7, :cond_1

    move v3, v6

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_2

    add-int/lit8 v5, v9, 0x1

    aget v7, v0, v9

    invoke-static {v7, p1}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v7

    add-int/lit8 v9, v5, 0x1

    aget v5, v0, v5

    invoke-static {v5, p1}, Lsun/java2d/pipe/Region;->clipAdd(II)I

    move-result v5

    if-ge v7, v5, :cond_0

    add-int/lit8 v10, v3, 0x1

    aput v7, v1, v3

    add-int/lit8 v3, v10, 0x1

    aput v5, v1, v10

    goto :goto_1

    :cond_1
    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v9, v8

    move v3, v6

    :cond_2
    if-le v3, v6, :cond_3

    add-int/lit8 v5, v6, -0x1

    sub-int v6, v3, v6

    div-int/lit8 v6, v6, 0x2

    aput v6, v1, v5

    move v5, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, -0x3

    move v5, v6

    :goto_2
    move v3, v9

    goto :goto_0

    :cond_4
    const/4 p0, 0x5

    if-gt v5, p0, :cond_6

    if-ge v5, p0, :cond_5

    iput v2, v4, Lsun/java2d/pipe/Region;->hiy:I

    iput v2, v4, Lsun/java2d/pipe/Region;->hix:I

    iput v2, v4, Lsun/java2d/pipe/Region;->loy:I

    iput v2, v4, Lsun/java2d/pipe/Region;->lox:I

    goto :goto_3

    :cond_5
    aget p0, v1, v2

    iput p0, v4, Lsun/java2d/pipe/Region;->loy:I

    const/4 p0, 0x1

    aget p0, v1, p0

    iput p0, v4, Lsun/java2d/pipe/Region;->hiy:I

    const/4 p0, 0x3

    aget p0, v1, p0

    iput p0, v4, Lsun/java2d/pipe/Region;->lox:I

    const/4 p0, 0x4

    aget p0, v1, p0

    iput p0, v4, Lsun/java2d/pipe/Region;->hix:I

    goto :goto_3

    :cond_6
    iput v5, v4, Lsun/java2d/pipe/Region;->endIndex:I

    iput-object v1, v4, Lsun/java2d/pipe/Region;->bands:[I

    :cond_7
    :goto_3
    return-object v4
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private needSpace(I)V
    .locals 3

    iget v0, p0, Lsun/java2d/pipe/Region;->endIndex:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lsun/java2d/pipe/Region;->bands:[I

    array-length v2, v1

    if-lt p1, v2, :cond_0

    array-length p1, v1

    add-int/lit8 p1, p1, 0x32

    new-array p1, p1, [I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lsun/java2d/pipe/Region;->bands:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public appendSpans(Lsun/java2d/pipe/SpanIterator;)V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    :goto_0
    invoke-interface {p1, v0}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lsun/java2d/pipe/Region;->appendSpan([I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lsun/java2d/pipe/Region;->endRow([I)V

    invoke-direct {p0}, Lsun/java2d/pipe/Region;->calcBBox()V

    return-void
.end method

.method public clipBoxToBounds([I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lsun/java2d/pipe/Region;->lox:I

    if-ge v1, v2, :cond_0

    aput v2, p1, v0

    :cond_0
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lsun/java2d/pipe/Region;->loy:I

    if-ge v1, v2, :cond_1

    aput v2, p1, v0

    :cond_1
    const/4 v0, 0x2

    aget v1, p1, v0

    iget v2, p0, Lsun/java2d/pipe/Region;->hix:I

    if-le v1, v2, :cond_2

    aput v2, p1, v0

    :cond_2
    const/4 v0, 0x3

    aget v1, p1, v0

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-le v1, p0, :cond_3

    aput p0, p1, v0

    :cond_3
    return-void
.end method

.method public contains(II)Z
    .locals 5

    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_6

    iget v0, p0, Lsun/java2d/pipe/Region;->hix:I

    if-ge p1, v0, :cond_6

    iget v0, p0, Lsun/java2d/pipe/Region;->loy:I

    if-lt p2, v0, :cond_6

    iget v0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v1

    :goto_0
    iget v3, p0, Lsun/java2d/pipe/Region;->endIndex:I

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v4, v0, 0x1

    aget v0, v3, v0

    if-ge p2, v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v4, 0x1

    aget v4, v3, v4

    if-lt p2, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    aget v0, v3, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 p2, v0, 0x1

    aget v0, v3, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    :cond_4
    if-ge p2, v0, :cond_6

    iget-object v3, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v4, p2, 0x1

    aget p2, v3, p2

    if-ge p1, p2, :cond_5

    return v1

    :cond_5
    add-int/lit8 p2, v4, 0x1

    aget v3, v3, v4

    if-ge p1, v3, :cond_4

    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public encompasses(Lsun/java2d/pipe/Region;)Z
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-nez v0, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    iget v1, p1, Lsun/java2d/pipe/Region;->lox:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->loy:I

    iget v1, p1, Lsun/java2d/pipe/Region;->loy:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->hix:I

    iget v1, p1, Lsun/java2d/pipe/Region;->hix:I

    if-lt v0, v1, :cond_0

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    iget p1, p1, Lsun/java2d/pipe/Region;->hiy:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public encompassesXYWH(IIII)Z
    .locals 0

    invoke-static {p1, p3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p3

    invoke-static {p2, p4}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->encompassesXYXY(IIII)Z

    move-result p0

    return p0
.end method

.method public encompassesXYXY(IIII)Z
    .locals 1

    iget-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-nez v0, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    if-gt v0, p1, :cond_0

    iget p1, p0, Lsun/java2d/pipe/Region;->loy:I

    if-gt p1, p2, :cond_0

    iget p1, p0, Lsun/java2d/pipe/Region;->hix:I

    if-lt p1, p3, :cond_0

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-lt p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsun/java2d/pipe/Region;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsun/java2d/pipe/Region;

    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p1, Lsun/java2d/pipe/Region;->lox:I

    iget v3, p0, Lsun/java2d/pipe/Region;->lox:I

    if-ne v1, v3, :cond_b

    iget v1, p1, Lsun/java2d/pipe/Region;->loy:I

    iget v3, p0, Lsun/java2d/pipe/Region;->loy:I

    if-ne v1, v3, :cond_b

    iget v1, p1, Lsun/java2d/pipe/Region;->hix:I

    iget v3, p0, Lsun/java2d/pipe/Region;->hix:I

    if-ne v1, v3, :cond_b

    iget v1, p1, Lsun/java2d/pipe/Region;->hiy:I

    iget v3, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-eq v1, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-nez v1, :cond_6

    iget-object p0, p1, Lsun/java2d/pipe/Region;->bands:[I

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    return v0

    :cond_6
    iget-object v3, p1, Lsun/java2d/pipe/Region;->bands:[I

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget v4, p0, Lsun/java2d/pipe/Region;->endIndex:I

    iget p1, p1, Lsun/java2d/pipe/Region;->endIndex:I

    if-eq v4, p1, :cond_8

    return v2

    :cond_8
    move p1, v2

    :goto_1
    iget v4, p0, Lsun/java2d/pipe/Region;->endIndex:I

    if-ge p1, v4, :cond_a

    aget v4, v1, p1

    aget v5, v3, p1

    if-eq v4, v5, :cond_9

    return v2

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    return v0

    :cond_b
    :goto_2
    return v2
.end method

.method public filter(Lsun/java2d/pipe/SpanIterator;)Lsun/java2d/pipe/SpanIterator;
    .locals 3

    iget-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-nez v0, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    iget v2, p0, Lsun/java2d/pipe/Region;->hix:I

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    invoke-interface {p1, v0, v1, v2, p0}, Lsun/java2d/pipe/SpanIterator;->intersectClipBox(IIII)V

    goto :goto_0

    :cond_0
    new-instance v0, Lsun/java2d/pipe/RegionClipSpanIterator;

    invoke-direct {v0, p0, p1}, Lsun/java2d/pipe/RegionClipSpanIterator;-><init>(Lsun/java2d/pipe/Region;Lsun/java2d/pipe/SpanIterator;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getBounds([I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/java2d/pipe/Region;->lox:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lsun/java2d/pipe/Region;->hix:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    aput p0, p1, v0

    return-void
.end method

.method public getBoundsIntersection(Ljava/awt/Rectangle;)Lsun/java2d/pipe/Region;
    .locals 3

    .line 1
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lsun/java2d/pipe/Region;->getBoundsIntersectionXYWH(IIII)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public getBoundsIntersection(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;
    .locals 5

    .line 2
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/Region;->encompasses(Lsun/java2d/pipe/Region;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lsun/java2d/pipe/Region;->encompasses(Lsun/java2d/pipe/Region;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lsun/java2d/pipe/Region;

    iget v1, p1, Lsun/java2d/pipe/Region;->lox:I

    iget v2, p0, Lsun/java2d/pipe/Region;->lox:I

    if-ge v1, v2, :cond_2

    move v1, v2

    :cond_2
    iget v2, p1, Lsun/java2d/pipe/Region;->loy:I

    iget v3, p0, Lsun/java2d/pipe/Region;->loy:I

    if-ge v2, v3, :cond_3

    move v2, v3

    :cond_3
    iget v3, p1, Lsun/java2d/pipe/Region;->hix:I

    iget v4, p0, Lsun/java2d/pipe/Region;->hix:I

    if-le v3, v4, :cond_4

    move v3, v4

    :cond_4
    iget p1, p1, Lsun/java2d/pipe/Region;->hiy:I

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-le p1, p0, :cond_5

    move p1, p0

    :cond_5
    invoke-direct {v0, v1, v2, v3, p1}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    return-object v0
.end method

.method public getBoundsIntersectionXYWH(IIII)Lsun/java2d/pipe/Region;
    .locals 0

    invoke-static {p1, p3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p3

    invoke-static {p2, p4}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->getBoundsIntersectionXYXY(IIII)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public getBoundsIntersectionXYXY(IIII)Lsun/java2d/pipe/Region;
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-nez v0, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->loy:I

    if-lt v0, p2, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->hix:I

    if-gt v0, p3, :cond_0

    iget v0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-gt v0, p4, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lsun/java2d/pipe/Region;

    iget v1, p0, Lsun/java2d/pipe/Region;->lox:I

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    if-ge p2, v1, :cond_2

    move p2, v1

    :cond_2
    iget v1, p0, Lsun/java2d/pipe/Region;->hix:I

    if-le p3, v1, :cond_3

    move p3, v1

    :cond_3
    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-le p4, p0, :cond_4

    move p4, p0

    :cond_4
    invoke-direct {v0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    return-object v0
.end method

.method public getDifference(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;
    .locals 5

    invoke-virtual {p1, p0}, Lsun/java2d/pipe/Region;->intersectsQuickCheck(Lsun/java2d/pipe/Region;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/Region;->isInsideQuickCheck(Lsun/java2d/pipe/Region;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lsun/java2d/pipe/Region;->EMPTY_REGION:Lsun/java2d/pipe/Region;

    return-object p0

    :cond_1
    new-instance v0, Lsun/java2d/pipe/Region;

    iget v1, p0, Lsun/java2d/pipe/Region;->lox:I

    iget v2, p0, Lsun/java2d/pipe/Region;->loy:I

    iget v3, p0, Lsun/java2d/pipe/Region;->hix:I

    iget v4, p0, Lsun/java2d/pipe/Region;->hiy:I

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lsun/java2d/pipe/Region;->filterSpans(Lsun/java2d/pipe/Region;Lsun/java2d/pipe/Region;I)V

    return-object v0
.end method

.method public getExclusiveOr(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;
    .locals 6

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lsun/java2d/pipe/Region;

    iget v1, p1, Lsun/java2d/pipe/Region;->lox:I

    iget v2, p0, Lsun/java2d/pipe/Region;->lox:I

    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    iget v2, p1, Lsun/java2d/pipe/Region;->loy:I

    iget v3, p0, Lsun/java2d/pipe/Region;->loy:I

    if-le v2, v3, :cond_3

    move v2, v3

    :cond_3
    iget v3, p1, Lsun/java2d/pipe/Region;->hix:I

    iget v4, p0, Lsun/java2d/pipe/Region;->hix:I

    if-ge v3, v4, :cond_4

    move v3, v4

    :cond_4
    iget v4, p1, Lsun/java2d/pipe/Region;->hiy:I

    iget v5, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-ge v4, v5, :cond_5

    move v4, v5

    :cond_5
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lsun/java2d/pipe/Region;->filterSpans(Lsun/java2d/pipe/Region;Lsun/java2d/pipe/Region;I)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lsun/java2d/pipe/Region;->hiy:I

    iget p0, p0, Lsun/java2d/pipe/Region;->loy:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr v0, p0

    if-gez v0, :cond_1

    const v0, 0x7fffffff

    :cond_1
    return v0
.end method

.method public getHiX()I
    .locals 0

    iget p0, p0, Lsun/java2d/pipe/Region;->hix:I

    return p0
.end method

.method public getHiY()I
    .locals 0

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    return p0
.end method

.method public getIntersection(Ljava/awt/Rectangle;)Lsun/java2d/pipe/Region;
    .locals 3

    .line 1
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lsun/java2d/pipe/Region;->getIntersectionXYWH(IIII)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public getIntersection(Ljava/awt/geom/Rectangle2D;)Lsun/java2d/pipe/Region;
    .locals 9

    .line 2
    instance-of v0, p1, Ljava/awt/Rectangle;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/awt/Rectangle;

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/Region;->getIntersection(Ljava/awt/Rectangle;)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v5

    .line 5
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v7

    move-object v0, p0

    .line 6
    invoke-virtual/range {v0 .. v8}, Lsun/java2d/pipe/Region;->getIntersectionXYXY(DDDD)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public getIntersection(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;
    .locals 6

    .line 7
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/Region;->isInsideQuickCheck(Lsun/java2d/pipe/Region;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1, p0}, Lsun/java2d/pipe/Region;->isInsideQuickCheck(Lsun/java2d/pipe/Region;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 9
    :cond_1
    new-instance v0, Lsun/java2d/pipe/Region;

    iget v1, p1, Lsun/java2d/pipe/Region;->lox:I

    iget v2, p0, Lsun/java2d/pipe/Region;->lox:I

    if-ge v1, v2, :cond_2

    move v1, v2

    :cond_2
    iget v2, p1, Lsun/java2d/pipe/Region;->loy:I

    iget v3, p0, Lsun/java2d/pipe/Region;->loy:I

    if-ge v2, v3, :cond_3

    move v2, v3

    :cond_3
    iget v3, p1, Lsun/java2d/pipe/Region;->hix:I

    iget v4, p0, Lsun/java2d/pipe/Region;->hix:I

    if-le v3, v4, :cond_4

    move v3, v4

    :cond_4
    iget v4, p1, Lsun/java2d/pipe/Region;->hiy:I

    iget v5, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-le v4, v5, :cond_5

    move v4, v5

    :cond_5
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    .line 10
    invoke-virtual {v0}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lsun/java2d/pipe/Region;->filterSpans(Lsun/java2d/pipe/Region;Lsun/java2d/pipe/Region;I)V

    :cond_6
    return-object v0
.end method

.method public getIntersectionXYWH(IIII)Lsun/java2d/pipe/Region;
    .locals 0

    invoke-static {p1, p3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p3

    invoke-static {p2, p4}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->getIntersectionXYXY(IIII)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public getIntersectionXYXY(DDDD)Lsun/java2d/pipe/Region;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p7, p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result p1

    invoke-static {p3, p4}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result p2

    .line 3
    invoke-static {p5, p6}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result p3

    invoke-static {p7, p8}, Lsun/java2d/pipe/Region;->clipRound(D)I

    move-result p4

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->getIntersectionXYXY(IIII)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    :goto_0
    sget-object p0, Lsun/java2d/pipe/Region;->EMPTY_REGION:Lsun/java2d/pipe/Region;

    return-object p0
.end method

.method public getIntersectionXYXY(IIII)Lsun/java2d/pipe/Region;
    .locals 2

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->isInsideXYXY(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lsun/java2d/pipe/Region;

    iget v1, p0, Lsun/java2d/pipe/Region;->lox:I

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    if-ge p2, v1, :cond_2

    move p2, v1

    :cond_2
    iget v1, p0, Lsun/java2d/pipe/Region;->hix:I

    if-le p3, v1, :cond_3

    move p3, v1

    :cond_3
    iget v1, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-le p4, v1, :cond_4

    move p4, v1

    :cond_4
    invoke-direct {v0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    .line 8
    iget-object p1, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->getSpanIterator()Lsun/java2d/pipe/SpanIterator;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsun/java2d/pipe/Region;->appendSpans(Lsun/java2d/pipe/SpanIterator;)V

    :cond_5
    return-object v0
.end method

.method public getIterator()Lsun/java2d/pipe/RegionIterator;
    .locals 1

    new-instance v0, Lsun/java2d/pipe/RegionIterator;

    invoke-direct {v0, p0}, Lsun/java2d/pipe/RegionIterator;-><init>(Lsun/java2d/pipe/Region;)V

    return-object v0
.end method

.method public getLoX()I
    .locals 0

    iget p0, p0, Lsun/java2d/pipe/Region;->lox:I

    return p0
.end method

.method public getLoY()I
    .locals 0

    iget p0, p0, Lsun/java2d/pipe/Region;->loy:I

    return p0
.end method

.method public getScaledRegion(DD)Lsun/java2d/pipe/Region;
    .locals 11

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_c

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_c

    sget-object v0, Lsun/java2d/pipe/Region;->EMPTY_REGION:Lsun/java2d/pipe/Region;

    if-ne p0, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lsun/java2d/pipe/Region;->WHOLE_REGION:Lsun/java2d/pipe/Region;

    if-ne p0, v0, :cond_3

    :cond_2
    return-object p0

    :cond_3
    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    invoke-static {v0, p1, p2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v0

    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    invoke-static {v1, p3, p4}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v1

    iget v2, p0, Lsun/java2d/pipe/Region;->hix:I

    invoke-static {v2, p1, p2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v2

    iget v3, p0, Lsun/java2d/pipe/Region;->hiy:I

    invoke-static {v3, p3, p4}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v3

    new-instance v4, Lsun/java2d/pipe/Region;

    invoke-direct {v4, v0, v1, v2, v3}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    iget-object v0, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-eqz v0, :cond_b

    iget p0, p0, Lsun/java2d/pipe/Region;->endIndex:I

    new-array v1, p0, [I

    const/4 v2, 0x0

    move v3, v2

    move v5, v3

    :goto_0
    if-ge v3, p0, :cond_8

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v3, 0x1

    aget v3, v0, v3

    invoke-static {v3, p3, p4}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v3

    aput v3, v1, v5

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v8, v7, 0x1

    aget v7, v0, v7

    invoke-static {v7, p3, p4}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v7

    aput v7, v1, v6

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v9, v8, 0x1

    aget v8, v0, v8

    aput v8, v1, v5

    if-ge v3, v7, :cond_5

    move v3, v6

    :cond_4
    :goto_1
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_6

    add-int/lit8 v5, v9, 0x1

    aget v7, v0, v9

    invoke-static {v7, p1, p2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v7

    add-int/lit8 v9, v5, 0x1

    aget v5, v0, v5

    invoke-static {v5, p1, p2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v5

    if-ge v7, v5, :cond_4

    add-int/lit8 v10, v3, 0x1

    aput v7, v1, v3

    add-int/lit8 v3, v10, 0x1

    aput v5, v1, v10

    goto :goto_1

    :cond_5
    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v9, v8

    move v3, v6

    :cond_6
    if-le v3, v6, :cond_7

    add-int/lit8 v5, v6, -0x1

    sub-int v6, v3, v6

    div-int/lit8 v6, v6, 0x2

    aput v6, v1, v5

    move v5, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, -0x3

    move v5, v6

    :goto_2
    move v3, v9

    goto :goto_0

    :cond_8
    const/4 p0, 0x5

    if-gt v5, p0, :cond_a

    if-ge v5, p0, :cond_9

    iput v2, v4, Lsun/java2d/pipe/Region;->hiy:I

    iput v2, v4, Lsun/java2d/pipe/Region;->hix:I

    iput v2, v4, Lsun/java2d/pipe/Region;->loy:I

    iput v2, v4, Lsun/java2d/pipe/Region;->lox:I

    goto :goto_3

    :cond_9
    aget p0, v1, v2

    iput p0, v4, Lsun/java2d/pipe/Region;->loy:I

    const/4 p0, 0x1

    aget p0, v1, p0

    iput p0, v4, Lsun/java2d/pipe/Region;->hiy:I

    const/4 p0, 0x3

    aget p0, v1, p0

    iput p0, v4, Lsun/java2d/pipe/Region;->lox:I

    const/4 p0, 0x4

    aget p0, v1, p0

    iput p0, v4, Lsun/java2d/pipe/Region;->hix:I

    goto :goto_3

    :cond_a
    iput v5, v4, Lsun/java2d/pipe/Region;->endIndex:I

    iput-object v1, v4, Lsun/java2d/pipe/Region;->bands:[I

    :cond_b
    :goto_3
    return-object v4

    :cond_c
    :goto_4
    sget-object p0, Lsun/java2d/pipe/Region;->EMPTY_REGION:Lsun/java2d/pipe/Region;

    return-object p0
.end method

.method public getSpanIterator()Lsun/java2d/pipe/SpanIterator;
    .locals 1

    .line 1
    new-instance v0, Lsun/java2d/pipe/RegionSpanIterator;

    invoke-direct {v0, p0}, Lsun/java2d/pipe/RegionSpanIterator;-><init>(Lsun/java2d/pipe/Region;)V

    return-object v0
.end method

.method public getSpanIterator([I)Lsun/java2d/pipe/SpanIterator;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->getSpanIterator()Lsun/java2d/pipe/SpanIterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-interface {p0, v0, v1, v2, p1}, Lsun/java2d/pipe/SpanIterator;->intersectClipBox(IIII)V

    return-object p0
.end method

.method public getTranslatedRegion(II)Lsun/java2d/pipe/Region;
    .locals 11

    or-int v0, p1, p2

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    add-int v1, v0, p1

    iget v2, p0, Lsun/java2d/pipe/Region;->loy:I

    add-int v3, v2, p2

    iget v4, p0, Lsun/java2d/pipe/Region;->hix:I

    add-int v5, v4, p1

    iget v6, p0, Lsun/java2d/pipe/Region;->hiy:I

    add-int v7, v6, p2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-le v1, v0, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    if-lez p1, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    move v10, v8

    :goto_1
    if-ne v0, v10, :cond_c

    if-le v3, v2, :cond_3

    move v0, v9

    goto :goto_2

    :cond_3
    move v0, v8

    :goto_2
    if-lez p2, :cond_4

    move v2, v9

    goto :goto_3

    :cond_4
    move v2, v8

    :goto_3
    if-ne v0, v2, :cond_c

    if-le v5, v4, :cond_5

    move v0, v9

    goto :goto_4

    :cond_5
    move v0, v8

    :goto_4
    if-lez p1, :cond_6

    move v2, v9

    goto :goto_5

    :cond_6
    move v2, v8

    :goto_5
    if-ne v0, v2, :cond_c

    if-le v7, v6, :cond_7

    move v0, v9

    goto :goto_6

    :cond_7
    move v0, v8

    :goto_6
    if-lez p2, :cond_8

    move v2, v9

    goto :goto_7

    :cond_8
    move v2, v8

    :goto_7
    if-eq v0, v2, :cond_9

    goto :goto_9

    :cond_9
    new-instance v0, Lsun/java2d/pipe/Region;

    invoke-direct {v0, v1, v3, v5, v7}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    iget-object v1, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-eqz v1, :cond_b

    iget p0, p0, Lsun/java2d/pipe/Region;->endIndex:I

    iput p0, v0, Lsun/java2d/pipe/Region;->endIndex:I

    new-array v2, p0, [I

    iput-object v2, v0, Lsun/java2d/pipe/Region;->bands:[I

    :cond_a
    if-ge v8, p0, :cond_b

    aget v3, v1, v8

    add-int/2addr v3, p2

    aput v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v3, v1, v8

    add-int/2addr v3, p2

    aput v3, v2, v8

    add-int/2addr v8, v9

    aget v3, v1, v8

    aput v3, v2, v8

    :goto_8
    add-int/2addr v8, v9

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_a

    aget v4, v1, v8

    add-int/2addr v4, p1

    aput v4, v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v4, v1, v8

    add-int/2addr v4, p1

    aput v4, v2, v8

    goto :goto_8

    :cond_b
    return-object v0

    :cond_c
    :goto_9
    invoke-direct {p0, p1, p2}, Lsun/java2d/pipe/Region;->getSafeTranslatedRegion(II)Lsun/java2d/pipe/Region;

    move-result-object p0

    return-object p0
.end method

.method public getUnion(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;
    .locals 6

    invoke-virtual {p1}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1, p0}, Lsun/java2d/pipe/Region;->isInsideQuickCheck(Lsun/java2d/pipe/Region;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lsun/java2d/pipe/Region;->isInsideQuickCheck(Lsun/java2d/pipe/Region;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lsun/java2d/pipe/Region;

    iget v1, p1, Lsun/java2d/pipe/Region;->lox:I

    iget v2, p0, Lsun/java2d/pipe/Region;->lox:I

    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    iget v2, p1, Lsun/java2d/pipe/Region;->loy:I

    iget v3, p0, Lsun/java2d/pipe/Region;->loy:I

    if-le v2, v3, :cond_3

    move v2, v3

    :cond_3
    iget v3, p1, Lsun/java2d/pipe/Region;->hix:I

    iget v4, p0, Lsun/java2d/pipe/Region;->hix:I

    if-ge v3, v4, :cond_4

    move v3, v4

    :cond_4
    iget v4, p1, Lsun/java2d/pipe/Region;->hiy:I

    iget v5, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-ge v4, v5, :cond_5

    move v4, v5

    :cond_5
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/java2d/pipe/Region;-><init>(IIII)V

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Lsun/java2d/pipe/Region;->filterSpans(Lsun/java2d/pipe/Region;Lsun/java2d/pipe/Region;I)V

    return-object v0

    :cond_6
    :goto_0
    return-object p1

    :cond_7
    :goto_1
    return-object p0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lsun/java2d/pipe/Region;->hix:I

    iget p0, p0, Lsun/java2d/pipe/Region;->lox:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr v0, p0

    if-gez v0, :cond_1

    const v0, 0x7fffffff

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget v1, p0, Lsun/java2d/pipe/Region;->hix:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    mul-int/lit8 p0, p0, 0x9

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public intersectsQuickCheck(Lsun/java2d/pipe/Region;)Z
    .locals 2

    iget v0, p1, Lsun/java2d/pipe/Region;->hix:I

    iget v1, p0, Lsun/java2d/pipe/Region;->lox:I

    if-le v0, v1, :cond_0

    iget v0, p1, Lsun/java2d/pipe/Region;->lox:I

    iget v1, p0, Lsun/java2d/pipe/Region;->hix:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lsun/java2d/pipe/Region;->hiy:I

    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    if-le v0, v1, :cond_0

    iget p1, p1, Lsun/java2d/pipe/Region;->loy:I

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public intersectsQuickCheckXYXY(IIII)Z
    .locals 1

    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    if-le p3, v0, :cond_0

    iget p3, p0, Lsun/java2d/pipe/Region;->hix:I

    if-ge p1, p3, :cond_0

    iget p1, p0, Lsun/java2d/pipe/Region;->loy:I

    if-le p4, p1, :cond_0

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lsun/java2d/pipe/Region;->hix:I

    iget v1, p0, Lsun/java2d/pipe/Region;->lox:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lsun/java2d/pipe/Region;->hiy:I

    iget p0, p0, Lsun/java2d/pipe/Region;->loy:I

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isInsideQuickCheck(Lsun/java2d/pipe/Region;)Z
    .locals 2

    iget-object v0, p1, Lsun/java2d/pipe/Region;->bands:[I

    if-nez v0, :cond_0

    iget v0, p1, Lsun/java2d/pipe/Region;->lox:I

    iget v1, p0, Lsun/java2d/pipe/Region;->lox:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lsun/java2d/pipe/Region;->loy:I

    iget v1, p0, Lsun/java2d/pipe/Region;->loy:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lsun/java2d/pipe/Region;->hix:I

    iget v1, p0, Lsun/java2d/pipe/Region;->hix:I

    if-lt v0, v1, :cond_0

    iget p1, p1, Lsun/java2d/pipe/Region;->hiy:I

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsideXYWH(IIII)Z
    .locals 0

    invoke-static {p1, p3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p3

    invoke-static {p2, p4}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->isInsideXYXY(IIII)Z

    move-result p0

    return p0
.end method

.method public isInsideXYXY(IIII)Z
    .locals 1

    iget v0, p0, Lsun/java2d/pipe/Region;->lox:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Lsun/java2d/pipe/Region;->loy:I

    if-lt p1, p2, :cond_0

    iget p1, p0, Lsun/java2d/pipe/Region;->hix:I

    if-gt p1, p3, :cond_0

    iget p0, p0, Lsun/java2d/pipe/Region;->hiy:I

    if-gt p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRectangular()Z
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setOutputArea(Ljava/awt/Rectangle;)V
    .locals 3

    .line 1
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lsun/java2d/pipe/Region;->setOutputAreaXYWH(IIII)V

    return-void
.end method

.method public setOutputArea([I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    iput v0, p0, Lsun/java2d/pipe/Region;->lox:I

    const/4 v0, 0x1

    .line 3
    aget v0, p1, v0

    iput v0, p0, Lsun/java2d/pipe/Region;->loy:I

    const/4 v0, 0x2

    .line 4
    aget v0, p1, v0

    iput v0, p0, Lsun/java2d/pipe/Region;->hix:I

    const/4 v0, 0x3

    .line 5
    aget p1, p1, v0

    iput p1, p0, Lsun/java2d/pipe/Region;->hiy:I

    return-void
.end method

.method public setOutputAreaXYWH(IIII)V
    .locals 0

    invoke-static {p1, p3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p3

    invoke-static {p2, p4}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->setOutputAreaXYXY(IIII)V

    return-void
.end method

.method public setOutputAreaXYXY(IIII)V
    .locals 0

    iput p1, p0, Lsun/java2d/pipe/Region;->lox:I

    iput p2, p0, Lsun/java2d/pipe/Region;->loy:I

    iput p3, p0, Lsun/java2d/pipe/Region;->hix:I

    iput p4, p0, Lsun/java2d/pipe/Region;->hiy:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Region[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/java2d/pipe/Region;->lox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/java2d/pipe/Region;->loy:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/java2d/pipe/Region;->hix:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/java2d/pipe/Region;->hiy:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/java2d/pipe/Region;->bands:[I

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lsun/java2d/pipe/Region;->endIndex:I

    if-ge v3, v4, :cond_1

    const-string v4, "y{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v5, v3, 0x1

    aget v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v4, v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    :goto_1
    if-ge v5, v3, :cond_0

    const-string v4, "x("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/java2d/pipe/Region;->bands:[I

    add-int/lit8 v5, v6, 0x1

    aget v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
