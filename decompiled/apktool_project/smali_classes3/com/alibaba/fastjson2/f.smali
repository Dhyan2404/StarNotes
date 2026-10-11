.class public final Lcom/alibaba/fastjson2/f;
.super Lcom/alibaba/fastjson2/i;
.source "SourceFile"


# instance fields
.field public final v0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/i;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/i;->Q:Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/f;->v0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/fastjson2/i;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 2
    iput-object p2, p0, Lcom/alibaba/fastjson2/f;->v0:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/i;->Q:Z

    return-void
.end method

.method public static s0([BI)J
    .locals 7

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget v1, Lsun/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v1, v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v4

    add-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/alibaba/fastjson2/i;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/i;->J:I

    iget v2, p0, Lcom/alibaba/fastjson2/i;->z:I

    sub-int v3, v1, v2

    iget-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/f;->v0:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/i;->q0(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/i;->t0:[C

    if-nez v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/i;->u0:Lcom/alibaba/fastjson2/JSONFactory$b;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson2/i;->t0:[C

    :cond_2
    if-eqz v1, :cond_3

    array-length v2, v1

    iget v3, p0, Lcom/alibaba/fastjson2/i;->O:I

    if-ge v2, v3, :cond_4

    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson2/i;->O:I

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson2/i;->t0:[C

    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson2/i;->z:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/alibaba/fastjson2/i;->J:I

    if-ge v2, v5, :cond_9

    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    aget-byte v5, v0, v2

    int-to-char v5, v5

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_8

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_8

    const/16 v6, 0x40

    if-eq v5, v6, :cond_8

    const/16 v6, 0x75

    if-eq v5, v6, :cond_6

    const/16 v6, 0x78

    if-eq v5, v6, :cond_5

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v5

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v0, v5

    add-int/lit8 v2, v2, 0x2

    aget-byte v6, v0, v2

    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v5

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v0, v5

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v0, v6

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, v0, v7

    add-int/lit8 v2, v2, 0x4

    aget-byte v8, v0, v2

    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v5

    goto :goto_1

    :cond_7
    const/16 v6, 0x22

    if-ne v5, v6, :cond_8

    goto :goto_2

    :cond_8
    :goto_1
    :pswitch_0
    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/String;

    iget p0, p0, Lcom/alibaba/fastjson2/i;->O:I

    invoke-direct {v0, v1, v3, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getNameHashCodeLCase()J
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/i;->v:[B

    iget v2, v0, Lcom/alibaba/fastjson2/i;->z:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :goto_0
    iget v8, v0, Lcom/alibaba/fastjson2/i;->y:I

    const/16 v10, 0x27

    const/16 v11, 0x41

    const/16 v12, 0x2d

    const/16 v13, 0x5f

    const/16 v14, 0x78

    const/16 v15, 0x75

    const/16 v3, 0x5c

    const/16 v4, 0x22

    const/16 v9, 0x20

    if-ge v2, v8, :cond_9

    aget-byte v8, v1, v2

    if-ne v8, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    aget-byte v8, v1, v2

    if-eq v8, v15, :cond_1

    if-eq v8, v14, :cond_0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v8

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v1, v8

    add-int/lit8 v2, v2, 0x2

    aget-byte v14, v1, v2

    invoke-static {v8, v14}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v8

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v1, v8

    add-int/lit8 v14, v2, 0x2

    aget-byte v14, v1, v14

    add-int/lit8 v17, v2, 0x3

    aget-byte v15, v1, v17

    add-int/lit8 v2, v2, 0x4

    aget-byte v3, v1, v2

    invoke-static {v8, v14, v15, v3}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v8

    goto :goto_1

    :cond_2
    if-ne v8, v4, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_1
    const/16 v3, 0xff

    if-gt v8, v3, :cond_8

    if-ltz v8, :cond_8

    const/16 v3, 0x8

    if-ge v5, v3, :cond_8

    if-nez v5, :cond_4

    if-nez v8, :cond_4

    goto/16 :goto_5

    :cond_4
    if-eq v8, v13, :cond_5

    if-eq v8, v12, :cond_5

    if-ne v8, v9, :cond_6

    :cond_5
    add-int/lit8 v12, v2, 0x1

    aget-byte v12, v1, v12

    if-eq v12, v4, :cond_6

    if-eq v12, v10, :cond_6

    if-eq v12, v8, :cond_6

    goto :goto_4

    :cond_6
    if-lt v8, v11, :cond_7

    const/16 v4, 0x5a

    if-gt v8, v4, :cond_7

    add-int/lit8 v8, v8, 0x20

    int-to-char v8, v8

    :cond_7
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    int-to-byte v3, v8

    int-to-long v3, v3

    const/16 v8, 0x38

    shl-long/2addr v3, v8

    const-wide v8, 0xffffffffffffffL

    goto :goto_2

    :pswitch_1
    int-to-byte v3, v8

    int-to-long v3, v3

    const/16 v8, 0x30

    shl-long/2addr v3, v8

    const-wide v8, 0xffffffffffffL

    goto :goto_2

    :pswitch_2
    int-to-byte v3, v8

    int-to-long v3, v3

    const/16 v8, 0x28

    shl-long/2addr v3, v8

    const-wide v8, 0xffffffffffL

    goto :goto_2

    :pswitch_3
    int-to-byte v3, v8

    int-to-long v3, v3

    shl-long/2addr v3, v9

    const-wide v8, 0xffffffffL

    goto :goto_2

    :pswitch_4
    int-to-byte v3, v8

    shl-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    const-wide/32 v8, 0xffffff

    goto :goto_2

    :pswitch_5
    int-to-byte v3, v8

    shl-int/lit8 v3, v3, 0x10

    int-to-long v3, v3

    const-wide/32 v8, 0xffff

    goto :goto_2

    :pswitch_6
    int-to-byte v4, v8

    shl-int/lit8 v3, v4, 0x8

    int-to-long v3, v3

    const-wide/16 v8, 0xff

    :goto_2
    and-long/2addr v6, v8

    add-long/2addr v6, v3

    goto :goto_3

    :pswitch_7
    int-to-byte v3, v8

    int-to-long v6, v3

    :goto_3
    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    iget v2, v0, Lcom/alibaba/fastjson2/i;->z:I

    const-wide/16 v6, 0x0

    :cond_9
    :goto_6
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-eqz v3, :cond_a

    return-wide v6

    :cond_a
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_7
    iget v3, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ge v2, v3, :cond_13

    aget-byte v3, v1, v2

    const/16 v7, 0x5c

    if-ne v3, v7, :cond_d

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, v1, v2

    const/16 v8, 0x75

    if-eq v3, v8, :cond_c

    const/16 v14, 0x78

    if-eq v3, v14, :cond_b

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v3

    goto :goto_8

    :cond_b
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    add-int/lit8 v2, v2, 0x2

    aget-byte v15, v1, v2

    invoke-static {v3, v15}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v3

    goto :goto_8

    :cond_c
    const/16 v14, 0x78

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    add-int/lit8 v15, v2, 0x2

    aget-byte v15, v1, v15

    add-int/lit8 v16, v2, 0x3

    aget-byte v7, v1, v16

    add-int/lit8 v2, v2, 0x4

    aget-byte v8, v1, v2

    invoke-static {v3, v15, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v3

    goto :goto_8

    :cond_d
    const/16 v14, 0x78

    if-ne v3, v4, :cond_e

    goto :goto_9

    :cond_e
    :goto_8
    add-int/lit8 v2, v2, 0x1

    if-eq v3, v13, :cond_f

    if-eq v3, v12, :cond_f

    if-ne v3, v9, :cond_10

    :cond_f
    aget-byte v7, v1, v2

    if-eq v7, v4, :cond_10

    if-eq v7, v10, :cond_10

    if-eq v7, v3, :cond_10

    goto :goto_7

    :cond_10
    const/16 v7, 0x5a

    if-lt v3, v11, :cond_11

    if-gt v3, v7, :cond_11

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    :cond_11
    if-gez v3, :cond_12

    and-int/lit16 v3, v3, 0xff

    :cond_12
    int-to-long v7, v3

    xor-long/2addr v5, v7

    const-wide v7, 0x100000001b3L

    mul-long/2addr v5, v7

    goto :goto_7

    :cond_13
    :goto_9
    return-wide v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public next()V
    .locals 9

    iget-object v0, p0, Lcom/alibaba/fastjson2/i;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/i;->y:I

    const/16 v3, 0x1a

    if-lt v1, v2, :cond_0

    move v2, v1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    :goto_1
    if-eqz v1, :cond_3

    if-lez v1, :cond_1

    const/16 v4, 0x20

    if-gt v1, v4, :cond_1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    and-int/lit16 v0, v1, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x2f

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/i;->skipComment()V

    :cond_2
    return-void

    :cond_3
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/i;->y:I

    if-ne v2, v1, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1
.end method

.method public nextIfNullOrEmptyString()Z
    .locals 18

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson2/i;->y:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v4, v0, Lcom/alibaba/fastjson2/i;->v:[B

    const/16 v5, 0x6e

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v5, :cond_0

    add-int/lit8 v5, v3, 0x2

    if-ge v5, v2, :cond_0

    aget-byte v8, v4, v3

    const/16 v9, 0x75

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v4, v8

    const/16 v9, 0x6c

    if-ne v8, v9, :cond_0

    aget-byte v5, v4, v5

    if-ne v5, v9, :cond_0

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    const/16 v5, 0x22

    if-eq v1, v5, :cond_1

    const/16 v5, 0x27

    if-ne v1, v5, :cond_a

    :cond_1
    if-ge v3, v2, :cond_a

    aget-byte v5, v4, v3

    if-ne v5, v1, :cond_a

    add-int/2addr v3, v7

    :goto_0
    const/16 v1, 0x1a

    if-ne v3, v2, :cond_2

    move v5, v3

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    :goto_2
    const-wide/16 v8, 0x0

    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    const/16 v14, 0x20

    if-ltz v3, :cond_4

    if-gt v3, v14, :cond_4

    shl-long v15, v12, v3

    and-long/2addr v15, v10

    cmp-long v15, v15, v8

    if-eqz v15, :cond_4

    if-ne v5, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v5, 0x1

    aget-byte v5, v4, v5

    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    goto :goto_2

    :cond_4
    const/16 v15, 0x2c

    if-ne v3, v15, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v6, :cond_7

    if-ne v5, v2, :cond_6

    :goto_3
    move v3, v1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v5, 0x1

    aget-byte v5, v4, v5

    :goto_4
    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    :cond_7
    :goto_5
    if-ltz v3, :cond_9

    if-gt v3, v14, :cond_9

    shl-long v15, v12, v3

    and-long/2addr v15, v10

    cmp-long v6, v15, v8

    if-eqz v6, :cond_9

    if-ne v5, v2, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v5, 0x1

    aget-byte v5, v4, v5

    goto :goto_4

    :cond_9
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-char v1, v3

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return v7

    :cond_a
    return v6
.end method

.method public nextIfObjectStart()Z
    .locals 9

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/i;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/i;->y:I

    const/16 v3, 0x1a

    if-ne v1, v2, :cond_1

    move v2, v1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    :goto_1
    if-eqz v1, :cond_4

    const/16 v4, 0x20

    if-gt v1, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v1, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v0, 0x2f

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/i;->skipComment()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/i;->y:I

    if-ne v2, v1, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1
.end method

.method public r0()V
    .locals 12

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/i;->v:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v6, v4, v5

    const/16 v7, 0x78

    const/16 v8, 0x75

    const/16 v9, 0x5c

    const/4 v10, 0x1

    if-ne v6, v9, :cond_2

    iput-boolean v10, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v4, v4, v5

    if-eq v4, v8, :cond_1

    if-eq v4, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v4, v10

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto/16 :goto_7

    :cond_2
    if-ne v6, v0, :cond_b

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    if-eqz v0, :cond_7

    new-array v0, v3, [C

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/i;->v:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    const/16 v6, 0x22

    if-ne v5, v9, :cond_5

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v5, v3, v4

    int-to-char v5, v5

    if-eq v5, v6, :cond_6

    if-eq v5, v9, :cond_6

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v5

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v3, v4

    add-int/2addr v4, v10

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v3, v4

    invoke-static {v5, v3}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v5

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v3, v4

    add-int/2addr v4, v10

    aget-byte v6, v3, v4

    add-int/2addr v4, v10

    aget-byte v11, v3, v4

    add-int/2addr v4, v10

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v3, v4

    invoke-static {v5, v6, v11, v3}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v5

    goto :goto_3

    :cond_5
    if-ne v5, v6, :cond_6

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    :cond_6
    :goto_3
    aput-char v5, v0, v1

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v3, v10

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v10

    goto :goto_2

    :cond_7
    sub-int/2addr v5, v1

    invoke-virtual {p0, v1, v5}, Lcom/alibaba/fastjson2/i;->q0(II)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/i;->v:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v3, v10

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v3

    :goto_5
    const/16 v3, 0x20

    if-gt v0, v3, :cond_8

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v0

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/alibaba/fastjson2/i;->v:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v3, v10

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v3

    goto :goto_5

    :cond_8
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_9

    move v2, v10

    :cond_9
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/f;->next()V

    goto :goto_6

    :cond_a
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v10

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    :goto_6
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    return-void

    :cond_b
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public readFieldName()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONReader;->f0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson2/i;->v:[B

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v4, v0, Lcom/alibaba/fastjson2/i;->z:I

    move v6, v3

    move v5, v4

    :goto_0
    iget v7, v0, Lcom/alibaba/fastjson2/i;->y:I

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ge v5, v7, :cond_a

    aget-byte v7, v2, v5

    const/16 v10, 0x5c

    if-ne v7, v10, :cond_4

    iput-boolean v9, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v2, v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_2

    const/4 v7, 0x6

    goto :goto_1

    :cond_2
    const/16 v8, 0x78

    if-ne v7, v8, :cond_3

    const/4 v7, 0x4

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    :goto_1
    add-int/2addr v5, v7

    goto :goto_4

    :cond_4
    if-ne v7, v1, :cond_9

    iput v6, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v5, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v2, v5

    :goto_2
    if-gt v1, v8, :cond_5

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    const-wide v10, 0x100003700L

    and-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v2, v5

    goto :goto_2

    :cond_5
    const/16 v6, 0x3a

    if-ne v1, v6, :cond_8

    add-int/2addr v5, v9

    iget v1, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ge v5, v1, :cond_7

    aget-byte v1, v2, v5

    :goto_3
    if-gt v1, v8, :cond_6

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    const-wide v10, 0x100003700L

    and-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v2, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_5

    :cond_7
    const/16 v1, 0x1a

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-static {v5, v1}, Lcom/alibaba/fastjson2/JSONReader;->k0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_8
    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-static {v5, v0}, Lcom/alibaba/fastjson2/JSONReader;->k0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/i;->J:I

    if-lt v1, v4, :cond_11

    iget-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    if-nez v5, :cond_10

    sub-int/2addr v1, v4

    const/16 v7, 0x38

    const/16 v10, 0x30

    const/16 v11, 0x28

    const/16 v12, 0x18

    const-wide/16 v15, 0xff

    packed-switch v1, :pswitch_data_0

    const-wide/16 v5, -0x1

    const-wide/16 v9, -0x1

    :goto_6
    const-wide/16 v11, -0x1

    goto/16 :goto_d

    :pswitch_0
    add-int/lit8 v17, v4, 0x7

    aget-byte v3, v2, v17

    int-to-long v5, v3

    shl-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long/2addr v13, v10

    add-long/2addr v5, v13

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long/2addr v13, v11

    add-long/2addr v5, v13

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long/2addr v13, v8

    add-long/2addr v5, v13

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long/2addr v13, v12

    add-long/2addr v5, v13

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    const/16 v3, 0x10

    shl-long/2addr v13, v3

    add-long/2addr v5, v13

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    const/16 v3, 0x8

    shl-long/2addr v13, v3

    add-long/2addr v5, v13

    aget-byte v3, v2, v4

    int-to-long v13, v3

    and-long/2addr v13, v15

    add-long/2addr v5, v13

    add-int/lit8 v3, v4, 0xf

    aget-byte v3, v2, v3

    int-to-long v13, v3

    shl-long/2addr v13, v7

    add-int/lit8 v3, v4, 0xe

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long v7, v8, v15

    shl-long/2addr v7, v10

    add-long/2addr v13, v7

    add-int/lit8 v3, v4, 0xd

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v11

    add-long/2addr v13, v7

    add-int/lit8 v3, v4, 0xc

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    add-long/2addr v13, v7

    add-int/lit8 v3, v4, 0xb

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v12

    add-long/2addr v13, v7

    add-int/lit8 v3, v4, 0xa

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x10

    shl-long/2addr v7, v3

    add-long/2addr v13, v7

    add-int/lit8 v3, v4, 0x9

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    add-long/2addr v13, v7

    add-int/lit8 v3, v4, 0x8

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    add-long/2addr v13, v7

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v5, v3

    shl-long/2addr v5, v10

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    shl-long/2addr v8, v11

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    const/16 v3, 0x20

    shl-long/2addr v8, v3

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    shl-long/2addr v8, v12

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    const/16 v3, 0x10

    shl-long/2addr v8, v3

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    const/16 v3, 0x8

    shl-long/2addr v8, v3

    add-long/2addr v5, v8

    aget-byte v3, v2, v4

    int-to-long v8, v3

    and-long/2addr v8, v15

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0xe

    aget-byte v3, v2, v3

    int-to-long v8, v3

    shl-long v7, v8, v7

    add-int/lit8 v3, v4, 0xd

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long v9, v13, v10

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0xc

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0xb

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x20

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0xa

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x9

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x8

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x8

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x7

    aget-byte v3, v2, v3

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v5, v3

    shl-long/2addr v5, v11

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    const/16 v3, 0x20

    shl-long/2addr v8, v3

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    shl-long/2addr v8, v12

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    const/16 v3, 0x10

    shl-long/2addr v8, v3

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    int-to-long v8, v3

    and-long/2addr v8, v15

    const/16 v3, 0x8

    shl-long/2addr v8, v3

    add-long/2addr v5, v8

    aget-byte v3, v2, v4

    int-to-long v8, v3

    and-long/2addr v8, v15

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0xd

    aget-byte v3, v2, v3

    int-to-long v8, v3

    shl-long v7, v8, v7

    add-int/lit8 v3, v4, 0xc

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long v9, v13, v10

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0xb

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0xa

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x20

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x9

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x8

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x7

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x8

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v5, v3

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v8, v3

    shl-long/2addr v8, v12

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v8, v3

    const/16 v3, 0x10

    shl-long/2addr v8, v3

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    int-to-long v8, v3

    const/16 v3, 0x8

    shl-long/2addr v8, v3

    add-long/2addr v5, v8

    aget-byte v3, v2, v4

    int-to-long v8, v3

    add-long/2addr v5, v8

    add-int/lit8 v3, v4, 0xc

    aget-byte v3, v2, v3

    int-to-long v8, v3

    shl-long v7, v8, v7

    add-int/lit8 v3, v4, 0xb

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long v9, v13, v10

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0xa

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x9

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x20

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x8

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x7

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x8

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    shl-int/2addr v3, v12

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/2addr v3, v5

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    int-to-long v5, v3

    add-int/lit8 v3, v4, 0xb

    aget-byte v3, v2, v3

    int-to-long v8, v3

    shl-long v7, v8, v7

    add-int/lit8 v3, v4, 0xa

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long v9, v13, v10

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x9

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x8

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x20

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x7

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x8

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    goto/16 :goto_7

    :pswitch_5
    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    const/16 v5, 0x10

    shl-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/2addr v3, v5

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    int-to-long v5, v3

    add-int/lit8 v3, v4, 0xa

    aget-byte v3, v2, v3

    int-to-long v8, v3

    shl-long v7, v8, v7

    add-int/lit8 v3, v4, 0x9

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long v9, v13, v10

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x8

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x7

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x20

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x8

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    goto/16 :goto_7

    :pswitch_6
    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    int-to-long v5, v3

    add-int/lit8 v3, v4, 0x9

    aget-byte v3, v2, v3

    int-to-long v8, v3

    shl-long v7, v8, v7

    add-int/lit8 v3, v4, 0x8

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long v9, v13, v10

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x7

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x20

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x8

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    goto :goto_7

    :pswitch_7
    aget-byte v3, v2, v4

    int-to-long v5, v3

    add-int/lit8 v3, v4, 0x8

    aget-byte v3, v2, v3

    int-to-long v8, v3

    shl-long v7, v8, v7

    add-int/lit8 v3, v4, 0x7

    aget-byte v3, v2, v3

    int-to-long v13, v3

    and-long/2addr v13, v15

    shl-long v9, v13, v10

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x20

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    shl-long/2addr v9, v12

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v9, v3

    and-long/2addr v9, v15

    const/16 v3, 0x8

    shl-long/2addr v9, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    :goto_7
    int-to-long v9, v3

    and-long/2addr v9, v15

    add-long v13, v7, v9

    :goto_8
    move-wide v9, v5

    move-wide v11, v13

    const-wide/16 v5, -0x1

    goto/16 :goto_d

    :pswitch_8
    add-int/lit8 v3, v4, 0x7

    aget-byte v3, v2, v3

    int-to-long v5, v3

    shl-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v10

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x10

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    aget-byte v3, v2, v4

    goto/16 :goto_9

    :pswitch_9
    add-int/lit8 v3, v4, 0x6

    aget-byte v3, v2, v3

    int-to-long v5, v3

    shl-long/2addr v5, v10

    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x10

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    aget-byte v3, v2, v4

    goto :goto_9

    :pswitch_a
    add-int/lit8 v3, v4, 0x5

    aget-byte v3, v2, v3

    int-to-long v5, v3

    shl-long/2addr v5, v11

    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x10

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    aget-byte v3, v2, v4

    goto :goto_9

    :pswitch_b
    add-int/lit8 v3, v4, 0x4

    aget-byte v3, v2, v3

    int-to-long v5, v3

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x10

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    int-to-long v7, v3

    and-long/2addr v7, v15

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    add-long/2addr v5, v7

    aget-byte v3, v2, v4

    :goto_9
    int-to-long v7, v3

    and-long/2addr v7, v15

    add-long/2addr v5, v7

    goto :goto_c

    :pswitch_c
    add-int/lit8 v3, v4, 0x3

    aget-byte v3, v2, v3

    shl-int/2addr v3, v12

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/2addr v3, v5

    aget-byte v5, v2, v4

    goto :goto_a

    :pswitch_d
    add-int/lit8 v3, v4, 0x2

    aget-byte v3, v2, v3

    const/16 v5, 0x10

    shl-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    add-int/2addr v3, v5

    aget-byte v5, v2, v4

    goto :goto_a

    :pswitch_e
    const/16 v6, 0x8

    add-int/lit8 v3, v4, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    aget-byte v5, v2, v4

    :goto_a
    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    goto :goto_b

    :pswitch_f
    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    :goto_b
    int-to-long v5, v3

    :goto_c
    move-wide v9, v5

    const-wide/16 v5, -0x1

    goto/16 :goto_6

    :goto_d
    cmp-long v3, v9, v5

    if-eqz v3, :cond_10

    cmp-long v3, v11, v5

    if-eqz v3, :cond_d

    xor-long v5, v9, v11

    const/16 v3, 0x20

    ushr-long v7, v5, v3

    xor-long/2addr v5, v7

    long-to-int v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->j:[Lcom/alibaba/fastjson2/JSONFactory$e;

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    and-int/2addr v3, v6

    aget-object v5, v5, v3

    if-nez v5, :cond_c

    new-array v0, v1, [C

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v1, :cond_b

    add-int v6, v4, v5

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    aput-char v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->j:[Lcom/alibaba/fastjson2/JSONFactory$e;

    new-instance v2, Lcom/alibaba/fastjson2/JSONFactory$e;

    move-object v7, v2

    move-object v8, v1

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/fastjson2/JSONFactory$e;-><init>(Ljava/lang/String;JJ)V

    aput-object v2, v0, v3

    return-object v1

    :cond_c
    iget-wide v1, v5, Lcom/alibaba/fastjson2/JSONFactory$e;->b:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_10

    iget-wide v1, v5, Lcom/alibaba/fastjson2/JSONFactory$e;->c:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_10

    iget-object v0, v5, Lcom/alibaba/fastjson2/JSONFactory$e;->a:Ljava/lang/String;

    return-object v0

    :cond_d
    const/16 v3, 0x20

    ushr-long v5, v9, v3

    xor-long/2addr v5, v9

    long-to-int v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->i:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    and-int/2addr v3, v6

    aget-object v5, v5, v3

    if-nez v5, :cond_f

    new-array v0, v1, [C

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v1, :cond_e

    add-int v6, v4, v5

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    aput-char v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->i:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    new-instance v2, Lcom/alibaba/fastjson2/util/NameCacheEntry;

    invoke-direct {v2, v1, v9, v10}, Lcom/alibaba/fastjson2/util/NameCacheEntry;-><init>(Ljava/lang/String;J)V

    aput-object v2, v0, v3

    return-object v1

    :cond_f
    iget-wide v1, v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_10

    iget-object v0, v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;

    return-object v0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/f;->getFieldName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-static {v5, v0}, Lcom/alibaba/fastjson2/JSONReader;->k0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readFieldNameHashCode()J
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/i;->v:[B

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x22

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_4

    const/16 v3, 0x27

    if-eq v2, v3, :cond_4

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v8, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONReader;->f0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/f;->readFieldNameHashCodeUnquote()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/i;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/alibaba/fastjson2/i;->z:I

    if-lez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/f;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal fieldName input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", previous fieldName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fieldName input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/i;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_4
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v6, v0, Lcom/alibaba/fastjson2/i;->z:I

    add-int/lit8 v7, v6, 0x9

    iget v8, v0, Lcom/alibaba/fastjson2/i;->y:I

    const/16 v12, 0x20

    const/16 v13, 0xff

    const/16 v14, 0x8

    const-wide/16 v15, 0xff

    const/4 v3, 0x1

    const/16 v4, 0x5c

    if-ge v7, v8, :cond_d

    aget-byte v5, v1, v6

    if-ne v5, v2, :cond_5

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v8, v6, 0x1

    aget-byte v9, v1, v8

    if-ne v9, v2, :cond_6

    if-eqz v5, :cond_6

    if-eq v5, v4, :cond_6

    int-to-long v10, v5

    iput v3, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v8, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x2

    move v5, v2

    move-wide v3, v10

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v8, v6, 0x2

    aget-byte v10, v1, v8

    if-ne v10, v2, :cond_7

    if-eqz v9, :cond_7

    if-eq v5, v4, :cond_7

    if-eq v9, v4, :cond_7

    shl-int/lit8 v7, v9, 0x8

    and-int/2addr v5, v13

    add-int/2addr v7, v5

    int-to-long v9, v7

    const/4 v5, 0x2

    iput v5, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v8, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x3

    :goto_2
    move v5, v2

    move-wide v3, v9

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v8, v6, 0x3

    aget-byte v11, v1, v8

    if-ne v11, v2, :cond_8

    if-eqz v10, :cond_8

    if-eq v5, v4, :cond_8

    if-eq v9, v4, :cond_8

    if-eq v10, v4, :cond_8

    const/16 v20, 0x10

    shl-int/lit8 v7, v10, 0x10

    and-int/2addr v9, v13

    shl-int/2addr v9, v14

    add-int/2addr v7, v9

    and-int/2addr v5, v13

    add-int/2addr v7, v5

    int-to-long v9, v7

    const/4 v5, 0x3

    iput v5, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v8, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x4

    goto :goto_2

    :cond_8
    add-int/lit8 v8, v6, 0x4

    aget-byte v3, v1, v8

    if-ne v3, v2, :cond_9

    if-eqz v11, :cond_9

    if-eq v5, v4, :cond_9

    if-eq v9, v4, :cond_9

    if-eq v10, v4, :cond_9

    if-eq v11, v4, :cond_9

    const/16 v19, 0x18

    shl-int/lit8 v3, v11, 0x18

    and-int/lit16 v7, v10, 0xff

    const/16 v10, 0x10

    shl-int/2addr v7, v10

    add-int/2addr v3, v7

    and-int/lit16 v7, v9, 0xff

    shl-int/2addr v7, v14

    add-int/2addr v3, v7

    and-int/2addr v5, v13

    add-int/2addr v3, v5

    int-to-long v9, v3

    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v8, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x5

    goto :goto_2

    :cond_9
    add-int/lit8 v8, v6, 0x5

    aget-byte v13, v1, v8

    if-ne v13, v2, :cond_a

    if-eqz v3, :cond_a

    if-eq v5, v4, :cond_a

    if-eq v9, v4, :cond_a

    if-eq v10, v4, :cond_a

    if-eq v11, v4, :cond_a

    if-eq v3, v4, :cond_a

    move/from16 v21, v5

    int-to-long v4, v3

    shl-long v3, v4, v12

    int-to-long v12, v11

    and-long v11, v12, v15

    const/16 v7, 0x18

    shl-long/2addr v11, v7

    add-long/2addr v3, v11

    int-to-long v10, v10

    and-long/2addr v10, v15

    const/16 v7, 0x10

    shl-long/2addr v10, v7

    add-long/2addr v3, v10

    int-to-long v9, v9

    and-long/2addr v9, v15

    shl-long/2addr v9, v14

    add-long/2addr v3, v9

    move/from16 v12, v21

    int-to-long v9, v12

    and-long/2addr v9, v15

    add-long/2addr v3, v9

    const/4 v7, 0x5

    iput v7, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v8, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x6

    move v5, v2

    goto/16 :goto_4

    :cond_a
    move v12, v5

    add-int/lit8 v4, v6, 0x6

    aget-byte v8, v1, v4

    if-ne v8, v2, :cond_b

    if-eqz v13, :cond_b

    const/16 v5, 0x5c

    if-eq v12, v5, :cond_b

    if-eq v9, v5, :cond_b

    if-eq v10, v5, :cond_b

    if-eq v11, v5, :cond_b

    if-eq v3, v5, :cond_b

    if-eq v13, v5, :cond_b

    int-to-long v7, v13

    const/16 v5, 0x28

    shl-long/2addr v7, v5

    move/from16 v22, v2

    int-to-long v2, v3

    and-long/2addr v2, v15

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    add-long/2addr v7, v2

    int-to-long v2, v11

    and-long/2addr v2, v15

    const/16 v11, 0x18

    shl-long/2addr v2, v11

    add-long/2addr v7, v2

    int-to-long v2, v10

    and-long/2addr v2, v15

    const/16 v10, 0x10

    shl-long/2addr v2, v10

    add-long/2addr v7, v2

    int-to-long v2, v9

    and-long/2addr v2, v15

    shl-long/2addr v2, v14

    add-long/2addr v7, v2

    int-to-long v2, v12

    and-long/2addr v2, v15

    add-long/2addr v2, v7

    const/4 v7, 0x6

    iput v7, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v4, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x7

    move-wide v3, v2

    move/from16 v5, v22

    goto/16 :goto_4

    :cond_b
    move/from16 v22, v2

    add-int/lit8 v2, v6, 0x7

    aget-byte v4, v1, v2

    move/from16 v5, v22

    if-ne v4, v5, :cond_c

    if-eqz v8, :cond_c

    const/16 v14, 0x5c

    if-eq v12, v14, :cond_c

    if-eq v9, v14, :cond_c

    if-eq v10, v14, :cond_c

    if-eq v11, v14, :cond_c

    if-eq v3, v14, :cond_c

    if-eq v13, v14, :cond_c

    if-eq v8, v14, :cond_c

    int-to-long v7, v8

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    int-to-long v13, v13

    and-long/2addr v13, v15

    const/16 v4, 0x28

    shl-long/2addr v13, v4

    add-long/2addr v7, v13

    int-to-long v3, v3

    and-long/2addr v3, v15

    const/16 v13, 0x20

    shl-long/2addr v3, v13

    add-long/2addr v7, v3

    int-to-long v3, v11

    and-long/2addr v3, v15

    const/16 v11, 0x18

    shl-long/2addr v3, v11

    add-long/2addr v7, v3

    int-to-long v3, v10

    and-long/2addr v3, v15

    const/16 v10, 0x10

    shl-long/2addr v3, v10

    add-long/2addr v7, v3

    int-to-long v3, v9

    and-long/2addr v3, v15

    const/16 v9, 0x8

    shl-long/2addr v3, v9

    add-long/2addr v7, v3

    int-to-long v3, v12

    and-long/2addr v3, v15

    add-long/2addr v3, v7

    const/4 v7, 0x7

    iput v7, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v2, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x8

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v6, 0x8

    aget-byte v14, v1, v2

    if-ne v14, v5, :cond_e

    if-eqz v4, :cond_e

    const/16 v14, 0x5c

    if-eq v12, v14, :cond_e

    if-eq v9, v14, :cond_e

    if-eq v10, v14, :cond_e

    if-eq v11, v14, :cond_e

    if-eq v3, v14, :cond_e

    if-eq v13, v14, :cond_e

    if-eq v8, v14, :cond_e

    if-eq v4, v14, :cond_e

    invoke-static {v1, v6}, Lcom/alibaba/fastjson2/f;->s0([BI)J

    move-result-wide v3

    const/16 v6, 0x8

    iput v6, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v2, v0, Lcom/alibaba/fastjson2/i;->J:I

    move v6, v7

    goto :goto_4

    :cond_d
    :goto_3
    move v5, v2

    :cond_e
    const-wide/16 v3, 0x0

    :goto_4
    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    const/16 v7, 0x78

    const/16 v8, 0x75

    if-nez v2, :cond_16

    const/4 v2, 0x0

    :goto_5
    iget v9, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ge v6, v9, :cond_16

    aget-byte v9, v1, v6

    if-ne v9, v5, :cond_10

    if-nez v2, :cond_f

    iget v6, v0, Lcom/alibaba/fastjson2/i;->z:I

    goto/16 :goto_e

    :cond_f
    iput v2, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v6, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    :cond_10
    const/16 v10, 0x5c

    if-ne v9, v10, :cond_13

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v6, v6, 0x1

    aget-byte v9, v1, v6

    if-eq v9, v8, :cond_12

    if-eq v9, v7, :cond_11

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v9

    goto :goto_6

    :cond_11
    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v6, v6, 0x2

    aget-byte v10, v1, v6

    invoke-static {v9, v10}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v9

    goto :goto_6

    :cond_12
    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, v1, v10

    add-int/lit8 v11, v6, 0x3

    aget-byte v11, v1, v11

    add-int/lit8 v6, v6, 0x4

    aget-byte v12, v1, v6

    invoke-static {v9, v10, v11, v12}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v9

    :cond_13
    :goto_6
    const/16 v10, 0xff

    if-gt v9, v10, :cond_15

    const/16 v10, 0x8

    if-ge v2, v10, :cond_15

    if-nez v2, :cond_14

    if-nez v9, :cond_14

    goto/16 :goto_d

    :cond_14
    packed-switch v2, :pswitch_data_0

    const/16 v13, 0x10

    :goto_7
    const/4 v9, 0x1

    goto :goto_c

    :pswitch_0
    int-to-byte v9, v9

    int-to-long v9, v9

    const/16 v11, 0x38

    shl-long/2addr v9, v11

    const-wide v11, 0xffffffffffffffL

    goto :goto_8

    :pswitch_1
    int-to-byte v9, v9

    int-to-long v9, v9

    const/16 v11, 0x30

    shl-long/2addr v9, v11

    const-wide v11, 0xffffffffffffL

    :goto_8
    and-long/2addr v3, v11

    goto :goto_9

    :pswitch_2
    int-to-byte v9, v9

    int-to-long v9, v9

    const/16 v11, 0x28

    shl-long/2addr v9, v11

    const-wide v12, 0xffffffffffL

    and-long/2addr v3, v12

    goto :goto_9

    :pswitch_3
    const/16 v11, 0x28

    int-to-byte v9, v9

    int-to-long v9, v9

    const/16 v12, 0x20

    shl-long/2addr v9, v12

    const-wide v13, 0xffffffffL

    and-long/2addr v3, v13

    :goto_9
    add-long/2addr v3, v9

    goto :goto_a

    :pswitch_4
    const/16 v11, 0x28

    int-to-byte v9, v9

    const/16 v10, 0x18

    shl-int/2addr v9, v10

    int-to-long v13, v9

    const-wide/32 v18, 0xffffff

    and-long v3, v3, v18

    add-long/2addr v3, v13

    :goto_a
    const/4 v9, 0x1

    const/16 v13, 0x10

    goto :goto_c

    :pswitch_5
    const/16 v10, 0x18

    const/16 v11, 0x28

    int-to-byte v9, v9

    const/16 v13, 0x10

    shl-int/2addr v9, v13

    int-to-long v10, v9

    const-wide/32 v23, 0xffff

    and-long v3, v3, v23

    goto :goto_b

    :pswitch_6
    const/16 v13, 0x10

    int-to-byte v9, v9

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    int-to-long v10, v9

    and-long/2addr v3, v15

    :goto_b
    add-long/2addr v3, v10

    goto :goto_7

    :pswitch_7
    const/16 v13, 0x10

    int-to-byte v3, v9

    int-to-long v3, v3

    goto :goto_7

    :goto_c
    add-int/2addr v6, v9

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_15
    :goto_d
    iget v6, v0, Lcom/alibaba/fastjson2/i;->z:I

    const-wide/16 v3, 0x0

    :cond_16
    :goto_e
    const-wide/16 v9, 0x0

    cmp-long v2, v3, v9

    if-eqz v2, :cond_17

    goto :goto_12

    :cond_17
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v3, v2

    const/4 v2, 0x0

    :goto_f
    aget-byte v9, v1, v6

    const-wide v10, 0x100000001b3L

    const/16 v13, 0x5c

    if-ne v9, v13, :cond_1a

    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v6, v6, 0x1

    aget-byte v9, v1, v6

    if-eq v9, v8, :cond_19

    if-eq v9, v7, :cond_18

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v9

    :goto_10
    const/4 v7, 0x1

    goto :goto_11

    :cond_18
    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v6, v6, 0x2

    aget-byte v14, v1, v6

    invoke-static {v9, v14}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v9

    goto :goto_10

    :cond_19
    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, v1, v14

    add-int/lit8 v15, v6, 0x3

    aget-byte v15, v1, v15

    add-int/lit8 v6, v6, 0x4

    aget-byte v7, v1, v6

    invoke-static {v9, v14, v15, v7}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v9

    goto :goto_10

    :goto_11
    add-int/2addr v6, v7

    int-to-long v14, v9

    xor-long/2addr v3, v14

    mul-long/2addr v3, v10

    const/16 v12, 0x20

    const-wide/16 v14, 0x0

    const/16 v17, 0xff

    goto/16 :goto_17

    :cond_1a
    const/4 v7, 0x1

    if-ne v9, v5, :cond_22

    iput v2, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v6, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/2addr v6, v7

    :goto_12
    iget v2, v0, Lcom/alibaba/fastjson2/i;->y:I

    const/16 v7, 0x1a

    if-ne v6, v2, :cond_1b

    move v5, v7

    goto :goto_13

    :cond_1b
    add-int/lit8 v2, v6, 0x1

    aget-byte v5, v1, v6

    move v6, v2

    :goto_13
    move v2, v5

    :goto_14
    const-wide/16 v8, 0x1

    const/16 v5, 0x20

    if-gt v2, v5, :cond_1d

    shl-long v10, v8, v2

    const-wide v12, 0x100003700L

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1d

    iget v2, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ne v6, v2, :cond_1c

    move v2, v7

    goto :goto_14

    :cond_1c
    add-int/lit8 v2, v6, 0x1

    aget-byte v6, v1, v6

    move/from16 v25, v6

    move v6, v2

    move/from16 v2, v25

    goto :goto_14

    :cond_1d
    const/16 v10, 0x3a

    if-ne v2, v10, :cond_21

    iget v2, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ne v6, v2, :cond_1e

    move v2, v6

    move v6, v7

    goto :goto_15

    :cond_1e
    add-int/lit8 v2, v6, 0x1

    aget-byte v6, v1, v6

    :goto_15
    const/16 v12, 0x20

    :goto_16
    if-gt v6, v12, :cond_20

    shl-long v10, v8, v6

    const-wide v13, 0x100003700L

    and-long/2addr v10, v13

    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-eqz v5, :cond_20

    iget v5, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ne v2, v5, :cond_1f

    move v6, v7

    goto :goto_16

    :cond_1f
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v1, v2

    move v6, v2

    move v2, v5

    goto :goto_16

    :cond_20
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v1, 0xff

    and-int/2addr v1, v6

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-wide v3

    :cond_21
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\', but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/i;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    const/16 v12, 0x20

    const-wide/16 v14, 0x0

    const/16 v17, 0xff

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v9, v9, 0xff

    int-to-long v7, v9

    xor-long/2addr v3, v7

    mul-long/2addr v3, v10

    :goto_17
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x78

    const/16 v8, 0x75

    goto/16 :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFieldNameHashCodeUnquote()J
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/i;->y:I

    iget-object v4, v0, Lcom/alibaba/fastjson2/i;->v:[B

    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    add-int/lit8 v6, v2, -0x1

    iput v6, v0, Lcom/alibaba/fastjson2/i;->z:I

    move v9, v1

    move v8, v5

    const-wide/16 v10, 0x0

    :goto_0
    const/16 v12, 0x5d

    const/16 v13, 0x5b

    const/16 v14, 0xd

    const/16 v15, 0xc

    const-wide v19, 0x100003700L

    const-wide/16 v21, 0x1

    const/16 v1, 0x3a

    const/16 v6, 0x1a

    const/4 v7, 0x1

    if-gt v2, v3, :cond_a

    if-eq v8, v15, :cond_7

    if-eq v8, v14, :cond_7

    if-eq v8, v6, :cond_7

    if-eq v8, v1, :cond_7

    if-eq v8, v13, :cond_7

    if-eq v8, v12, :cond_7

    const/16 v12, 0x7b

    if-eq v8, v12, :cond_7

    const/16 v12, 0x7d

    if-eq v8, v12, :cond_7

    const/16 v12, 0x20

    if-eq v8, v12, :cond_7

    const/16 v12, 0x21

    if-eq v8, v12, :cond_7

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    const/16 v12, 0x5c

    if-ne v8, v12, :cond_3

    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, v4, v2

    int-to-char v2, v2

    const/16 v13, 0x22

    if-eq v2, v13, :cond_2

    if-eq v2, v1, :cond_2

    const/16 v13, 0x40

    if-eq v2, v13, :cond_2

    if-eq v2, v12, :cond_2

    const/16 v12, 0x75

    if-eq v2, v12, :cond_1

    const/16 v12, 0x78

    if-eq v2, v12, :cond_0

    const/16 v12, 0x2a

    if-eq v2, v12, :cond_2

    const/16 v12, 0x2b

    if-eq v2, v12, :cond_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v2

    goto :goto_1

    :cond_0
    aget-byte v2, v4, v8

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, v4, v12

    invoke-static {v2, v12}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v2

    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_1
    aget-byte v2, v4, v8

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, v4, v12

    add-int/lit8 v13, v8, 0x2

    aget-byte v13, v4, v13

    add-int/lit8 v23, v8, 0x3

    aget-byte v14, v4, v23

    invoke-static {v2, v12, v13, v14}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v2

    add-int/lit8 v8, v8, 0x4

    :cond_2
    :goto_1
    :pswitch_0
    const/16 v12, 0xff

    move/from16 v24, v8

    move v8, v2

    move/from16 v2, v24

    goto :goto_2

    :cond_3
    const/16 v12, 0xff

    :goto_2
    if-gt v8, v12, :cond_6

    const/16 v12, 0x8

    if-ge v9, v12, :cond_6

    if-nez v9, :cond_4

    if-nez v8, :cond_4

    goto :goto_6

    :cond_4
    int-to-byte v1, v8

    packed-switch v9, :pswitch_data_5

    goto :goto_4

    :pswitch_1
    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    const-wide v12, 0xffffffffffffffL

    goto :goto_3

    :pswitch_2
    int-to-long v7, v1

    const/16 v1, 0x30

    shl-long/2addr v7, v1

    const-wide v12, 0xffffffffffffL

    goto :goto_3

    :pswitch_3
    int-to-long v7, v1

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    const-wide v12, 0xffffffffffL

    goto :goto_3

    :pswitch_4
    int-to-long v7, v1

    const/16 v1, 0x20

    shl-long/2addr v7, v1

    const-wide v12, 0xffffffffL

    goto :goto_3

    :pswitch_5
    shl-int/lit8 v1, v1, 0x18

    int-to-long v7, v1

    const-wide/32 v12, 0xffffff

    goto :goto_3

    :pswitch_6
    shl-int/lit8 v1, v1, 0x10

    int-to-long v7, v1

    const-wide/32 v12, 0xffff

    goto :goto_3

    :pswitch_7
    shl-int/lit8 v1, v1, 0x8

    int-to-long v7, v1

    const-wide/16 v12, 0xff

    :goto_3
    and-long/2addr v10, v12

    add-long/2addr v10, v7

    goto :goto_4

    :pswitch_8
    int-to-long v10, v1

    :goto_4
    if-ne v2, v3, :cond_5

    move v8, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v4, v2

    const/16 v6, 0xff

    and-int/2addr v2, v6

    move v8, v2

    move v2, v1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    :goto_6
    iget v2, v0, Lcom/alibaba/fastjson2/i;->z:I

    add-int/2addr v2, v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    goto :goto_9

    :cond_7
    :pswitch_9
    iput v9, v0, Lcom/alibaba/fastjson2/i;->O:I

    if-ne v8, v6, :cond_8

    move v5, v2

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v2, -0x1

    :goto_7
    iput v5, v0, Lcom/alibaba/fastjson2/i;->J:I

    const/16 v5, 0x20

    if-gt v8, v5, :cond_a

    shl-long v12, v21, v8

    and-long v12, v12, v19

    const-wide/16 v16, 0x0

    cmp-long v5, v12, v16

    if-eqz v5, :cond_a

    if-ne v2, v3, :cond_9

    move v5, v6

    goto :goto_8

    :cond_9
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v4, v2

    int-to-char v2, v2

    move/from16 v24, v5

    move v5, v2

    move/from16 v2, v24

    goto :goto_8

    :cond_a
    move v5, v8

    :goto_8
    const-wide/16 v8, 0x0

    :goto_9
    cmp-long v12, v10, v8

    if-eqz v12, :cond_b

    goto/16 :goto_12

    :cond_b
    const-wide v8, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v10, v8

    const/16 v9, 0x5c

    move v8, v5

    move v5, v2

    const/4 v2, 0x0

    :goto_a
    if-ne v8, v9, :cond_12

    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v4, v5

    const/16 v12, 0x22

    if-eq v5, v12, :cond_f

    if-eq v5, v1, :cond_f

    const/16 v13, 0x40

    if-eq v5, v13, :cond_e

    if-eq v5, v9, :cond_e

    const/16 v14, 0x75

    if-eq v5, v14, :cond_d

    const/16 v7, 0x78

    if-eq v5, v7, :cond_c

    const/16 v7, 0x2a

    if-eq v5, v7, :cond_10

    const/16 v7, 0x2b

    if-eq v5, v7, :cond_10

    packed-switch v5, :pswitch_data_6

    packed-switch v5, :pswitch_data_7

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v5

    goto :goto_c

    :cond_c
    aget-byte v5, v4, v8

    add-int/lit8 v7, v8, 0x1

    aget-byte v7, v4, v7

    invoke-static {v5, v7}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v5

    add-int/lit8 v8, v8, 0x2

    goto :goto_c

    :cond_d
    aget-byte v5, v4, v8

    add-int/lit8 v7, v8, 0x1

    aget-byte v7, v4, v7

    add-int/lit8 v18, v8, 0x2

    aget-byte v9, v4, v18

    add-int/lit8 v18, v8, 0x3

    aget-byte v12, v4, v18

    invoke-static {v5, v7, v9, v12}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v5

    add-int/lit8 v8, v8, 0x4

    goto :goto_c

    :cond_e
    :goto_b
    const/16 v14, 0x75

    goto :goto_c

    :cond_f
    const/16 v13, 0x40

    goto :goto_b

    :cond_10
    :goto_c
    :pswitch_a
    int-to-long v13, v5

    xor-long v9, v10, v13

    const-wide v11, 0x100000001b3L

    mul-long/2addr v9, v11

    if-ne v8, v3, :cond_11

    move v7, v6

    goto :goto_d

    :cond_11
    add-int/lit8 v5, v8, 0x1

    aget-byte v7, v4, v8

    const/16 v8, 0xff

    and-int/2addr v7, v8

    move v8, v5

    :goto_d
    move v5, v8

    move-wide v10, v9

    const/16 v9, 0x5b

    const/16 v12, 0x5d

    const/16 v13, 0x7b

    const/16 v14, 0x7d

    move v8, v7

    goto :goto_f

    :cond_12
    if-eq v8, v15, :cond_14

    const/16 v7, 0xd

    if-eq v8, v7, :cond_14

    if-eq v8, v6, :cond_14

    if-eq v8, v1, :cond_14

    const/16 v9, 0x5b

    if-eq v8, v9, :cond_14

    const/16 v12, 0x5d

    if-eq v8, v12, :cond_14

    const/16 v13, 0x7b

    if-eq v8, v13, :cond_14

    const/16 v14, 0x7d

    if-eq v8, v14, :cond_14

    const/16 v7, 0x20

    if-eq v8, v7, :cond_14

    const/16 v7, 0x21

    if-eq v8, v7, :cond_14

    packed-switch v8, :pswitch_data_8

    packed-switch v8, :pswitch_data_9

    packed-switch v8, :pswitch_data_a

    int-to-long v7, v8

    xor-long/2addr v7, v10

    const-wide v10, 0x100000001b3L

    mul-long/2addr v7, v10

    if-ne v5, v3, :cond_13

    move v10, v5

    move v5, v6

    goto :goto_e

    :cond_13
    add-int/lit8 v10, v5, 0x1

    aget-byte v5, v4, v5

    const/16 v11, 0xff

    and-int/2addr v5, v11

    :goto_e
    move-wide/from16 v24, v7

    move v8, v5

    move v5, v10

    move-wide/from16 v10, v24

    :goto_f
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    const/16 v9, 0x5c

    goto/16 :goto_a

    :cond_14
    :pswitch_b
    iput v2, v0, Lcom/alibaba/fastjson2/i;->O:I

    if-ne v8, v6, :cond_15

    move v2, v5

    goto :goto_10

    :cond_15
    add-int/lit8 v2, v5, -0x1

    :goto_10
    iput v2, v0, Lcom/alibaba/fastjson2/i;->J:I

    move v2, v5

    move v5, v8

    :goto_11
    const/16 v7, 0x20

    if-gt v5, v7, :cond_17

    shl-long v7, v21, v5

    and-long v7, v7, v19

    const-wide/16 v12, 0x0

    cmp-long v7, v7, v12

    if-eqz v7, :cond_17

    if-ne v2, v3, :cond_16

    move v5, v6

    goto :goto_11

    :cond_16
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v4, v2

    const/16 v7, 0xff

    and-int/2addr v2, v7

    move/from16 v24, v5

    move v5, v2

    move/from16 v2, v24

    goto :goto_11

    :cond_17
    :goto_12
    if-ne v5, v1, :cond_1a

    if-ne v2, v3, :cond_18

    move v1, v2

    move v2, v6

    goto :goto_13

    :cond_18
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v4, v2

    const/16 v5, 0xff

    and-int/2addr v2, v5

    :goto_13
    move v5, v2

    move v2, v1

    const/16 v1, 0x20

    :goto_14
    if-gt v5, v1, :cond_1a

    shl-long v7, v21, v5

    and-long v7, v7, v19

    const-wide/16 v12, 0x0

    cmp-long v7, v7, v12

    if-eqz v7, :cond_1a

    if-ne v2, v3, :cond_19

    move v5, v6

    const/16 v7, 0xff

    goto :goto_14

    :cond_19
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v4, v2

    const/16 v7, 0xff

    and-int/2addr v2, v7

    move/from16 v24, v5

    move v5, v2

    move/from16 v2, v24

    goto :goto_14

    :cond_1a
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-char v1, v5

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-wide v10

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2d
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x8
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x28
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    const/16 v3, 0x27

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readStringNotMatch()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/i;->v:[B

    int-to-byte v1, v1

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v5, v0, Lcom/alibaba/fastjson2/i;->y:I

    sub-int v6, v5, v4

    and-int/lit8 v6, v6, -0x4

    add-int/2addr v6, v4

    const/4 v7, 0x0

    move v8, v4

    move v9, v7

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    const/16 v13, 0x5c

    if-ge v8, v6, :cond_5

    aget-byte v10, v3, v8

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, v3, v11

    add-int/lit8 v12, v8, 0x2

    aget-byte v12, v3, v12

    add-int/lit8 v15, v8, 0x3

    aget-byte v15, v3, v15

    if-eq v10, v13, :cond_5

    if-eq v11, v13, :cond_5

    if-eq v12, v13, :cond_5

    if-ne v15, v13, :cond_2

    goto :goto_3

    :cond_2
    if-eq v10, v1, :cond_4

    if-eq v11, v1, :cond_4

    if-eq v12, v1, :cond_4

    if-ne v15, v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v9, 0x4

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v7

    :goto_4
    const/16 v15, 0x78

    const/16 v14, 0x75

    if-eqz v6, :cond_9

    if-ne v10, v1, :cond_6

    goto :goto_5

    :cond_6
    if-ne v11, v1, :cond_7

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    if-ne v12, v1, :cond_8

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v9, v9, 0x3

    :goto_5
    move v6, v7

    goto :goto_8

    :cond_9
    move v6, v7

    :goto_6
    if-ge v8, v5, :cond_2b

    aget-byte v10, v3, v8

    if-ne v10, v13, :cond_c

    add-int/lit8 v6, v8, 0x1

    aget-byte v6, v3, v6

    if-ne v6, v14, :cond_a

    const/4 v6, 0x6

    goto :goto_7

    :cond_a
    if-ne v6, v15, :cond_b

    const/4 v6, 0x4

    goto :goto_7

    :cond_b
    const/4 v6, 0x2

    :goto_7
    add-int/2addr v8, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto/16 :goto_15

    :cond_c
    if-ne v10, v1, :cond_2a

    :goto_8
    const/4 v10, 0x0

    if-eqz v6, :cond_19

    iget-object v6, v0, Lcom/alibaba/fastjson2/i;->t0:[C

    if-nez v6, :cond_d

    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v8, v0, Lcom/alibaba/fastjson2/i;->u0:Lcom/alibaba/fastjson2/JSONFactory$b;

    invoke-virtual {v6, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, v0, Lcom/alibaba/fastjson2/i;->t0:[C

    :cond_d
    if-eqz v6, :cond_e

    array-length v8, v6

    if-ge v8, v9, :cond_f

    :cond_e
    new-array v6, v9, [C

    iput-object v6, v0, Lcom/alibaba/fastjson2/i;->t0:[C

    :cond_f
    move v8, v7

    :goto_9
    aget-byte v11, v3, v4

    and-int/lit16 v11, v11, 0xff

    int-to-char v11, v11

    if-ne v11, v13, :cond_17

    add-int/lit8 v4, v4, 0x1

    aget-byte v11, v3, v4

    int-to-char v11, v11

    if-eq v11, v2, :cond_18

    if-eq v11, v13, :cond_18

    const/16 v12, 0x62

    if-eq v11, v12, :cond_16

    const/16 v12, 0x66

    if-eq v11, v12, :cond_15

    const/16 v12, 0x6e

    if-eq v11, v12, :cond_14

    const/16 v12, 0x72

    if-eq v11, v12, :cond_13

    if-eq v11, v15, :cond_12

    const/16 v12, 0x74

    if-eq v11, v12, :cond_11

    if-eq v11, v14, :cond_10

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v11

    goto :goto_a

    :cond_10
    add-int/lit8 v11, v4, 0x1

    aget-byte v11, v3, v11

    add-int/lit8 v12, v4, 0x2

    aget-byte v12, v3, v12

    add-int/lit8 v17, v4, 0x3

    aget-byte v13, v3, v17

    add-int/lit8 v4, v4, 0x4

    aget-byte v14, v3, v4

    invoke-static {v11, v12, v13, v14}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v11

    goto :goto_a

    :cond_11
    const/16 v11, 0x9

    goto :goto_a

    :cond_12
    add-int/lit8 v11, v4, 0x1

    aget-byte v11, v3, v11

    add-int/lit8 v4, v4, 0x2

    aget-byte v12, v3, v4

    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v11

    goto :goto_a

    :cond_13
    const/16 v11, 0xd

    goto :goto_a

    :cond_14
    const/16 v11, 0xa

    goto :goto_a

    :cond_15
    const/16 v11, 0xc

    goto :goto_a

    :cond_16
    const/16 v11, 0x8

    goto :goto_a

    :cond_17
    if-ne v11, v1, :cond_18

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6, v7, v9}, Ljava/lang/String;-><init>([CII)V

    move v8, v4

    goto :goto_c

    :cond_18
    :goto_a
    aput-char v11, v6, v8

    const/4 v11, 0x1

    add-int/2addr v4, v11

    add-int/2addr v8, v11

    const/16 v13, 0x5c

    const/16 v14, 0x75

    goto :goto_9

    :cond_19
    iget-object v1, v0, Lcom/alibaba/fastjson2/f;->v0:Ljava/lang/String;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_1a
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sub-int v4, v8, v1

    sget v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    if-ge v6, v2, :cond_1f

    iget-object v2, v0, Lcom/alibaba/fastjson2/i;->t0:[C

    if-nez v2, :cond_1b

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v6, v0, Lcom/alibaba/fastjson2/i;->u0:Lcom/alibaba/fastjson2/JSONFactory$b;

    invoke-virtual {v2, v6, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, v0, Lcom/alibaba/fastjson2/i;->t0:[C

    :cond_1b
    if-eqz v2, :cond_1c

    array-length v6, v2

    if-ge v6, v4, :cond_1d

    :cond_1c
    new-array v2, v4, [C

    iput-object v2, v0, Lcom/alibaba/fastjson2/i;->t0:[C

    :cond_1d
    move v6, v7

    :goto_b
    if-ge v6, v4, :cond_1e

    add-int v9, v1, v6

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    aput-char v9, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v7, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_c

    :cond_1f
    new-instance v2, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v2

    :goto_c
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v11, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v13, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v2, v11, v13

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_20
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v11, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    move v4, v8

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long v6, v11, v7

    cmp-long v2, v6, v13

    if-eqz v2, :cond_22

    goto :goto_d

    :cond_21
    move v4, v8

    :cond_22
    move-object v10, v1

    :goto_d
    const/4 v7, 0x1

    add-int/lit8 v8, v4, 0x1

    const/16 v1, 0x1a

    if-ne v8, v5, :cond_23

    :goto_e
    move v4, v1

    goto :goto_10

    :cond_23
    add-int/lit8 v2, v8, 0x1

    aget-byte v4, v3, v8

    :goto_f
    move v8, v2

    :goto_10
    const-wide v11, 0x100003700L

    const-wide/16 v15, 0x1

    const/16 v2, 0x20

    if-gt v4, v2, :cond_25

    shl-long v17, v15, v4

    and-long v17, v17, v11

    cmp-long v6, v17, v13

    if-eqz v6, :cond_25

    if-ne v8, v5, :cond_24

    goto :goto_e

    :cond_24
    add-int/lit8 v2, v8, 0x1

    aget-byte v4, v3, v8

    goto :goto_f

    :cond_25
    const/16 v6, 0x2c

    if-ne v4, v6, :cond_26

    goto :goto_11

    :cond_26
    const/4 v7, 0x0

    :goto_11
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v7, :cond_29

    if-ne v8, v5, :cond_27

    move v6, v1

    goto :goto_12

    :cond_27
    add-int/lit8 v4, v8, 0x1

    aget-byte v6, v3, v8

    goto :goto_14

    :goto_12
    move v4, v6

    :goto_13
    if-gt v4, v2, :cond_29

    shl-long v6, v15, v4

    and-long/2addr v6, v11

    cmp-long v6, v6, v13

    if-eqz v6, :cond_29

    if-ne v8, v5, :cond_28

    move v4, v1

    goto :goto_13

    :cond_28
    add-int/lit8 v4, v8, 0x1

    aget-byte v6, v3, v8

    :goto_14
    move v8, v4

    goto :goto_12

    :cond_29
    and-int/lit16 v1, v4, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v10

    :cond_2a
    const/4 v7, 0x1

    add-int/lit8 v8, v8, 0x1

    :goto_15
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    const/16 v13, 0x5c

    const/16 v14, 0x75

    goto/16 :goto_6

    :cond_2b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "invalid escape character EOI"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readValueHashCode()J
    .locals 22

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    const/16 v3, 0x27

    if-eq v1, v3, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/i;->v:[B

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/alibaba/fastjson2/i;->Q:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v6, v0, Lcom/alibaba/fastjson2/i;->z:I

    const-wide/16 v7, 0x0

    move v9, v5

    move-wide v10, v7

    :goto_0
    iget v12, v0, Lcom/alibaba/fastjson2/i;->y:I

    const/16 v13, 0xff

    const/16 v14, 0x78

    const/16 v15, 0x75

    const/16 v5, 0x5c

    const/16 v2, 0x20

    if-ge v6, v12, :cond_a

    aget-byte v12, v3, v6

    if-ne v12, v1, :cond_2

    if-nez v9, :cond_1

    iget v6, v0, Lcom/alibaba/fastjson2/i;->z:I

    :goto_1
    move-wide v10, v7

    goto/16 :goto_6

    :cond_1
    iput v9, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v6, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_2
    if-ne v12, v5, :cond_5

    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v6, v6, 0x1

    aget-byte v12, v3, v6

    if-eq v12, v15, :cond_4

    if-eq v12, v14, :cond_3

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v12

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v6, 0x1

    aget-byte v12, v3, v12

    add-int/lit8 v6, v6, 0x2

    aget-byte v14, v3, v6

    invoke-static {v12, v14}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v12

    goto :goto_2

    :cond_4
    add-int/lit8 v12, v6, 0x1

    aget-byte v12, v3, v12

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, v3, v14

    add-int/lit8 v19, v6, 0x3

    aget-byte v15, v3, v19

    add-int/lit8 v6, v6, 0x4

    aget-byte v5, v3, v6

    invoke-static {v12, v14, v15, v5}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v12

    goto :goto_2

    :cond_5
    const/16 v5, -0x3d

    if-eq v12, v5, :cond_6

    const/16 v5, -0x3e

    if-ne v12, v5, :cond_7

    :cond_6
    and-int/lit8 v5, v12, 0x1f

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v6, 0x1

    aget-byte v12, v3, v6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v5, v12

    int-to-char v12, v5

    :cond_7
    :goto_2
    if-gt v12, v13, :cond_9

    if-ltz v12, :cond_9

    const/16 v5, 0x8

    if-ge v9, v5, :cond_9

    if-nez v9, :cond_8

    if-nez v12, :cond_8

    goto :goto_5

    :cond_8
    packed-switch v9, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    int-to-byte v2, v12

    int-to-long v12, v2

    const/16 v2, 0x38

    shl-long/2addr v12, v2

    const-wide v14, 0xffffffffffffffL

    goto :goto_3

    :pswitch_1
    int-to-byte v2, v12

    int-to-long v12, v2

    const/16 v2, 0x30

    shl-long/2addr v12, v2

    const-wide v14, 0xffffffffffffL

    goto :goto_3

    :pswitch_2
    int-to-byte v2, v12

    int-to-long v12, v2

    const/16 v2, 0x28

    shl-long/2addr v12, v2

    const-wide v14, 0xffffffffffL

    goto :goto_3

    :pswitch_3
    int-to-byte v5, v12

    int-to-long v12, v5

    shl-long/2addr v12, v2

    const-wide v14, 0xffffffffL

    goto :goto_3

    :pswitch_4
    int-to-byte v2, v12

    shl-int/lit8 v2, v2, 0x18

    int-to-long v12, v2

    const-wide/32 v14, 0xffffff

    goto :goto_3

    :pswitch_5
    int-to-byte v2, v12

    shl-int/lit8 v2, v2, 0x10

    int-to-long v12, v2

    const-wide/32 v14, 0xffff

    goto :goto_3

    :pswitch_6
    int-to-byte v2, v12

    shl-int/2addr v2, v5

    int-to-long v12, v2

    const-wide/16 v14, 0xff

    :goto_3
    and-long/2addr v10, v14

    add-long/2addr v10, v12

    goto :goto_4

    :pswitch_7
    int-to-byte v2, v12

    int-to-long v10, v2

    :goto_4
    add-int/2addr v6, v4

    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0x22

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson2/i;->z:I

    goto/16 :goto_1

    :cond_a
    :goto_6
    cmp-long v1, v10, v7

    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    const-wide v9, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v10, v9

    const/4 v1, 0x0

    :goto_7
    aget-byte v5, v3, v6

    const-wide v14, 0x100000001b3L

    const/16 v9, 0x5c

    if-ne v5, v9, :cond_e

    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v3, v6

    const/16 v12, 0x75

    if-eq v5, v12, :cond_d

    const/16 v9, 0x78

    if-eq v5, v9, :cond_c

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v5

    goto :goto_8

    :cond_c
    add-int/lit8 v5, v6, 0x1

    aget-byte v5, v3, v5

    add-int/lit8 v6, v6, 0x2

    aget-byte v9, v3, v6

    invoke-static {v5, v9}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v5

    goto :goto_8

    :cond_d
    add-int/lit8 v5, v6, 0x1

    aget-byte v5, v3, v5

    add-int/lit8 v9, v6, 0x2

    aget-byte v9, v3, v9

    add-int/lit8 v20, v6, 0x3

    aget-byte v12, v3, v20

    add-int/lit8 v6, v6, 0x4

    aget-byte v13, v3, v6

    invoke-static {v5, v9, v12, v13}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v5

    :goto_8
    add-int/2addr v6, v4

    int-to-long v12, v5

    xor-long v9, v10, v12

    mul-long/2addr v9, v14

    move-object v13, v3

    move-wide v10, v9

    const/16 v9, 0x22

    const/16 v12, 0xff

    goto/16 :goto_f

    :cond_e
    const/16 v9, 0x22

    if-ne v5, v9, :cond_16

    iput v1, v0, Lcom/alibaba/fastjson2/i;->O:I

    iput v6, v0, Lcom/alibaba/fastjson2/i;->J:I

    add-int/2addr v6, v4

    :goto_9
    iget v1, v0, Lcom/alibaba/fastjson2/i;->y:I

    const/16 v5, 0x1a

    if-ne v6, v1, :cond_f

    move v1, v6

    :goto_a
    move v6, v5

    goto :goto_b

    :cond_f
    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v3, v6

    :goto_b
    const-wide v12, 0x100003700L

    const-wide/16 v14, 0x1

    if-gt v6, v2, :cond_11

    shl-long v17, v14, v6

    and-long v17, v17, v12

    cmp-long v9, v17, v7

    if-eqz v9, :cond_11

    iget v6, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ne v1, v6, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v3, v1

    move/from16 v21, v6

    move v6, v1

    move/from16 v1, v21

    goto :goto_b

    :cond_11
    const/16 v9, 0x2c

    if-ne v6, v9, :cond_12

    goto :goto_c

    :cond_12
    const/4 v4, 0x0

    :goto_c
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v4, :cond_15

    iget v4, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ne v1, v4, :cond_13

    move v4, v1

    move v1, v5

    goto :goto_d

    :cond_13
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    :goto_d
    move v6, v1

    move v1, v4

    :goto_e
    if-gt v6, v2, :cond_15

    shl-long v16, v14, v6

    and-long v16, v16, v12

    cmp-long v4, v16, v7

    if-eqz v4, :cond_15

    iget v4, v0, Lcom/alibaba/fastjson2/i;->y:I

    if-ne v1, v4, :cond_14

    move v6, v5

    goto :goto_e

    :cond_14
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    goto :goto_d

    :cond_15
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v12, 0xff

    and-int/lit16 v1, v6, 0xff

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-wide v10

    :cond_16
    const/16 v12, 0xff

    add-int/lit8 v6, v6, 0x1

    move-object v13, v3

    int-to-long v2, v5

    xor-long/2addr v2, v10

    mul-long/2addr v2, v14

    move-wide v10, v2

    :goto_f
    add-int/lit8 v1, v1, 0x1

    move-object v3, v13

    const/16 v2, 0x20

    move v13, v12

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
