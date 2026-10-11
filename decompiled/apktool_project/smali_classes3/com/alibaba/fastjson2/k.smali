.class public final Lcom/alibaba/fastjson2/k;
.super Lcom/alibaba/fastjson2/JSONWriter;
.source "SourceFile"


# static fields
.field public static final h:[C


# instance fields
.field public f:[C

.field public final g:Lcom/alibaba/fastjson2/JSONFactory$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "{\"$ref\":"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/k;->h:[C

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;ZLjava/nio/charset/Charset;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->A:[Lcom/alibaba/fastjson2/JSONFactory$b;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/k;->g:Lcom/alibaba/fastjson2/JSONFactory$b;

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    new-array p1, p1, [C

    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    return-void
.end method


# virtual methods
.method public final H([B)V
    .locals 13

    array-length v0, p1

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v9

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 v6, v0, 0x6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object v6, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v7, v3, 0x1

    aput-char v1, v6, v3

    :goto_2
    if-ge v5, v0, :cond_8

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v3, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v3, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    if-eqz v4, :cond_2

    const/16 v9, 0x7f

    if-le v3, v9, :cond_2

    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    :goto_3
    move v7, v9

    goto/16 :goto_6

    :pswitch_0
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0x1a

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto/16 :goto_5

    :pswitch_1
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v12

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto :goto_5

    :pswitch_2
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x72

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_3
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x66

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_4
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto :goto_5

    :pswitch_5
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x6e

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_6
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x74

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_7
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x62

    aput-char v9, v6, v3

    :goto_4
    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    :pswitch_8
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v6, v9

    :goto_5
    add-int/lit8 v7, v7, 0x6

    goto :goto_6

    :cond_3
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v9

    goto :goto_4

    :cond_4
    :pswitch_9
    if-eqz v2, :cond_5

    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    goto/16 :goto_3

    :cond_6
    :pswitch_a
    if-ne v3, v1, :cond_7

    add-int/lit8 v9, v7, 0x1

    aput-char v10, v6, v7

    move v7, v9

    :cond_7
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_8
    aput-char v1, v6, v7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final I([C)V
    .locals 13

    array-length v0, p1

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v9

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 v6, v0, 0x6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object v6, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v7, v3, 0x1

    aput-char v1, v6, v3

    :goto_2
    if-ge v5, v0, :cond_8

    aget-char v3, p1, v5

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v3, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v3, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    if-eqz v4, :cond_2

    const/16 v9, 0x7f

    if-le v3, v9, :cond_2

    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v11, v3, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x3

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x4

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    :goto_3
    move v7, v9

    goto/16 :goto_6

    :pswitch_0
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0x1a

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto/16 :goto_5

    :pswitch_1
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v12

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto :goto_5

    :pswitch_2
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x72

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_3
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x66

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_4
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto :goto_5

    :pswitch_5
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x6e

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_6
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x74

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_7
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x62

    aput-char v9, v6, v3

    :goto_4
    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    :pswitch_8
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v6, v9

    :goto_5
    add-int/lit8 v7, v7, 0x6

    goto :goto_6

    :cond_3
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v9

    goto :goto_4

    :cond_4
    :pswitch_9
    if-eqz v2, :cond_5

    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    goto/16 :goto_3

    :cond_6
    :pswitch_a
    if-ne v3, v1, :cond_7

    add-int/lit8 v9, v7, 0x1

    aput-char v10, v6, v7

    move v7, v9

    :cond_7
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_8
    aput-char v1, v6, v7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final M([B)V
    .locals 13

    array-length v0, p1

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v9

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 v6, v0, 0x6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object v6, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v7, v3, 0x1

    aput-char v1, v6, v3

    :goto_2
    if-ge v5, v0, :cond_8

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget v9, Lsun/misc/Unsafe;->ARRAY_CHAR_BASE_OFFSET:I

    int-to-long v9, v9

    int-to-long v11, v5

    add-long/2addr v9, v11

    invoke-virtual {v3, p1, v9, v10}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v3

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v3, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v3, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    if-eqz v4, :cond_2

    const/16 v9, 0x7f

    if-le v3, v9, :cond_2

    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v11, v3, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x3

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x4

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    :goto_3
    move v7, v9

    goto/16 :goto_6

    :pswitch_0
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0x1a

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto/16 :goto_5

    :pswitch_1
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v12

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto :goto_5

    :pswitch_2
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x72

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_3
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x66

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_4
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto :goto_5

    :pswitch_5
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x6e

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_6
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x74

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_7
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x62

    aput-char v9, v6, v3

    :goto_4
    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    :pswitch_8
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v6, v9

    :goto_5
    add-int/lit8 v7, v7, 0x6

    goto :goto_6

    :cond_3
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v9

    goto :goto_4

    :cond_4
    :pswitch_9
    if-eqz v2, :cond_5

    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    goto/16 :goto_3

    :cond_6
    :pswitch_a
    if-ne v3, v1, :cond_7

    add-int/lit8 v9, v7, 0x1

    aput-char v10, v6, v7

    move v7, v9

    :cond_7
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_2

    :cond_8
    aput-char v1, v6, v7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v0

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p0, p0, Lcom/alibaba/fastjson2/k;->g:Lcom/alibaba/fastjson2/JSONFactory$b;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public endArray()V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    aput-char v5, v2, v0

    move v0, v3

    move v3, v4

    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x9

    aput-char v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x5d

    aput-char v3, v2, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    return-void
.end method

.method public endObject()V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    aput-char v5, v2, v0

    move v0, v3

    move v3, v4

    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x9

    aput-char v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x7d

    aput-char v3, v2, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    return-void
.end method

.method public flushTo(Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    aget-char v3, v3, v1

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 7
    new-array v1, v2, [B

    move v3, v0

    .line 8
    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v3, v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    aget-char v4, v4, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return v2

    :cond_3
    mul-int/lit8 v1, v2, 0x3

    .line 12
    new-array v1, v1, [B

    .line 13
    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    invoke-static {v3, v0, v2, v1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result v2

    .line 14
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return v2

    .line 16
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "out is nulll"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/k;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 20
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 21
    array-length p0, p2

    return p0

    .line 22
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "out is null"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flushTo(Ljava/io/Writer;)V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "flushTo error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getBytes()[B
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    aget-char v3, v3, v1

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    new-array v1, v2, [B

    .line 4
    :goto_2
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    mul-int/lit8 v1, v2, 0x3

    .line 6
    new-array v1, v1, [B

    .line 7
    iget-object p0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    invoke-static {p0, v0, v2, v1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->encodeUTF8([CII[BI)I

    move-result p0

    .line 8
    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 9
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v1, v2, :cond_1

    .line 10
    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    aget-char v3, v3, v1

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 11
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p1, v1, :cond_2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-eq p1, v1, :cond_2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-ne p1, v1, :cond_4

    .line 12
    :cond_2
    new-array p1, v2, [B

    .line 13
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-ge v0, v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    aget-char v1, v1, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object p1

    .line 15
    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    invoke-direct {v1, p0, v0, v2}, Ljava/lang/String;-><init>([CII)V

    if-nez p1, :cond_5

    .line 16
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public final j(I)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v0

    sub-int v1, p1, v1

    if-lez v1, :cond_2

    array-length v1, v0

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    sub-int v2, v1, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->maxArraySize:I

    sub-int v1, p1, v1

    if-gtz v1, :cond_1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string p1, "try enabling LargeObject feature instead"

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return p0
.end method

.method public startArray()V
    .locals 5

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x5b

    aput-char v4, v2, v0

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    aput-char v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public startObject()V
    .locals 5

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x7b

    aput-char v4, v2, v0

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    aput-char v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v9

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 v6, v0, 0x6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object v6, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v7, v3, 0x1

    aput-char v1, v6, v3

    :goto_2
    if-ge v5, v0, :cond_8

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x22

    const/16 v10, 0x5c

    if-eq v3, v9, :cond_6

    const/16 v9, 0x3c

    const/16 v11, 0x75

    const/16 v12, 0x30

    if-eq v3, v9, :cond_4

    const/16 v9, 0x3e

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_3

    const/16 v9, 0x31

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    if-eqz v4, :cond_2

    const/16 v9, 0x7f

    if-le v3, v9, :cond_2

    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v11, v3, 0xc

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x3

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x4

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    :goto_3
    move v7, v9

    goto/16 :goto_6

    :pswitch_0
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0x1a

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto/16 :goto_5

    :pswitch_1
    aput-char v10, v6, v7

    add-int/lit8 v10, v7, 0x1

    aput-char v11, v6, v10

    add-int/lit8 v10, v7, 0x2

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x3

    aput-char v12, v6, v10

    add-int/lit8 v10, v7, 0x4

    aput-char v9, v6, v10

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v12

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto :goto_5

    :pswitch_2
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x72

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_3
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x66

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_4
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v6, v9

    goto :goto_5

    :pswitch_5
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x6e

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_6
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x74

    aput-char v9, v6, v3

    goto :goto_4

    :pswitch_7
    aput-char v10, v6, v7

    add-int/lit8 v3, v7, 0x1

    const/16 v9, 0x62

    aput-char v9, v6, v3

    :goto_4
    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    :pswitch_8
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v6, v9

    :goto_5
    add-int/lit8 v7, v7, 0x6

    goto :goto_6

    :cond_3
    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v9

    goto :goto_4

    :cond_4
    :pswitch_9
    if-eqz v2, :cond_5

    aput-char v10, v6, v7

    add-int/lit8 v9, v7, 0x1

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x2

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x3

    aput-char v12, v6, v9

    add-int/lit8 v9, v7, 0x4

    sget-object v10, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    aput-char v11, v6, v9

    add-int/lit8 v9, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v10, v3

    aput-char v3, v6, v9

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    goto/16 :goto_3

    :cond_6
    :pswitch_a
    if-ne v3, v1, :cond_7

    add-int/lit8 v9, v7, 0x1

    aput-char v10, v6, v7

    move v7, v9

    :cond_7
    add-int/lit8 v9, v7, 0x1

    aput-char v3, v6, v7

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_8
    aput-char v1, v6, v7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public write(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 12

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 5
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    add-int/2addr v0, v2

    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v5, 0x7b

    aput-char v5, v0, v1

    .line 9
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 12
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v5, v5, v3

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_5

    .line 13
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v5, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v5, v5

    if-ne v0, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v6, 0x2c

    aput-char v6, v0, v5

    .line 16
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 17
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 18
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 20
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-ne v0, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v5, 0x3a

    aput-char v5, v0, v1

    if-nez v7, :cond_8

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    .line 24
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 25
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 26
    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/k;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_9
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_a

    .line 28
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_2

    .line 29
    :cond_a
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_b

    .line 30
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_2

    .line 31
    :cond_b
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_c

    .line 32
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_2

    .line 33
    :cond_c
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_d

    .line 34
    check-cast v7, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-virtual {p0, v7, v3, v4, v0}, Lcom/alibaba/fastjson2/k;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_2

    .line 35
    :cond_d
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v1, :cond_e

    .line 36
    check-cast v7, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/k;->write(Ljava/util/List;)V

    goto :goto_2

    .line 37
    :cond_e
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v1, :cond_f

    .line 38
    check-cast v7, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/k;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    .line 39
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v6, p0

    .line 40
    invoke-interface/range {v5 .. v11}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 41
    :cond_10
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v0, v0

    if-ne p1, v0, :cond_11

    add-int/2addr p1, v2

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 43
    :cond_11
    iget-object p1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 p0, 0x7d

    aput-char p0, p1, v0

    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    .line 46
    iget-object v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    and-long/2addr v0, v3

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    .line 48
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 49
    :cond_1
    iget v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, v7, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    const/4 v11, 0x1

    if-ne v0, v1, :cond_2

    add-int/2addr v0, v11

    .line 50
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 51
    :cond_2
    iget-object v0, v7, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    move v0, v11

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_d

    if-nez v0, :cond_4

    .line 53
    iget v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, v7, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 55
    :cond_3
    iget-object v0, v7, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 56
    :cond_4
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 59
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_6

    .line 60
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_6
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_7

    .line 62
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_1

    .line 63
    :cond_7
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_8

    .line 64
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_1

    .line 65
    :cond_8
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_9

    .line 66
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_1

    .line 67
    :cond_9
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_a

    .line 68
    check-cast v2, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v9, v10, v0}, Lcom/alibaba/fastjson2/k;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_1

    .line 69
    :cond_a
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v1, :cond_b

    .line 70
    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->write(Ljava/util/List;)V

    goto :goto_1

    .line 71
    :cond_b
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v1, :cond_c

    .line 72
    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_1

    .line 73
    :cond_c
    iget-object v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    .line 74
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v0, v13

    goto/16 :goto_0

    .line 75
    :cond_d
    iget v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, v7, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-ne v0, v1, :cond_e

    add-int/2addr v0, v11

    .line 76
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 77
    :cond_e
    iget-object v0, v7, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    return-void
.end method

.method public final write0(C)V
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeBase64([B)V
    .locals 10

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    shl-int/2addr v0, v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v3, v2, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v0, v2

    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/JSONFactory;->v:[C

    ushr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    aput-char v8, v0, v3

    add-int/lit8 v8, v3, 0x1

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v7, v9

    aput-char v9, v0, v8

    add-int/lit8 v8, v3, 0x2

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v7, v9

    aput-char v9, v0, v8

    add-int/lit8 v8, v3, 0x3

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v7, v5

    aput-char v5, v0, v8

    add-int/lit8 v3, v3, 0x4

    move v5, v6

    goto :goto_0

    :cond_1
    array-length v5, p1

    sub-int/2addr v5, v2

    if-lez v5, :cond_4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v5, v1, :cond_2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v4, p1, 0x2

    :cond_2
    or-int p1, v2, v4

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->v:[C

    shr-int/lit8 v4, p1, 0xc

    aget-char v4, v2, v4

    aput-char v4, v0, v3

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v2, v6

    aput-char v6, v0, v4

    add-int/lit8 v4, v3, 0x2

    const/16 v6, 0x3d

    if-ne v5, v1, :cond_3

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v2, p1

    goto :goto_1

    :cond_3
    move p1, v6

    :goto_1
    aput-char p1, v0, v4

    add-int/lit8 p1, v3, 0x3

    aput-char v6, v0, p1

    add-int/lit8 v3, v3, 0x4

    :cond_4
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeBigInt(Ljava/math/BigInteger;J)V
    .locals 10

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return-void

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    or-long/2addr p2, v1

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->t:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_1

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->u:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v5

    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v6, v8

    and-long/2addr p2, v6

    cmp-long p2, p2, v3

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    move p2, v5

    :goto_1
    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v5

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object p2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-eqz v2, :cond_6

    add-int/lit8 v1, p3, 0x1

    const/16 v2, 0x22

    aput-char v2, p2, p3

    invoke-virtual {v0, v5, p1, p2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    aput-char v2, p2, v1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v5, p1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr p1, p3

    :goto_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeChar(C)V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v1, v0

    const/16 v0, 0x22

    const/16 v4, 0x5c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x27

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    const/16 v0, 0x31

    const/16 v5, 0x75

    const/16 v6, 0x30

    packed-switch p1, :pswitch_data_0

    add-int/lit8 v0, v2, 0x1

    aput-char p1, v1, v2

    goto/16 :goto_2

    :pswitch_0
    aput-char v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    aput-char v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    aput-char v6, v1, v4

    add-int/lit8 v4, v2, 0x3

    aput-char v6, v1, v4

    add-int/lit8 v4, v2, 0x4

    aput-char v0, v1, v4

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0x1a

    add-int/lit8 p1, p1, 0x61

    int-to-char p1, p1

    aput-char p1, v1, v0

    goto/16 :goto_1

    :pswitch_1
    aput-char v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    aput-char v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    aput-char v6, v1, v4

    add-int/lit8 v4, v2, 0x3

    aput-char v6, v1, v4

    add-int/lit8 v4, v2, 0x4

    aput-char v0, v1, v4

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0x10

    add-int/2addr p1, v6

    int-to-char p1, p1

    aput-char p1, v1, v0

    goto :goto_1

    :pswitch_2
    aput-char v4, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x72

    aput-char v0, v1, p1

    goto :goto_0

    :pswitch_3
    aput-char v4, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x66

    aput-char v0, v1, p1

    goto :goto_0

    :pswitch_4
    aput-char v4, v1, v2

    add-int/lit8 v0, v2, 0x1

    aput-char v5, v1, v0

    add-int/lit8 v0, v2, 0x2

    aput-char v6, v1, v0

    add-int/lit8 v0, v2, 0x3

    aput-char v6, v1, v0

    add-int/lit8 v0, v2, 0x4

    aput-char v6, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0xa

    add-int/lit8 p1, p1, 0x61

    int-to-char p1, p1

    aput-char p1, v1, v0

    goto :goto_1

    :pswitch_5
    aput-char v4, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x6e

    aput-char v0, v1, p1

    goto :goto_0

    :pswitch_6
    aput-char v4, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x74

    aput-char v0, v1, p1

    goto :goto_0

    :pswitch_7
    aput-char v4, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x62

    aput-char v0, v1, p1

    :goto_0
    add-int/lit8 v0, v2, 0x2

    goto :goto_2

    :pswitch_8
    aput-char v4, v1, v2

    add-int/lit8 v0, v2, 0x1

    aput-char v5, v1, v0

    add-int/lit8 v0, v2, 0x2

    aput-char v6, v1, v0

    add-int/lit8 v0, v2, 0x3

    aput-char v6, v1, v0

    add-int/lit8 v0, v2, 0x4

    aput-char v6, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/2addr p1, v6

    int-to-char p1, p1

    aput-char p1, v1, v0

    :goto_1
    add-int/lit8 v0, v2, 0x6

    goto :goto_2

    :cond_1
    aput-char v4, v1, v2

    add-int/lit8 v0, v2, 0x1

    aput-char p1, v1, v0

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    add-int/lit8 v0, v2, 0x1

    aput-char v4, v1, v2

    move v2, v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    aput-char p1, v1, v2

    :goto_2
    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeColon()V
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeComma()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x2c

    aput-char v4, v2, v1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0xa

    aput-char v4, v2, v3

    :goto_1
    move v3, v1

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x9

    aput-char v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDateTime14(IIIIII)V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v2, v0

    if-ltz p1, :cond_1

    const/16 v4, 0x270f

    if-gt p1, v4, :cond_1

    div-int/lit16 v4, p1, 0x3e8

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    mul-int/lit16 v6, v4, 0x3e8

    sub-int/2addr p1, v6

    aget p1, v5, p1

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    int-to-char v4, v4

    aput-char v4, v2, v6

    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v6, p1, 0x10

    int-to-byte v6, v6

    int-to-char v6, v6

    aput-char v6, v2, v4

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    int-to-char v6, v6

    aput-char v6, v2, v4

    add-int/lit8 v4, v0, 0x4

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, v4

    aget p1, v5, p2

    add-int/lit8 p2, v0, 0x5

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    int-to-char v4, v4

    aput-char v4, v2, p2

    add-int/lit8 p2, v0, 0x6

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    aget p1, v5, p3

    add-int/lit8 p2, v0, 0x7

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v2, p2

    add-int/lit8 p2, v0, 0x8

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    aget p1, v5, p4

    add-int/lit8 p2, v0, 0x9

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v2, p2

    add-int/lit8 p2, v0, 0xa

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    aget p1, v5, p5

    add-int/lit8 p2, v0, 0xb

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v2, p2

    add-int/lit8 p2, v0, 0xc

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    aget p1, v5, p6

    add-int/lit8 p2, v0, 0xd

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v2, p2

    add-int/lit8 p2, v0, 0xe

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    add-int/lit8 v0, v0, 0xf

    aput-char v3, v2, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeDateTime19(IIIIII)V
    .locals 6

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v2, v0, v1

    if-ltz p1, :cond_0

    const/16 v3, 0x270f

    if-gt p1, v3, :cond_0

    div-int/lit16 v3, p1, 0x3e8

    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    mul-int/lit16 v5, v3, 0x3e8

    sub-int/2addr p1, v5

    aget p1, v4, p1

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    int-to-char v3, v3

    aput-char v3, v0, v5

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v5, p1, 0x10

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v0, v3

    add-int/lit8 p1, v1, 0x5

    const/16 v3, 0x2d

    aput-char v3, v0, p1

    aget p1, v4, p2

    add-int/lit8 p2, v1, 0x6

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v0, p2

    add-int/lit8 p2, v1, 0x7

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v0, p2

    add-int/lit8 p1, v1, 0x8

    aput-char v3, v0, p1

    aget p1, v4, p3

    add-int/lit8 p2, v1, 0x9

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v0, p2

    add-int/lit8 p2, v1, 0xa

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v0, p2

    add-int/lit8 p1, v1, 0xb

    const/16 p2, 0x20

    aput-char p2, v0, p1

    aget p1, v4, p4

    add-int/lit8 p2, v1, 0xc

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v0, p2

    add-int/lit8 p2, v1, 0xd

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v0, p2

    add-int/lit8 p1, v1, 0xe

    const/16 p2, 0x3a

    aput-char p2, v0, p1

    aget p1, v4, p5

    add-int/lit8 p3, v1, 0xf

    shr-int/lit8 p4, p1, 0x8

    int-to-byte p4, p4

    int-to-char p4, p4

    aput-char p4, v0, p3

    add-int/lit8 p3, v1, 0x10

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v0, p3

    add-int/lit8 p1, v1, 0x11

    aput-char p2, v0, p1

    aget p1, v4, p6

    add-int/lit8 p2, v1, 0x12

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v0, p2

    add-int/lit8 p2, v1, 0x13

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v0, p2

    add-int/lit8 p1, v1, 0x14

    int-to-byte p2, v2

    int-to-char p2, p2

    aput-char p2, v0, p1

    add-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeDateTimeISO8601(IIIIIIIIZ)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p9, :cond_1

    if-nez p8, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x19

    add-int/2addr v3, v1

    add-int v1, v2, v3

    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v4, v4

    if-lt v1, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v1, v2

    add-int/2addr v2, v0

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    const/16 v2, 0x2d

    aput-char v2, v1, p1

    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget p2, v3, p2

    add-int/lit8 v4, p1, 0x1

    shr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, p1, 0x2

    int-to-byte p2, p2

    int-to-char p2, p2

    aput-char p2, v1, v4

    add-int/lit8 p2, p1, 0x3

    aput-char v2, v1, p2

    aget p2, v3, p3

    add-int/lit8 p3, p1, 0x4

    shr-int/lit8 v4, p2, 0x8

    int-to-byte v4, v4

    int-to-char v4, v4

    aput-char v4, v1, p3

    add-int/lit8 p3, p1, 0x5

    int-to-byte p2, p2

    int-to-char p2, p2

    aput-char p2, v1, p3

    add-int/lit8 p2, p1, 0x6

    if-eqz p9, :cond_3

    const/16 p3, 0x54

    goto :goto_1

    :cond_3
    const/16 p3, 0x20

    :goto_1
    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v1, p2

    aget p2, v3, p4

    add-int/lit8 p3, p1, 0x7

    shr-int/lit8 p4, p2, 0x8

    int-to-byte p4, p4

    int-to-char p4, p4

    aput-char p4, v1, p3

    add-int/lit8 p3, p1, 0x8

    int-to-byte p2, p2

    int-to-char p2, p2

    aput-char p2, v1, p3

    add-int/lit8 p2, p1, 0x9

    const/16 p3, 0x3a

    aput-char p3, v1, p2

    aget p2, v3, p5

    add-int/lit8 p4, p1, 0xa

    shr-int/lit8 p5, p2, 0x8

    int-to-byte p5, p5

    int-to-char p5, p5

    aput-char p5, v1, p4

    add-int/lit8 p4, p1, 0xb

    int-to-byte p2, p2

    int-to-char p2, p2

    aput-char p2, v1, p4

    add-int/lit8 p2, p1, 0xc

    aput-char p3, v1, p2

    aget p2, v3, p6

    add-int/lit8 p4, p1, 0xd

    shr-int/lit8 p5, p2, 0x8

    int-to-byte p5, p5

    int-to-char p5, p5

    aput-char p5, v1, p4

    add-int/lit8 p4, p1, 0xe

    int-to-byte p2, p2

    int-to-char p2, p2

    aput-char p2, v1, p4

    add-int/lit8 p1, p1, 0xf

    if-lez p7, :cond_6

    add-int/lit8 p2, p1, 0x1

    const/16 p4, 0x2e

    aput-char p4, v1, p1

    div-int/lit8 p1, p7, 0xa

    div-int/lit8 p4, p1, 0xa

    mul-int/lit8 p5, p1, 0xa

    sub-int p5, p7, p5

    if-eqz p5, :cond_4

    aget p1, v3, p7

    shr-int/lit8 p4, p1, 0x10

    int-to-byte p4, p4

    int-to-char p4, p4

    aput-char p4, v1, p2

    add-int/lit8 p4, p2, 0x1

    shr-int/lit8 p5, p1, 0x8

    int-to-byte p5, p5

    int-to-char p5, p5

    aput-char p5, v1, p4

    add-int/lit8 p4, p2, 0x2

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v1, p4

    add-int/lit8 p1, p2, 0x3

    goto :goto_2

    :cond_4
    mul-int/lit8 p5, p4, 0xa

    sub-int p5, p1, p5

    if-eqz p5, :cond_5

    aget p1, v3, p1

    shr-int/lit8 p4, p1, 0x8

    int-to-byte p4, p4

    int-to-char p4, p4

    aput-char p4, v1, p2

    add-int/lit8 p4, p2, 0x1

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v1, p4

    add-int/lit8 p1, p2, 0x2

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p2, 0x1

    add-int/lit8 p4, p4, 0x30

    int-to-byte p4, p4

    int-to-char p4, p4

    aput-char p4, v1, p2

    :cond_6
    :goto_2
    if-eqz p9, :cond_a

    div-int/lit16 p2, p8, 0xe10

    if-nez p8, :cond_7

    add-int/lit8 p2, p1, 0x1

    const/16 p3, 0x5a

    aput-char p3, v1, p1

    move p1, p2

    goto :goto_3

    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ltz p2, :cond_8

    const/16 v2, 0x2b

    :cond_8
    aput-char v2, v1, p1

    aget p4, v3, p4

    add-int/lit8 p5, p1, 0x1

    shr-int/lit8 p6, p4, 0x8

    int-to-byte p6, p6

    int-to-char p6, p6

    aput-char p6, v1, p5

    add-int/lit8 p5, p1, 0x2

    int-to-byte p4, p4

    int-to-char p4, p4

    aput-char p4, v1, p5

    add-int/lit8 p4, p1, 0x3

    aput-char p3, v1, p4

    mul-int/lit16 p2, p2, 0xe10

    sub-int/2addr p8, p2

    div-int/lit8 p8, p8, 0x3c

    if-gez p8, :cond_9

    neg-int p8, p8

    :cond_9
    aget p2, v3, p8

    add-int/lit8 p3, p1, 0x4

    shr-int/lit8 p4, p2, 0x8

    int-to-byte p4, p4

    int-to-char p4, p4

    aput-char p4, v1, p3

    add-int/lit8 p3, p1, 0x5

    int-to-byte p2, p2

    int-to-char p2, p2

    aput-char p2, v1, p3

    add-int/lit8 p1, p1, 0x6

    :cond_a
    :goto_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p2, v1, p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDateYYYMMDD10(III)V
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0xd

    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v1, v0

    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result p1

    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDateYYYMMDD8(III)V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0xa

    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v2, v0

    if-ltz p1, :cond_1

    const/16 v4, 0x270f

    if-gt p1, v4, :cond_1

    div-int/lit16 v4, p1, 0x3e8

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    mul-int/lit16 v6, v4, 0x3e8

    sub-int/2addr p1, v6

    aget p1, v5, p1

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    int-to-char v4, v4

    aput-char v4, v2, v6

    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v6, p1, 0x10

    int-to-byte v6, v6

    int-to-char v6, v6

    aput-char v6, v2, v4

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    int-to-char v6, v6

    aput-char v6, v2, v4

    add-int/lit8 v4, v0, 0x4

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, v4

    aget p1, v5, p2

    add-int/lit8 p2, v0, 0x5

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    int-to-char v4, v4

    aput-char v4, v2, p2

    add-int/lit8 p2, v0, 0x6

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    aget p1, v5, p3

    add-int/lit8 p2, v0, 0x7

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v2, p2

    add-int/lit8 p2, v0, 0x8

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    add-int/lit8 v0, v0, 0x9

    aput-char v3, v2, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Only 4 digits numbers are supported. Provided: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V
    .locals 9

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/k;->writeRaw(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p4, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    or-long/2addr p2, v0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result p4

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, p2

    cmp-long v0, v5, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    if-lt p4, v0, :cond_3

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->r:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_4

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->s:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v4

    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p4, v5

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    add-int/2addr p4, v6

    add-int/lit8 p4, p4, 0x7

    iget-object v6, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v6, v6

    if-lt p4, v6, :cond_5

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_5
    iget-object p4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    const/16 v6, 0x22

    if-eqz v0, :cond_6

    add-int/lit8 v7, v5, 0x1

    aput-char v6, p4, v5

    move v5, v7

    :cond_6
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p2, v7

    cmp-long p2, p2, v2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v1, p2, p4, v5}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v5, p1

    if-eqz v0, :cond_9

    add-int/lit8 p1, v5, 0x1

    aput-char v6, p4, v5

    move v5, p1

    :cond_9
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDouble(D)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x18

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 3
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    const/16 v4, 0x22

    if-eqz v0, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 6
    aput-char v4, v3, v2

    move v2, v5

    .line 7
    :cond_3
    invoke-static {p1, p2, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_4

    add-int/lit8 p1, v2, 0x1

    .line 8
    aput-char v4, v3, v2

    move v2, p1

    .line 9
    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDouble([D)V
    .locals 8

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 12
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 13
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x1b

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 14
    iget-object v5, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 15
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 17
    aput-char v6, v4, v3

    .line 18
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 19
    aput-char v6, v4, v5

    move v5, v3

    :cond_3
    const/16 v3, 0x22

    if-eqz v0, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 20
    aput-char v3, v4, v5

    move v5, v6

    .line 21
    :cond_4
    aget-wide v6, p1, v1

    .line 22
    invoke-static {v6, v7, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 23
    aput-char v3, v4, v5

    move v5, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 24
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 25
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDoubleArray(DD)V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x30

    add-int/lit8 v3, v3, 0x3

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x5b

    aput-char v5, v3, v2

    const/16 v2, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v4, 0x1

    aput-char v2, v3, v4

    move v4, v5

    :cond_2
    invoke-static {p1, p2, v3, v4, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result p1

    add-int/2addr v4, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v4, 0x1

    aput-char v2, v3, v4

    move v4, p1

    :cond_3
    add-int/lit8 p1, v4, 0x1

    const/16 p2, 0x2c

    aput-char p2, v3, v4

    if-eqz v0, :cond_4

    add-int/lit8 p2, p1, 0x1

    aput-char v2, v3, p1

    move p1, p2

    :cond_4
    invoke-static {p3, p4, v3, p1, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[CIZ)I

    move-result p2

    add-int/2addr p1, p2

    if-eqz v0, :cond_5

    add-int/lit8 p2, p1, 0x1

    aput-char v2, v3, p1

    move p1, p2

    :cond_5
    const/16 p2, 0x5d

    aput-char p2, v3, p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeFloat(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0xf

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 3
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 4
    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    const/16 v4, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 5
    aput-char v4, v3, v2

    move v2, v5

    .line 6
    :cond_2
    invoke-static {p1, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[CIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v2, 0x1

    .line 7
    aput-char v4, v3, v2

    move v2, p1

    .line 8
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeFloat([F)V
    .locals 7

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 11
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 12
    array-length v4, p1

    if-eqz v0, :cond_2

    const/16 v5, 0x10

    goto :goto_1

    :cond_2
    const/16 v5, 0x12

    :goto_1
    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 13
    iget-object v5, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 14
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 16
    aput-char v6, v4, v3

    .line 17
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_7

    if-eqz v1, :cond_4

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 18
    aput-char v6, v4, v5

    move v5, v3

    :cond_4
    const/16 v3, 0x22

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 19
    aput-char v3, v4, v5

    move v5, v6

    .line 20
    :cond_5
    aget v6, p1, v1

    .line 21
    invoke-static {v6, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[CIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 22
    aput-char v3, v4, v5

    move v5, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/16 p1, 0x5d

    .line 23
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 24
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeHex([B)V
    .locals 10

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    const/16 v2, 0x78

    aput-char v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x27

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    const/16 v6, 0x30

    const/16 v7, 0x37

    const/16 v8, 0xa

    if-ge v5, v8, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    add-int/2addr v5, v9

    int-to-char v5, v5

    aput-char v5, v0, v1

    add-int/lit8 v5, v1, 0x1

    if-ge v4, v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    add-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v0, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt16(S)V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x7

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v2, v1

    move v1, v3

    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v1, v2, p1

    move p1, v0

    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt32(I)V
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0xd

    .line 18
    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 21
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v2, v1

    move v1, v3

    .line 22
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 23
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v1, v2, p1

    move p1, v0

    .line 24
    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt32([I)V
    .locals 7

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 4
    array-length v4, p1

    mul-int/lit8 v4, v4, 0xd

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 5
    iget-object v5, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 6
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 8
    aput-char v6, v4, v3

    .line 9
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 10
    aput-char v6, v4, v5

    move v5, v3

    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v3, v5, 0x1

    .line 11
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v6, v4, v5

    move v5, v3

    .line 12
    :cond_4
    aget v3, p1, v1

    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result v3

    if-eqz v0, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 13
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v6, v4, v3

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 14
    aput-char p1, v4, v5

    add-int/2addr v5, v2

    .line 15
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt64(J)V
    .locals 9

    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    .line 20
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide v2, 0x1fffffffffffffL

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    const-wide v2, -0x1fffffffffffffL

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 21
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v6, v3, 0x17

    .line 22
    iget-object v7, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 23
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 24
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson2/k;->f:[C

    if-eqz v2, :cond_3

    add-int/lit8 v7, v3, 0x1

    .line 25
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v8, v6, v3

    move v3, v7

    .line 26
    :cond_3
    invoke-static {v6, v3, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result v3

    if-eqz v2, :cond_4

    add-int/lit8 p1, v3, 0x1

    .line 27
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p2, v6, v3

    :goto_2
    move v3, p1

    goto :goto_3

    .line 28
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v0

    cmp-long v2, v7, v4

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, p1, v0

    if-gtz p1, :cond_5

    add-int/lit8 p1, v3, 0x1

    const/16 p2, 0x4c

    .line 29
    aput-char p2, v6, v3

    goto :goto_2

    .line 30
    :cond_5
    :goto_3
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt64([J)V
    .locals 12

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    .line 3
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4
    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v7, v9

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v3

    .line 5
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v4, v1, 0x2

    .line 6
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x17

    add-int/2addr v4, v5

    .line 7
    iget-object v5, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 9
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v7, 0x5b

    .line 10
    aput-char v7, v4, v1

    move v1, v3

    .line 11
    :goto_2
    array-length v7, p1

    if-ge v1, v7, :cond_9

    if-eqz v1, :cond_4

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x2c

    .line 12
    aput-char v8, v4, v5

    move v5, v7

    .line 13
    :cond_4
    aget-wide v7, p1, v1

    if-nez v0, :cond_6

    if-eqz v2, :cond_5

    const-wide v9, 0x1fffffffffffffL

    cmp-long v9, v7, v9

    if-gtz v9, :cond_5

    const-wide v9, -0x1fffffffffffffL

    cmp-long v9, v7, v9

    if-ltz v9, :cond_5

    goto :goto_3

    :cond_5
    move v9, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v9, v6

    :goto_4
    if-eqz v9, :cond_7

    add-int/lit8 v10, v5, 0x1

    .line 14
    iget-char v11, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v11, v4, v5

    move v5, v10

    .line 15
    :cond_7
    invoke-static {v4, v5, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result v5

    if-eqz v9, :cond_8

    add-int/lit8 v7, v5, 0x1

    .line 16
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v8, v4, v5

    move v5, v7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const/16 p1, 0x5d

    .line 17
    aput-char p1, v4, v5

    add-int/2addr v5, v6

    .line 18
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeInt8(B)V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x7

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v2, v1

    move v1, v3

    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v1, v2, p1

    move p1, v0

    :cond_3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeLocalDate(Ljava/time/LocalDate;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDateWithFormat(Ljava/time/LocalDate;Lcom/alibaba/fastjson2/JSONWriter$Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x12

    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v1, v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v1, v2, v0, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result p1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeLocalDateTime(Ljava/time/LocalDateTime;)V
    .locals 5

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x26

    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v1, v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    aput-char v3, v1, v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public final writeLocalTime(Ljava/time/LocalTime;)V
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x14

    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v1, v0

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeNameRaw([B)V
    .locals 0

    .line 23
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeNameRaw([C)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 2
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x2c

    .line 8
    aput-char v4, v1, v0

    .line 9
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0xa

    .line 10
    aput-char v4, v1, v3

    move v3, v2

    .line 11
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x9

    .line 12
    aput-char v5, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 13
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeNameRaw([CII)V
    .locals 3

    .line 15
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public final writeOffsetDateTime(Ljava/time/OffsetDateTime;)V
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x2d

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v3, v1, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v2, v1

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x54

    aput-char v4, v2, v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x5a

    aput-char v1, v2, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public final writeOffsetTime(Ljava/time/OffsetTime;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x19

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v3, v1, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v2, v1

    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x5a

    aput-char v1, v2, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw(C)V
    .locals 3

    .line 9
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    aput-char p1, v0, v1

    return-void
.end method

.method public writeRaw(CC)V
    .locals 3

    .line 12
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    .line 13
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 14
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    aput-char p1, v2, v0

    .line 16
    aput-char p2, v2, v1

    add-int/lit8 v0, v0, 0x2

    .line 17
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw([B)V
    .locals 0

    .line 18
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeRaw([CII)V
    .locals 2

    .line 4
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, p3

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeReference(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->lastReference:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/fastjson2/k;->h:[C

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/k;->writeRaw([CII)V

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/k;->writeString(Ljava/lang/String;)V

    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    const/16 v1, 0x7d

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v3

    .line 15
    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v3

    .line 16
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 18
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x2

    .line 19
    iget-object v7, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v7, v7

    if-lt v5, v7, :cond_3

    .line 20
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_3
    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_7

    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_6

    if-eq v7, v1, :cond_6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_6

    if-eqz v0, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_6

    const/16 v8, 0x28

    if-eq v7, v8, :cond_6

    const/16 v8, 0x29

    if-eq v7, v8, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    const/16 v8, 0x7f

    if-le v7, v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move v0, v6

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    if-nez v0, :cond_8

    .line 22
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 23
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v5, v0, 0x1

    .line 24
    aput-char v1, v2, v0

    .line 25
    invoke-virtual {p1, v3, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v5, v4

    .line 26
    aput-char v1, v2, v5

    add-int/2addr v5, v6

    .line 27
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    .line 28
    :cond_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/k;->w(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    if-eqz v1, :cond_2

    .line 5
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    .line 8
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/k;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v0, v0

    if-ne p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 p0, 0x5d

    aput-char p0, p1, v0

    return-void
.end method

.method public writeString([C)V
    .locals 9

    if-nez p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v3

    .line 96
    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    move v1, v3

    .line 97
    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 98
    aget-char v4, p1, v1

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_6

    .line 99
    iget-char v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v4, v5, :cond_6

    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_6

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_6

    const/16 v5, 0x28

    if-eq v4, v5, :cond_6

    const/16 v5, 0x29

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v6, v0

    :cond_6
    :goto_3
    if-nez v6, :cond_8

    .line 100
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 101
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-le v0, v1, :cond_7

    .line 102
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v4, v0, v1

    .line 104
    array-length v1, p1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    .line 106
    iget-object p1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p0, p1, v0

    return-void

    .line 107
    :cond_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/k;->I([C)V

    return-void
.end method

.method public writeString([CII)V
    .locals 5

    if-nez p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v2, p2

    :goto_1
    if-ge v2, p3, :cond_3

    .line 110
    aget-char v3, p1, v2

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_4

    .line 111
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v3, v4, :cond_4

    const/16 v4, 0x20

    if-ge v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    if-nez v1, :cond_6

    .line 112
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 113
    iget-object v1, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 114
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v3, v0, v1

    .line 116
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p1, p3

    .line 118
    iget-object p2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p0, p2, p1

    return-void

    .line 119
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/k;->w(Ljava/lang/String;)V

    return-void
.end method

.method public writeString([CIIZ)V
    .locals 9

    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 31
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-eqz p4, :cond_1

    add-int/lit8 v3, v2, 0x2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    mul-int/lit8 v4, p3, 0x6

    goto :goto_2

    :cond_2
    mul-int/lit8 v4, p3, 0x2

    :goto_2
    add-int/2addr v3, v4

    .line 32
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v4, v4

    sub-int v4, v3, v4

    if-lez v4, :cond_3

    .line 33
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/k;->j(I)V

    .line 34
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson2/k;->f:[C

    if-eqz p4, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 35
    aput-char v1, v3, v2

    move v2, v4

    :cond_4
    :goto_3
    if-ge p2, p3, :cond_9

    .line 36
    aget-char v4, p1, p2

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-eq v4, v5, :cond_7

    const/16 v5, 0x27

    if-eq v4, v5, :cond_7

    if-eq v4, v6, :cond_6

    const/16 v5, 0x31

    const/16 v7, 0x75

    const/16 v8, 0x30

    packed-switch v4, :pswitch_data_0

    if-eqz v0, :cond_5

    const/16 v5, 0x7f

    if-le v4, v5, :cond_5

    .line 37
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 38
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 39
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x3

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    .line 40
    aget-char v7, v6, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x4

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    .line 41
    aget-char v7, v6, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x5

    and-int/lit8 v4, v4, 0xf

    .line 42
    aget-char v4, v6, v4

    aput-char v4, v3, v5

    goto/16 :goto_6

    :cond_5
    add-int/lit8 v5, v2, 0x1

    .line 43
    aput-char v4, v3, v2

    :goto_4
    move v2, v5

    goto/16 :goto_7

    .line 44
    :pswitch_0
    aput-char v6, v3, v2

    add-int/lit8 v6, v2, 0x1

    .line 45
    aput-char v7, v3, v6

    add-int/lit8 v6, v2, 0x2

    .line 46
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x3

    .line 47
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x4

    .line 48
    aput-char v5, v3, v6

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, -0x1a

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    .line 49
    aput-char v4, v3, v5

    goto/16 :goto_6

    .line 50
    :pswitch_1
    aput-char v6, v3, v2

    add-int/lit8 v6, v2, 0x1

    .line 51
    aput-char v7, v3, v6

    add-int/lit8 v6, v2, 0x2

    .line 52
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x3

    .line 53
    aput-char v8, v3, v6

    add-int/lit8 v6, v2, 0x4

    .line 54
    aput-char v5, v3, v6

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, -0x10

    add-int/2addr v4, v8

    int-to-char v4, v4

    .line 55
    aput-char v4, v3, v5

    goto :goto_6

    .line 56
    :pswitch_2
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x72

    .line 57
    aput-char v5, v3, v4

    goto :goto_5

    .line 58
    :pswitch_3
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x66

    .line 59
    aput-char v5, v3, v4

    goto :goto_5

    .line 60
    :pswitch_4
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 61
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 62
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x3

    .line 63
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x4

    .line 64
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    .line 65
    aput-char v4, v3, v5

    goto :goto_6

    .line 66
    :pswitch_5
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x6e

    .line 67
    aput-char v5, v3, v4

    goto :goto_5

    .line 68
    :pswitch_6
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x74

    .line 69
    aput-char v5, v3, v4

    goto :goto_5

    .line 70
    :pswitch_7
    aput-char v6, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x62

    .line 71
    aput-char v5, v3, v4

    :goto_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    .line 72
    :pswitch_8
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 73
    aput-char v7, v3, v5

    add-int/lit8 v5, v2, 0x2

    .line 74
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x3

    .line 75
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x4

    .line 76
    aput-char v8, v3, v5

    add-int/lit8 v5, v2, 0x5

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 77
    aput-char v4, v3, v5

    :goto_6
    add-int/lit8 v2, v2, 0x6

    goto :goto_7

    .line 78
    :cond_6
    aput-char v6, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 79
    aput-char v4, v3, v5

    goto :goto_5

    :cond_7
    if-ne v4, v1, :cond_8

    add-int/lit8 v5, v2, 0x1

    .line 80
    aput-char v6, v3, v2

    move v2, v5

    :cond_8
    add-int/lit8 v5, v2, 0x1

    .line 81
    aput-char v4, v3, v2

    goto/16 :goto_4

    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    :cond_9
    if-eqz p4, :cond_a

    add-int/lit8 p1, v2, 0x1

    .line 82
    aput-char v1, v3, v2

    move v2, p1

    .line 83
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeString([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/k;->startArray()V

    const/4 v0, 0x0

    .line 86
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/k;->writeComma()V

    .line 88
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 89
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 90
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/k;->endArray()V

    return-void
.end method

.method public writeStringLatin1([B)V
    .locals 9

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v4, p1

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v5, v5

    if-lt v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v5, v3, 0x1

    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v6, v4, v3

    move v6, v1

    :goto_1
    array-length v7, p1

    if-ge v6, v7, :cond_6

    aget-byte v7, p1, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_5

    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v7, v8, :cond_5

    const/16 v8, 0x20

    if-ge v7, v8, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_5

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_5

    const/16 v8, 0x28

    if-eq v7, v8, :cond_5

    const/16 v8, 0x29

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v5, 0x1

    int-to-char v7, v7

    aput-char v7, v4, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    :cond_6
    if-nez v1, :cond_7

    add-int/lit8 p1, v5, 0x1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v0, v4, v5

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/k;->H([B)V

    return-void
.end method

.method public writeStringUTF16([B)V
    .locals 12

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v4, p1

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v5, v5

    if-lt v4, v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v5, v1, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v7, v4, v1

    move v1, v3

    :goto_2
    array-length v7, p1

    if-ge v1, v7, :cond_7

    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget v8, Lsun/misc/Unsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v8, v8

    int-to-long v10, v1

    add-long/2addr v8, v10

    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_6

    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v7, v8, :cond_6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_6

    if-eqz v2, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_6

    const/16 v8, 0x28

    if-eq v7, v8, :cond_6

    const/16 v8, 0x29

    if-eq v7, v8, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    const/16 v8, 0x7f

    if-le v7, v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v5, 0x1

    aput-char v7, v4, v5

    add-int/lit8 v1, v1, 0x2

    move v5, v8

    goto :goto_2

    :cond_6
    :goto_3
    move v3, v6

    :cond_7
    if-nez v3, :cond_8

    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p1, v4, v5

    add-int/2addr v5, v6

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/k;->M([B)V

    return-void
.end method

.method public writeTimeHHMMSS8(III)V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0xa

    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/k;->f:[C

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v3

    int-to-char v4, v4

    aput-char v4, v2, v0

    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget p1, v4, p1

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    int-to-char v6, v6

    aput-char v6, v2, v5

    add-int/lit8 v5, v0, 0x2

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, v5

    add-int/lit8 p1, v0, 0x3

    const/16 v5, 0x3a

    aput-char v5, v2, p1

    aget p1, v4, p2

    add-int/lit8 p2, v0, 0x4

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    int-to-char v6, v6

    aput-char v6, v2, p2

    add-int/lit8 p2, v0, 0x5

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    add-int/lit8 p1, v0, 0x6

    aput-char v5, v2, p1

    aget p1, v4, p3

    add-int/lit8 p2, v0, 0x7

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    int-to-char p3, p3

    aput-char p3, v2, p2

    add-int/lit8 p2, v0, 0x8

    int-to-byte p1, p1

    int-to-char p1, p1

    aput-char p1, v2, p2

    add-int/lit8 v0, v0, 0x9

    int-to-byte p1, v3

    int-to-char p1, p1

    aput-char p1, v2, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeUUID(Ljava/util/UUID;)V
    .locals 19

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    iget v5, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v5, v5, 0x26

    iget-object v6, v0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v6, v6

    if-lt v5, v6, :cond_1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_1
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->G:[C

    iget-object v6, v0, Lcom/alibaba/fastjson2/k;->f:[C

    iget v7, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v8, 0x22

    aput-char v8, v6, v7

    const/16 v9, 0x38

    shr-long v10, v1, v9

    long-to-int v10, v10

    and-int/lit16 v10, v10, 0xff

    aget-char v10, v5, v10

    const/16 v11, 0x30

    shr-long v12, v1, v11

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    aget-char v12, v5, v12

    const/16 v13, 0x28

    shr-long v14, v1, v13

    long-to-int v14, v14

    and-int/lit16 v14, v14, 0xff

    aget-char v14, v5, v14

    const/16 v15, 0x20

    move/from16 v16, v14

    shr-long v13, v1, v15

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    aget-char v13, v5, v13

    long-to-int v1, v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-char v2, v5, v2

    shr-int/lit8 v14, v1, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-char v14, v5, v14

    shr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-char v8, v5, v8

    and-int/lit16 v1, v1, 0xff

    aget-char v1, v5, v1

    move/from16 v18, v12

    shr-long v11, v3, v9

    long-to-int v9, v11

    and-int/lit16 v9, v9, 0xff

    aget-char v9, v5, v9

    const/16 v11, 0x30

    shr-long v11, v3, v11

    long-to-int v11, v11

    and-int/lit16 v11, v11, 0xff

    aget-char v11, v5, v11

    move/from16 p1, v11

    const/16 v12, 0x28

    shr-long v11, v3, v12

    long-to-int v11, v11

    and-int/lit16 v11, v11, 0xff

    aget-char v11, v5, v11

    move/from16 v17, v11

    shr-long v11, v3, v15

    long-to-int v11, v11

    and-int/lit16 v11, v11, 0xff

    aget-char v11, v5, v11

    long-to-int v3, v3

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-char v4, v5, v4

    shr-int/lit8 v12, v3, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-char v12, v5, v12

    shr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-char v15, v5, v15

    and-int/lit16 v3, v3, 0xff

    aget-char v3, v5, v3

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v0, v10, 0x8

    int-to-byte v0, v0

    int-to-char v0, v0

    aput-char v0, v6, v5

    add-int/lit8 v0, v7, 0x2

    int-to-byte v5, v10

    int-to-char v5, v5

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x3

    shr-int/lit8 v5, v18, 0x8

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x4

    move/from16 v5, v18

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x5

    shr-int/lit8 v5, v16, 0x8

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x6

    move/from16 v5, v16

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x7

    shr-int/lit8 v5, v13, 0x8

    int-to-byte v5, v5

    int-to-char v5, v5

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x8

    int-to-byte v5, v13

    int-to-char v5, v5

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x9

    const/16 v5, 0x2d

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0xa

    shr-int/lit8 v10, v2, 0x8

    int-to-byte v10, v10

    int-to-char v10, v10

    aput-char v10, v6, v0

    add-int/lit8 v0, v7, 0xb

    int-to-byte v2, v2

    int-to-char v2, v2

    aput-char v2, v6, v0

    add-int/lit8 v0, v7, 0xc

    shr-int/lit8 v2, v14, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    aput-char v2, v6, v0

    add-int/lit8 v0, v7, 0xd

    int-to-byte v2, v14

    int-to-char v2, v2

    aput-char v2, v6, v0

    add-int/lit8 v0, v7, 0xe

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0xf

    shr-int/lit8 v2, v8, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    aput-char v2, v6, v0

    add-int/lit8 v0, v7, 0x10

    int-to-byte v2, v8

    int-to-char v2, v2

    aput-char v2, v6, v0

    add-int/lit8 v0, v7, 0x11

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    aput-char v2, v6, v0

    add-int/lit8 v0, v7, 0x12

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x13

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x14

    shr-int/lit8 v1, v9, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x15

    int-to-byte v1, v9

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x16

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x17

    move/from16 v1, p1

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x18

    aput-char v5, v6, v0

    add-int/lit8 v0, v7, 0x19

    shr-int/lit8 v1, v17, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x1a

    move/from16 v1, v17

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x1b

    shr-int/lit8 v1, v11, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x1c

    int-to-byte v1, v11

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x1d

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x1e

    int-to-byte v1, v4

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x1f

    shr-int/lit8 v1, v12, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x20

    int-to-byte v1, v12

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x21

    shr-int/lit8 v1, v15, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x22

    int-to-byte v1, v15

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x23

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x24

    int-to-byte v1, v3

    int-to-char v1, v1

    aput-char v1, v6, v0

    add-int/lit8 v0, v7, 0x25

    const/16 v1, 0x22

    aput-char v1, v6, v0

    add-int/lit8 v7, v7, 0x26

    move-object/from16 v0, p0

    iput v7, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public final writeZonedDateTime(Ljava/time/ZonedDateTime;)V
    .locals 13

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/16 v4, 0x2d

    const/16 v5, 0x2b

    const-string v6, "Z"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v0, :cond_5

    const/4 v0, 0x3

    if-gt v2, v0, :cond_1

    const-string v0, "UTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_4

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v7

    :cond_4
    add-int/lit8 v3, v2, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    move-object v1, v6

    move v0, v7

    move v3, v8

    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int v9, v6, v3

    add-int/lit8 v9, v9, 0x26

    iget-object v10, p0, Lcom/alibaba/fastjson2/k;->f:[C

    array-length v10, v10

    if-lt v9, v10, :cond_6

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/k;->j(I)V

    :cond_6
    iget-object v9, p0, Lcom/alibaba/fastjson2/k;->f:[C

    add-int/lit8 v10, v6, 0x1

    iget-char v11, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char v11, v9, v6

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalDate;->getYear()I

    move-result v11

    invoke-virtual {v6}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v12

    invoke-virtual {v6}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v6

    invoke-static {v9, v10, v11, v12, v6}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([CIIII)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    const/16 v11, 0x54

    aput-char v11, v9, v6

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v9, v10, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CILjava/time/LocalTime;)I

    move-result p1

    if-ne v3, v8, :cond_7

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x5a

    aput-char v1, v9, p1

    goto :goto_3

    :cond_7
    if-eq v0, v5, :cond_9

    if-ne v0, v4, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v0, p1, 0x1

    const/16 v3, 0x5b

    aput-char v3, v9, p1

    invoke-virtual {v1, v7, v2, v9, v0}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, v2

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x5d

    aput-char v1, v9, v0

    move v0, p1

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {v1, v7, v2, v9, p1}, Ljava/lang/String;->getChars(II[CI)V

    add-int v0, p1, v2

    :goto_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    aput-char p1, v9, v0

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method
