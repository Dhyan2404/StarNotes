.class public final Lcom/alibaba/fastjson2/l;
.super Lcom/alibaba/fastjson2/JSONWriter;
.source "SourceFile"


# static fields
.field public static final h:[B


# instance fields
.field public final f:Lcom/alibaba/fastjson2/JSONFactory$b;

.field public g:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "{\"$ref\":"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/l;->h:[B

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

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

    iput-object p1, p0, Lcom/alibaba/fastjson2/l;->f:Lcom/alibaba/fastjson2/JSONFactory$b;

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->D:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    new-array p1, p1, [B

    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    return-void
.end method


# virtual methods
.method public final H([CIZZI)V
    .locals 8

    array-length v0, p1

    sub-int/2addr v0, p5

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    const/4 v0, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    :goto_0
    if-ge p5, p2, :cond_d

    aget-char v3, p1, p5

    const/16 v4, 0x7f

    const/16 v5, 0x75

    const/16 v6, 0x5c

    if-gt v3, v4, :cond_5

    const/16 v4, 0x28

    const/16 v7, 0x30

    if-eq v3, v4, :cond_3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    if-eq v3, v6, :cond_2

    const/16 v4, 0x31

    packed-switch v3, :pswitch_data_0

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-ne v3, v4, :cond_1

    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :goto_1
    move v2, v4

    goto/16 :goto_6

    :pswitch_0
    aput-byte v6, v1, v2

    add-int/lit8 v6, v2, 0x1

    aput-byte v5, v1, v6

    add-int/lit8 v5, v2, 0x2

    aput-byte v7, v1, v5

    add-int/lit8 v5, v2, 0x3

    aput-byte v7, v1, v5

    add-int/lit8 v5, v2, 0x4

    aput-byte v4, v1, v5

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v3, v3, -0x1a

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto/16 :goto_3

    :pswitch_1
    aput-byte v6, v1, v2

    add-int/lit8 v6, v2, 0x1

    aput-byte v5, v1, v6

    add-int/lit8 v5, v2, 0x2

    aput-byte v7, v1, v5

    add-int/lit8 v5, v2, 0x3

    aput-byte v7, v1, v5

    add-int/lit8 v5, v2, 0x4

    aput-byte v4, v1, v5

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto/16 :goto_3

    :pswitch_2
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x72

    aput-byte v4, v1, v3

    goto :goto_2

    :pswitch_3
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x66

    aput-byte v4, v1, v3

    goto :goto_2

    :pswitch_4
    aput-byte v6, v1, v2

    add-int/lit8 v4, v2, 0x1

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x3

    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x4

    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto/16 :goto_3

    :pswitch_5
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x6e

    aput-byte v4, v1, v3

    goto :goto_2

    :pswitch_6
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x74

    aput-byte v4, v1, v3

    goto :goto_2

    :pswitch_7
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x62

    aput-byte v4, v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_6

    :pswitch_8
    aput-byte v6, v1, v2

    add-int/lit8 v4, v2, 0x1

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x3

    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x4

    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto :goto_3

    :cond_2
    aput-byte v6, v1, v2

    add-int/lit8 v3, v2, 0x1

    aput-byte v6, v1, v3

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    aput-byte v6, v1, v2

    add-int/lit8 v4, v2, 0x1

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x3

    aput-byte v7, v1, v4

    add-int/lit8 v4, v2, 0x4

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v2, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_1

    :cond_5
    if-eqz p4, :cond_6

    aput-byte v6, v1, v2

    add-int/lit8 v4, v2, 0x1

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v2, 0x3

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v2, 0x4

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v2, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    :goto_3
    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_6

    :cond_6
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v3, v4, :cond_b

    const v4, 0xe000

    if-ge v3, v4, :cond_b

    const v6, 0xdc00

    if-ge v3, v6, :cond_a

    array-length v7, p1

    sub-int/2addr v7, p5

    if-ge v7, v0, :cond_7

    const/4 v3, -0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v7, p5, 0x1

    aget-char v7, p1, v7

    if-lt v7, v6, :cond_9

    if-ge v7, v4, :cond_9

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v7

    const v4, -0x35fdc00

    add-int/2addr v3, v4

    :goto_4
    if-gez v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    aput-byte v5, v1, v2

    goto :goto_5

    :cond_8
    shr-int/lit8 v4, v3, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v6, v3, 0xc

    and-int/2addr v6, v5

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v6, v3, 0x6

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v3, v2, 0x4

    add-int/lit8 p5, p5, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v2, 0x1

    aput-byte v5, v1, v2

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v2, 0x1

    aput-byte v5, v1, v2

    :goto_5
    move v2, v3

    goto :goto_6

    :cond_b
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_c

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v6, v3, 0x6

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v2, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, 0x3

    goto :goto_6

    :cond_c
    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto/16 :goto_2

    :goto_6
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_d
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

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
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v0

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->D:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p0, p0, Lcom/alibaba/fastjson2/l;->f:Lcom/alibaba/fastjson2/JSONFactory$b;

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

    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    aput-byte v5, v2, v0

    move v0, v3

    move v3, v4

    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x9

    aput-byte v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x5d

    aput-byte v3, v2, v0

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

    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v3, v0, 0x1

    const/16 v5, 0xa

    aput-byte v5, v2, v0

    move v0, v3

    move v3, v4

    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x9

    aput-byte v6, v2, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x7d

    aput-byte v3, v2, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    return-void
.end method

.method public flushTo(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    :cond_0
    return v0
.end method

.method public flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p2, v1, :cond_4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_3

    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 7
    aget-byte v3, v2, v1

    if-gez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-nez v1, :cond_3

    .line 8
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 9
    invoke-virtual {p1, v2, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 10
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return p2

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-direct {v1, v2, v0, p0}, Ljava/lang/String;-><init>([BII)V

    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 14
    array-length p0, p0

    return p0

    .line 15
    :cond_4
    :goto_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    invoke-virtual {p1, v1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return p2
.end method

.method public getBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/l;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public final j(I)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v0

    if-lt p1, v1, :cond_2

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

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/l;->g:[B

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

    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x5b

    aput-byte v4, v2, v0

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    aput-byte v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    aput-byte v4, v2, v3

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

    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x7b

    aput-byte v4, v2, v0

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0xa

    aput-byte v1, v2, v3

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0x9

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final w([B)V
    .locals 10

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

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
    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v5, v4, 0x1

    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_7

    aget-byte v4, p1, v1

    const/16 v6, 0x28

    const/16 v7, 0x75

    const/16 v8, 0x30

    const/16 v9, 0x5c

    if-eq v4, v6, :cond_5

    const/16 v6, 0x29

    if-eq v4, v6, :cond_5

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_5

    const/16 v6, 0x3e

    if-eq v4, v6, :cond_5

    if-eq v4, v9, :cond_4

    const/16 v6, 0x31

    packed-switch v4, :pswitch_data_0

    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-ne v4, v6, :cond_2

    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    goto/16 :goto_2

    :cond_2
    if-gez v4, :cond_3

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, v5, 0x1

    aput-byte v4, v3, v5

    goto/16 :goto_4

    :pswitch_0
    aput-byte v9, v3, v5

    add-int/lit8 v9, v5, 0x1

    aput-byte v7, v3, v9

    add-int/lit8 v7, v5, 0x2

    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x3

    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x4

    aput-byte v6, v3, v7

    add-int/lit8 v6, v5, 0x5

    add-int/lit8 v4, v4, -0x1a

    add-int/lit8 v4, v4, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    goto/16 :goto_3

    :pswitch_1
    aput-byte v9, v3, v5

    add-int/lit8 v9, v5, 0x1

    aput-byte v7, v3, v9

    add-int/lit8 v7, v5, 0x2

    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x3

    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x4

    aput-byte v6, v3, v7

    add-int/lit8 v6, v5, 0x5

    add-int/lit8 v4, v4, -0x10

    add-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    goto :goto_3

    :pswitch_2
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x72

    aput-byte v6, v3, v4

    goto :goto_2

    :pswitch_3
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x66

    aput-byte v6, v3, v4

    goto :goto_2

    :pswitch_4
    aput-byte v9, v3, v5

    add-int/lit8 v6, v5, 0x1

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x3

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x4

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x5

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    goto :goto_3

    :pswitch_5
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x6e

    aput-byte v6, v3, v4

    goto :goto_2

    :pswitch_6
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x74

    aput-byte v6, v3, v4

    goto :goto_2

    :pswitch_7
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x62

    aput-byte v6, v3, v4

    :goto_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_5

    :pswitch_8
    aput-byte v9, v3, v5

    add-int/lit8 v6, v5, 0x1

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x3

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x4

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x5

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    :goto_3
    add-int/lit8 v5, v5, 0x6

    goto :goto_5

    :cond_4
    aput-byte v9, v3, v5

    add-int/lit8 v4, v5, 0x1

    aput-byte v9, v3, v4

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    aput-byte v9, v3, v5

    add-int/lit8 v6, v5, 0x1

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x3

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x4

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, 0x5

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v5, 0x1

    aput-byte v4, v3, v5

    :goto_4
    move v5, v6

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

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

    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    add-int/2addr v0, v2

    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v5, 0x7b

    aput-byte v5, v0, v1

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

    if-nez v0, :cond_4

    .line 12
    iget v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v6, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v6, v6

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 13
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_3
    if-eqz v7, :cond_4

    .line 14
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    .line 15
    iget-object v5, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v8, 0x2c

    aput-byte v8, v5, v6

    :cond_4
    if-nez v7, :cond_5

    .line 16
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v5, v5, v3

    if-nez v5, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 18
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 19
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 21
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-ne v0, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 23
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v5, 0x3a

    aput-byte v5, v0, v1

    if-nez v7, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    .line 25
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 26
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 27
    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/l;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_9
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_a

    .line 29
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_2

    .line 30
    :cond_a
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_b

    .line 31
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_2

    .line 32
    :cond_b
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_c

    .line 33
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_2

    .line 34
    :cond_c
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_d

    .line 35
    check-cast v7, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-virtual {p0, v7, v3, v4, v0}, Lcom/alibaba/fastjson2/l;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_2

    .line 36
    :cond_d
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v1, :cond_e

    .line 37
    check-cast v7, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/l;->write(Ljava/util/List;)V

    goto :goto_2

    .line 38
    :cond_e
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v1, :cond_f

    .line 39
    check-cast v7, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/l;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_2

    .line 40
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v6, p0

    .line 41
    invoke-interface/range {v5 .. v11}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 42
    :cond_10
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v0, v0

    if-ne p1, v0, :cond_11

    add-int/2addr p1, v2

    .line 43
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 44
    :cond_11
    iget-object p1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 p0, 0x7d

    aput-byte p0, p1, v0

    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 46
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

    .line 47
    iget-object v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    and-long/2addr v0, v3

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    .line 49
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 50
    :cond_1
    iget v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, v7, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    const/4 v11, 0x1

    if-ne v0, v1, :cond_2

    add-int/2addr v0, v11

    .line 51
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 52
    :cond_2
    iget-object v0, v7, Lcom/alibaba/fastjson2/l;->g:[B

    iget v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    .line 53
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    move v0, v11

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_d

    if-nez v0, :cond_4

    .line 54
    iget v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, v7, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 56
    :cond_3
    iget-object v0, v7, Lcom/alibaba/fastjson2/l;->g:[B

    iget v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 57
    :cond_4
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 60
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_6

    .line 61
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_6
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_7

    .line 63
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    goto :goto_1

    .line 64
    :cond_7
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_8

    .line 65
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    goto :goto_1

    .line 66
    :cond_8
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_9

    .line 67
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    goto :goto_1

    .line 68
    :cond_9
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_a

    .line 69
    check-cast v2, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v9, v10, v0}, Lcom/alibaba/fastjson2/l;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    goto :goto_1

    .line 70
    :cond_a
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v0, v1, :cond_b

    .line 71
    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->write(Ljava/util/List;)V

    goto :goto_1

    .line 72
    :cond_b
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    if-ne v0, v1, :cond_c

    .line 73
    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_1

    .line 74
    :cond_c
    iget-object v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    .line 75
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v0, v13

    goto/16 :goto_0

    .line 76
    :cond_d
    iget v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, v7, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-ne v0, v1, :cond_e

    add-int/2addr v0, v11

    .line 77
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 78
    :cond_e
    iget-object v0, v7, Lcom/alibaba/fastjson2/l;->g:[B

    iget v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    return-void
.end method

.method public final write0(C)V
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeBase64([B)V
    .locals 10

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    shl-int/2addr v0, v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v3, v2, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

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

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    add-int/lit8 v8, v3, 0x1

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v7, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v3, 0x2

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v7, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v3, 0x3

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v7, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    add-int/lit8 v3, v3, 0x4

    move v5, v6

    goto :goto_0

    :cond_0
    array-length v5, p1

    sub-int/2addr v5, v2

    if-lez v5, :cond_3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v5, v1, :cond_1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v4, p1, 0x2

    :cond_1
    or-int p1, v2, v4

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->v:[C

    shr-int/lit8 v4, p1, 0xc

    aget-char v4, v2, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v2, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v3, 0x2

    const/16 v6, 0x3d

    if-ne v5, v1, :cond_2

    and-int/lit8 p1, p1, 0x3f

    aget-char p1, v2, p1

    int-to-byte p1, p1

    goto :goto_1

    :cond_2
    move p1, v6

    :goto_1
    aput-byte p1, v0, v4

    add-int/lit8 p1, v3, 0x3

    aput-byte v6, v0, p1

    add-int/lit8 v3, v3, 0x4

    :cond_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeBigInt(Ljava/math/BigInteger;J)V
    .locals 3

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

    and-long/2addr p2, v1

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-eqz p2, :cond_2

    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->t:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-ltz p2, :cond_1

    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->u:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p2, p1

    iget-object p3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length p3, p3

    if-lt p2, p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/lang/String;->getBytes(II[BI)V

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeChar(C)V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v3

    aput-byte v4, v1, v0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_3

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_2

    const/16 v4, 0x31

    const/16 v5, 0x75

    const/16 v6, 0x30

    packed-switch p1, :pswitch_data_0

    if-ne p1, v3, :cond_1

    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    int-to-byte v0, v3

    aput-byte v0, v1, p1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    move v2, v0

    goto/16 :goto_3

    :pswitch_0
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x2

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x3

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0x1a

    add-int/lit8 p1, p1, 0x61

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    goto/16 :goto_1

    :pswitch_1
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x2

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x3

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0x10

    add-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    goto :goto_1

    :pswitch_2
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x72

    aput-byte v0, v1, p1

    goto :goto_0

    :pswitch_3
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x66

    aput-byte v0, v1, p1

    goto :goto_0

    :pswitch_4
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x2

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x3

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x4

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 p1, p1, -0xa

    add-int/lit8 p1, p1, 0x61

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    goto :goto_1

    :pswitch_5
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x6e

    aput-byte v0, v1, p1

    goto :goto_0

    :pswitch_6
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x74

    aput-byte v0, v1, p1

    goto :goto_0

    :pswitch_7
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    const/16 v0, 0x62

    aput-byte v0, v1, p1

    :goto_0
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_3

    :pswitch_8
    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v5, v1, v0

    add-int/lit8 v0, v2, 0x2

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x3

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x4

    aput-byte v6, v1, v0

    add-int/lit8 v0, v2, 0x5

    add-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    :goto_1
    add-int/lit8 v2, v2, 0x6

    goto :goto_3

    :cond_2
    aput-byte v0, v1, v2

    add-int/lit8 p1, v2, 0x1

    aput-byte v0, v1, p1

    goto :goto_0

    :cond_3
    const v0, 0xd800

    if-lt p1, v0, :cond_5

    const v0, 0xe000

    if-lt p1, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const/16 v0, 0x7ff

    if-le p1, v0, :cond_6

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0xf

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v2, 0x2

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v2, v2, 0x3

    goto :goto_3

    :cond_6
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    goto :goto_0

    :goto_3
    int-to-byte p1, v3

    aput-byte p1, v1, v2

    add-int/lit8 v2, v2, 0x1

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

.method public writeColon()V
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    const/16 v2, 0x3a

    aput-byte v2, v1, v0

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

    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x2c

    aput-byte v4, v2, v1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0xa

    aput-byte v4, v2, v3

    :goto_1
    move v3, v1

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x9

    aput-byte v4, v2, v3

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

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v3

    aput-byte v4, v2, v0

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

    aput-byte v4, v2, v6

    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v6, p1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v0, 0x4

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    aget p1, v5, p2

    add-int/lit8 p2, v0, 0x5

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, p2

    add-int/lit8 p2, v0, 0x6

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    aget p1, v5, p3

    add-int/lit8 p2, v0, 0x7

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    aget p1, v5, p4

    add-int/lit8 p2, v0, 0x9

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0xa

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    aget p1, v5, p5

    add-int/lit8 p2, v0, 0xb

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0xc

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    aget p1, v5, p6

    add-int/lit8 p2, v0, 0xd

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0xe

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    add-int/lit8 v0, v0, 0xf

    int-to-byte p1, v3

    aput-byte p1, v2, v0

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
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x15

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v3

    aput-byte v4, v2, v0

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

    aput-byte v4, v2, v6

    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v6, p1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v0, 0x4

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    add-int/lit8 p1, v0, 0x5

    const/16 v4, 0x2d

    aput-byte v4, v2, p1

    aget p1, v5, p2

    add-int/lit8 p2, v0, 0x6

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, p2

    add-int/lit8 p2, v0, 0x7

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    add-int/lit8 p1, v0, 0x8

    aput-byte v4, v2, p1

    aget p1, v5, p3

    add-int/lit8 p2, v0, 0x9

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0xa

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    add-int/lit8 p1, v0, 0xb

    const/16 p2, 0x20

    aput-byte p2, v2, p1

    aget p1, v5, p4

    add-int/lit8 p2, v0, 0xc

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0xd

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    add-int/lit8 p1, v0, 0xe

    const/16 p2, 0x3a

    aput-byte p2, v2, p1

    aget p1, v5, p5

    add-int/lit8 p3, v0, 0xf

    shr-int/lit8 p4, p1, 0x8

    int-to-byte p4, p4

    aput-byte p4, v2, p3

    add-int/lit8 p3, v0, 0x10

    int-to-byte p1, p1

    aput-byte p1, v2, p3

    add-int/lit8 p1, v0, 0x11

    aput-byte p2, v2, p1

    aget p1, v5, p6

    add-int/lit8 p2, v0, 0x12

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0x13

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    add-int/lit8 v0, v0, 0x14

    int-to-byte p1, v3

    aput-byte p1, v2, v0

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

    add-int/lit8 v2, v2, 0x19

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-lt v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/2addr v2, v0

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    const/16 v2, 0x2d

    aput-byte v2, v1, p1

    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget p2, v3, p2

    add-int/lit8 v4, p1, 0x1

    shr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, p1, 0x2

    int-to-byte p2, p2

    aput-byte p2, v1, v4

    add-int/lit8 p2, p1, 0x3

    aput-byte v2, v1, p2

    aget p2, v3, p3

    add-int/lit8 p3, p1, 0x4

    shr-int/lit8 v4, p2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, p3

    add-int/lit8 p3, p1, 0x5

    int-to-byte p2, p2

    aput-byte p2, v1, p3

    add-int/lit8 p2, p1, 0x6

    if-eqz p9, :cond_3

    const/16 p3, 0x54

    goto :goto_1

    :cond_3
    const/16 p3, 0x20

    :goto_1
    int-to-byte p3, p3

    aput-byte p3, v1, p2

    aget p2, v3, p4

    add-int/lit8 p3, p1, 0x7

    shr-int/lit8 p4, p2, 0x8

    int-to-byte p4, p4

    aput-byte p4, v1, p3

    add-int/lit8 p3, p1, 0x8

    int-to-byte p2, p2

    aput-byte p2, v1, p3

    add-int/lit8 p2, p1, 0x9

    const/16 p3, 0x3a

    aput-byte p3, v1, p2

    aget p2, v3, p5

    add-int/lit8 p4, p1, 0xa

    shr-int/lit8 p5, p2, 0x8

    int-to-byte p5, p5

    aput-byte p5, v1, p4

    add-int/lit8 p4, p1, 0xb

    int-to-byte p2, p2

    aput-byte p2, v1, p4

    add-int/lit8 p2, p1, 0xc

    aput-byte p3, v1, p2

    aget p2, v3, p6

    add-int/lit8 p4, p1, 0xd

    shr-int/lit8 p5, p2, 0x8

    int-to-byte p5, p5

    aput-byte p5, v1, p4

    add-int/lit8 p4, p1, 0xe

    int-to-byte p2, p2

    aput-byte p2, v1, p4

    add-int/lit8 p1, p1, 0xf

    if-lez p7, :cond_6

    add-int/lit8 p2, p1, 0x1

    const/16 p4, 0x2e

    aput-byte p4, v1, p1

    div-int/lit8 p1, p7, 0xa

    div-int/lit8 p4, p1, 0xa

    mul-int/lit8 p5, p1, 0xa

    sub-int p5, p7, p5

    if-eqz p5, :cond_4

    aget p1, v3, p7

    shr-int/lit8 p4, p1, 0x10

    int-to-byte p4, p4

    aput-byte p4, v1, p2

    add-int/lit8 p4, p2, 0x1

    shr-int/lit8 p5, p1, 0x8

    int-to-byte p5, p5

    aput-byte p5, v1, p4

    add-int/lit8 p4, p2, 0x2

    int-to-byte p1, p1

    aput-byte p1, v1, p4

    add-int/lit8 p1, p2, 0x3

    goto :goto_2

    :cond_4
    mul-int/lit8 p5, p4, 0xa

    sub-int p5, p1, p5

    if-eqz p5, :cond_5

    aget p1, v3, p1

    shr-int/lit8 p4, p1, 0x8

    int-to-byte p4, p4

    aput-byte p4, v1, p2

    add-int/lit8 p4, p2, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, p4

    add-int/lit8 p1, p2, 0x2

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p2, 0x1

    add-int/lit8 p4, p4, 0x30

    int-to-byte p4, p4

    aput-byte p4, v1, p2

    :cond_6
    :goto_2
    if-eqz p9, :cond_a

    div-int/lit16 p2, p8, 0xe10

    if-nez p8, :cond_7

    add-int/lit8 p2, p1, 0x1

    const/16 p3, 0x5a

    aput-byte p3, v1, p1

    move p1, p2

    goto :goto_3

    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ltz p2, :cond_8

    const/16 v2, 0x2b

    :cond_8
    aput-byte v2, v1, p1

    aget p4, v3, p4

    add-int/lit8 p5, p1, 0x1

    shr-int/lit8 p6, p4, 0x8

    int-to-byte p6, p6

    aput-byte p6, v1, p5

    add-int/lit8 p5, p1, 0x2

    int-to-byte p4, p4

    aput-byte p4, v1, p5

    add-int/lit8 p4, p1, 0x3

    aput-byte p3, v1, p4

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

    aput-byte p4, v1, p3

    add-int/lit8 p3, p1, 0x5

    int-to-byte p2, p2

    aput-byte p2, v1, p3

    add-int/lit8 p1, p1, 0x6

    :cond_a
    :goto_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDateYYYMMDD10(III)V
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0xd

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    invoke-static {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result p1

    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeDateYYYMMDD8(III)V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0xa

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v3

    aput-byte v4, v2, v0

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

    aput-byte v4, v2, v6

    add-int/lit8 v4, v0, 0x2

    shr-int/lit8 v6, p1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v0, 0x3

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v0, 0x4

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    aget p1, v5, p2

    add-int/lit8 p2, v0, 0x5

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, p2

    add-int/lit8 p2, v0, 0x6

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    aget p1, v5, p3

    add-int/lit8 p2, v0, 0x7

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    add-int/lit8 v0, v0, 0x9

    int-to-byte p1, v3

    aput-byte p1, v2, v0

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

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/l;->writeRaw(Ljava/lang/String;)V

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

    iget-object v6, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v6, v6

    if-lt p4, v6, :cond_5

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_5
    iget-object p4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    const/16 v6, 0x22

    if-eqz v0, :cond_6

    add-int/lit8 v7, v5, 0x1

    aput-byte v6, p4, v5

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

    invoke-virtual {p1, v1, p2, p4, v5}, Ljava/lang/String;->getBytes(II[BI)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v5, p1

    if-eqz v0, :cond_9

    add-int/lit8 p1, v5, 0x1

    aput-byte v6, p4, v5

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

    add-int/lit8 v3, v2, 0x1a

    .line 3
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    const/16 v4, 0x22

    if-eqz v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 6
    aput-byte v4, v3, v2

    move v2, v5

    .line 7
    :cond_2
    invoke-static {p1, p2, v3, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[BIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    add-int/lit8 p1, v2, 0x1

    .line 8
    aput-byte v4, v3, v2

    move v2, p1

    .line 9
    :cond_3
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
    iget-object v5, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 15
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 17
    aput-byte v6, v4, v3

    .line 18
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 19
    aput-byte v6, v4, v5

    move v5, v3

    :cond_3
    const/16 v3, 0x22

    if-eqz v0, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 20
    aput-byte v3, v4, v5

    move v5, v6

    .line 21
    :cond_4
    aget-wide v6, p1, v1

    .line 22
    invoke-static {v6, v7, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[BIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 23
    aput-byte v3, v4, v5

    move v5, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 24
    aput-byte p1, v4, v5

    add-int/2addr v5, v2

    .line 25
    iput v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

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

    add-int/lit8 v3, v2, 0x11

    .line 3
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    const/16 v3, 0x22

    if-eqz v0, :cond_2

    .line 5
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v5, v2, 0x1

    aput-byte v3, v4, v2

    move v2, v5

    .line 6
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    invoke-static {p1, v4, v2, v1}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[BIZ)I

    move-result p1

    add-int/2addr v2, p1

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v0, v2, 0x1

    aput-byte v3, p1, v2

    move v2, v0

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 14
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 16
    aput-byte v6, v4, v3

    .line 17
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_7

    if-eqz v1, :cond_4

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 18
    aput-byte v6, v4, v5

    move v5, v3

    :cond_4
    const/16 v3, 0x22

    if-eqz v0, :cond_5

    add-int/lit8 v6, v5, 0x1

    .line 19
    aput-byte v3, v4, v5

    move v5, v6

    .line 20
    :cond_5
    aget v6, p1, v1

    .line 21
    invoke-static {v6, v4, v5, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[BIZ)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v0, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 22
    aput-byte v3, v4, v5

    move v5, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/16 p1, 0x5d

    .line 23
    aput-byte p1, v4, v5

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

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x27

    aput-byte v3, v0, v2

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

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v5, v1, 0x1

    if-ge v4, v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    add-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aput-byte v3, v0, v1

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

    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move v1, v3

    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v1, v1

    aput-byte v1, v2, p1

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
    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 21
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move v1, v3

    .line 22
    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 23
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v1, v1

    aput-byte v1, v2, p1

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 6
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5b

    .line 8
    aput-byte v6, v4, v3

    .line 9
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_6

    if-eqz v1, :cond_3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x2c

    .line 10
    aput-byte v6, v4, v5

    move v5, v3

    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v3, v5, 0x1

    .line 11
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    move v5, v3

    .line 12
    :cond_4
    aget v3, p1, v1

    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result v3

    if-eqz v0, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 13
    iget-char v6, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x5d

    .line 14
    aput-byte p1, v4, v5

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
    iget-object v7, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 23
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 24
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson2/l;->g:[B

    if-eqz v2, :cond_3

    add-int/lit8 v7, v3, 0x1

    .line 25
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v8, v8

    aput-byte v8, v6, v3

    move v3, v7

    .line 26
    :cond_3
    invoke-static {v6, v3, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result v3

    if-eqz v2, :cond_4

    add-int/lit8 p1, v3, 0x1

    .line 27
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p2, p2

    aput-byte p2, v6, v3

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
    aput-byte p2, v6, v3

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
    iget-object v5, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 9
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v5, v1, 0x1

    const/16 v7, 0x5b

    .line 10
    aput-byte v7, v4, v1

    move v1, v3

    .line 11
    :goto_2
    array-length v7, p1

    if-ge v1, v7, :cond_9

    if-eqz v1, :cond_4

    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x2c

    .line 12
    aput-byte v8, v4, v5

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

    int-to-byte v11, v11

    aput-byte v11, v4, v5

    move v5, v10

    .line 15
    :cond_7
    invoke-static {v4, v5, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result v5

    if-eqz v9, :cond_8

    add-int/lit8 v7, v5, 0x1

    .line 16
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    move v5, v7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const/16 p1, 0x5d

    .line 17
    aput-byte p1, v4, v5

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

    add-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    if-eqz v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move v1, v3

    :cond_2
    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v1, v1

    aput-byte v1, v2, p1

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

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v1, v2, v0, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result p1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeLocalDateTime(Ljava/time/LocalDateTime;)V
    .locals 5

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x26

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x20

    aput-byte v3, v1, v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public final writeLocalTime(Ljava/time/LocalTime;)V
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x14

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeNameRaw([B)V
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
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

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
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x2c

    .line 8
    aput-byte v4, v1, v0

    .line 9
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    const/16 v4, 0xa

    .line 10
    aput-byte v4, v1, v3

    move v3, v2

    .line 11
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x9

    .line 12
    aput-byte v5, v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 13
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeNameRaw([BII)V
    .locals 2

    .line 15
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->indent:I

    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/l;->writeComma()V

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeNameRaw([C)V
    .locals 0

    .line 23
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeNameRaw([CII)V
    .locals 0

    .line 24
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
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

    add-int/lit8 v1, v1, 0x2d

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v3, v4, v5, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x54

    aput-byte v4, v1, v2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x5a

    aput-byte v2, v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1, p1}, Ljava/lang/String;->getBytes(II[BI)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v1, v0

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

    add-int/lit8 v1, v1, 0x2d

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v3, v2, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x5a

    aput-byte v2, v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1, p1}, Ljava/lang/String;->getBytes(II[BI)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw(C)V
    .locals 3

    const/16 v0, 0x80

    if-gt p1, v0, :cond_1

    .line 20
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void

    .line 23
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeRaw(CC)V
    .locals 3

    const-string v0, "not support "

    const/16 v1, 0x80

    if-gt p1, v1, :cond_2

    if-gt p2, v1, :cond_1

    .line 24
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    .line 25
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 26
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    int-to-byte p1, p2

    .line 28
    aput-byte p1, v2, v1

    add-int/lit8 v0, v0, 0x2

    .line 29
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    .line 30
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 3
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    .line 4
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 8
    aget-char v3, p1, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    .line 9
    aput-byte v3, v1, v0

    :goto_1
    move v0, v4

    goto :goto_3

    :cond_1
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_2

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    .line 10
    aput-byte v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 11
    aput-byte v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 12
    aput-byte v5, v1, v0

    move v0, v4

    :goto_2
    add-int/lit8 v4, v0, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 13
    aput-byte v3, v1, v0

    goto :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeRaw([B)V
    .locals 4

    .line 15
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeReference(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->lastReference:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/fastjson2/l;->h:[B

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->writeRaw([B)V

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/l;->writeString(Ljava/lang/String;)V

    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    const/16 v1, 0x7d

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v0

    .line 4
    :goto_0
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v0

    .line 5
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 6
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    if-nez v5, :cond_3

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v3, v6

    .line 8
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v6, v6

    if-lt v3, v6, :cond_5

    .line 9
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 10
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v6, v2, 0x1

    .line 11
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    move v10, v6

    move v6, v0

    move v0, v10

    .line 12
    :goto_2
    array-length v2, v1

    if-ge v6, v2, :cond_7

    .line 13
    aget-char v2, v1, v6

    .line 14
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v2, v7, :cond_7

    const/16 v7, 0x5c

    if-eq v2, v7, :cond_7

    const/16 v7, 0x20

    if-lt v2, v7, :cond_7

    const/16 v7, 0x7f

    if-gt v2, v7, :cond_7

    if-eqz p1, :cond_6

    const/16 v7, 0x3c

    if-eq v2, v7, :cond_7

    const/16 v7, 0x3e

    if-eq v2, v7, :cond_7

    const/16 v7, 0x28

    if-eq v2, v7, :cond_7

    const/16 v7, 0x29

    if-ne v2, v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v0, 0x1

    int-to-byte v2, v2

    .line 15
    aput-byte v2, v3, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v7

    goto :goto_2

    .line 16
    :cond_7
    :goto_3
    array-length v2, v1

    if-ne v6, v2, :cond_8

    .line 17
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    add-int/2addr v0, v4

    .line 18
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    .line 19
    :cond_8
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 20
    array-length v0, v1

    if-ge v6, v0, :cond_9

    .line 21
    array-length v2, v1

    move-object v0, p0

    move v3, p1

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/l;->H([CIZZI)V

    .line 22
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method

.method public writeString([C)V
    .locals 13

    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

    .line 24
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

    move v10, v6

    goto :goto_0

    :cond_1
    move v10, v3

    .line 25
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v11, v6

    goto :goto_1

    :cond_2
    move v11, v3

    .line 26
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 27
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    if-nez v11, :cond_3

    if-eqz v10, :cond_4

    .line 28
    :cond_3
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 29
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_5

    .line 30
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 31
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v2, v0, 0x1

    .line 32
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    move v12, v3

    .line 33
    :goto_2
    array-length v0, p1

    if-ge v12, v0, :cond_7

    .line 34
    aget-char v0, p1, v12

    .line 35
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v0, v3, :cond_7

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_7

    const/16 v3, 0x20

    if-lt v0, v3, :cond_7

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_7

    if-eqz v10, :cond_6

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_7

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_7

    const/16 v3, 0x28

    if-eq v0, v3, :cond_7

    const/16 v3, 0x29

    if-ne v0, v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    .line 36
    aput-byte v0, v1, v2

    add-int/lit8 v12, v12, 0x1

    move v2, v3

    goto :goto_2

    .line 37
    :cond_7
    :goto_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    .line 38
    array-length v0, p1

    sub-int/2addr v0, v12

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    .line 39
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v0, v0

    if-lt v2, v0, :cond_8

    .line 40
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 41
    :cond_8
    array-length v0, p1

    if-ge v12, v0, :cond_9

    .line 42
    array-length v9, p1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson2/l;->H([CIZZI)V

    .line 43
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method

.method public writeString([CII)V
    .locals 10

    if-nez p1, :cond_1

    .line 44
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/l;->writeString(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_1
    add-int v2, p2, p3

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v4

    .line 48
    :goto_0
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    move v4, v7

    .line 49
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    mul-int/lit8 p3, p3, 0x3

    add-int v1, v0, p3

    add-int/lit8 v1, v1, 0x2

    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    add-int/2addr v1, p3

    .line 50
    :cond_5
    iget-object p3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length p3, p3

    if-lt v1, p3, :cond_6

    .line 51
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 52
    :cond_6
    iget-object p3, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v1, v0, 0x1

    .line 53
    iget-char v5, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    move v5, p2

    :goto_1
    if-ge v5, v2, :cond_8

    .line 54
    aget-char p2, p1, v5

    .line 55
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq p2, v0, :cond_8

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_8

    const/16 v0, 0x20

    if-lt p2, v0, :cond_8

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_8

    if-eqz v3, :cond_7

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_8

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_8

    const/16 v0, 0x28

    if-eq p2, v0, :cond_8

    const/16 v0, 0x29

    if-ne p2, v0, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    int-to-byte p2, p2

    .line 56
    aput-byte p2, p3, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_1

    .line 57
    :cond_8
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    sub-int p2, v2, v5

    mul-int/lit8 p2, p2, 0x6

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x2

    .line 58
    iget-object p2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length p2, p2

    if-lt v1, p2, :cond_9

    .line 59
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_9
    if-ge v5, v2, :cond_a

    move-object v0, p0

    move-object v1, p1

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/l;->H([CIZZI)V

    .line 61
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    iget-char p0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public writeString([CIIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 62
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 63
    :goto_0
    iget v5, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    const/4 v6, 0x2

    add-int/2addr v5, v6

    if-eqz v3, :cond_1

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v5, v7

    .line 64
    :cond_1
    iget-object v7, v0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v7, v7

    if-lt v5, v7, :cond_2

    .line 65
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/l;->j(I)V

    .line 66
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson2/l;->g:[B

    .line 67
    iget v7, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-eqz p4, :cond_3

    add-int/lit8 v8, v7, 0x1

    .line 68
    iget-char v9, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    :cond_3
    add-int v8, p2, v2

    move v9, v7

    move/from16 v7, p2

    :goto_1
    const/16 v10, 0x7f

    const/16 v11, 0x5c

    if-ge v7, v8, :cond_5

    .line 69
    aget-char v12, v1, v7

    .line 70
    iget-char v13, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-eq v12, v13, :cond_5

    if-eq v12, v11, :cond_5

    const/16 v13, 0x20

    if-lt v12, v13, :cond_5

    if-le v12, v10, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v9, 0x1

    int-to-byte v11, v12

    .line 71
    aput-byte v11, v5, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v10

    goto :goto_1

    :cond_5
    :goto_2
    if-ne v7, v8, :cond_7

    if-eqz p4, :cond_6

    add-int/lit8 v1, v9, 0x1

    .line 72
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v2, v2

    aput-byte v2, v5, v9

    move v9, v1

    .line 73
    :cond_6
    iput v9, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :cond_7
    :goto_3
    if-ge v7, v2, :cond_12

    .line 74
    aget-char v8, v1, v7

    const/16 v12, 0x75

    if-gt v8, v10, :cond_a

    if-eq v8, v11, :cond_9

    const/16 v13, 0x31

    const/16 v14, 0x30

    packed-switch v8, :pswitch_data_0

    .line 75
    iget-char v12, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-ne v8, v12, :cond_8

    .line 76
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    int-to-byte v12, v12

    .line 77
    aput-byte v12, v5, v8

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v12, v9, 0x1

    int-to-byte v8, v8

    .line 78
    aput-byte v8, v5, v9

    move v9, v12

    goto/16 :goto_8

    .line 79
    :pswitch_0
    aput-byte v11, v5, v9

    add-int/lit8 v15, v9, 0x1

    .line 80
    aput-byte v12, v5, v15

    add-int/lit8 v12, v9, 0x2

    .line 81
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 82
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 83
    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x5

    add-int/lit8 v8, v8, -0x1a

    add-int/lit8 v8, v8, 0x61

    int-to-byte v8, v8

    .line 84
    aput-byte v8, v5, v12

    goto/16 :goto_5

    .line 85
    :pswitch_1
    aput-byte v11, v5, v9

    add-int/lit8 v15, v9, 0x1

    .line 86
    aput-byte v12, v5, v15

    add-int/lit8 v12, v9, 0x2

    .line 87
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 88
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 89
    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x5

    add-int/lit8 v8, v8, -0x10

    add-int/2addr v8, v14

    int-to-byte v8, v8

    .line 90
    aput-byte v8, v5, v12

    goto/16 :goto_5

    .line 91
    :pswitch_2
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x72

    .line 92
    aput-byte v12, v5, v8

    goto :goto_4

    .line 93
    :pswitch_3
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x66

    .line 94
    aput-byte v12, v5, v8

    goto :goto_4

    .line 95
    :pswitch_4
    aput-byte v11, v5, v9

    add-int/lit8 v13, v9, 0x1

    .line 96
    aput-byte v12, v5, v13

    add-int/lit8 v12, v9, 0x2

    .line 97
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 98
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 99
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x5

    add-int/lit8 v8, v8, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-byte v8, v8

    .line 100
    aput-byte v8, v5, v12

    goto/16 :goto_5

    .line 101
    :pswitch_5
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x6e

    .line 102
    aput-byte v12, v5, v8

    goto :goto_4

    .line 103
    :pswitch_6
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x74

    .line 104
    aput-byte v12, v5, v8

    goto :goto_4

    .line 105
    :pswitch_7
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    const/16 v12, 0x62

    .line 106
    aput-byte v12, v5, v8

    :goto_4
    add-int/lit8 v9, v9, 0x2

    goto/16 :goto_8

    .line 107
    :pswitch_8
    aput-byte v11, v5, v9

    add-int/lit8 v13, v9, 0x1

    .line 108
    aput-byte v12, v5, v13

    add-int/lit8 v12, v9, 0x2

    .line 109
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    .line 110
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    .line 111
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x5

    add-int/lit8 v8, v8, 0x30

    int-to-byte v8, v8

    .line 112
    aput-byte v8, v5, v12

    goto :goto_5

    .line 113
    :cond_9
    aput-byte v11, v5, v9

    add-int/lit8 v8, v9, 0x1

    .line 114
    aput-byte v11, v5, v8

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    .line 115
    aput-byte v11, v5, v9

    add-int/lit8 v13, v9, 0x1

    .line 116
    aput-byte v12, v5, v13

    add-int/lit8 v12, v9, 0x2

    .line 117
    sget-object v13, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v14, v8, 0xc

    and-int/lit8 v14, v14, 0xf

    aget-char v14, v13, v14

    int-to-byte v14, v14

    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x3

    ushr-int/lit8 v14, v8, 0x8

    and-int/lit8 v14, v14, 0xf

    .line 118
    aget-char v14, v13, v14

    int-to-byte v14, v14

    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x4

    ushr-int/lit8 v14, v8, 0x4

    and-int/lit8 v14, v14, 0xf

    .line 119
    aget-char v14, v13, v14

    int-to-byte v14, v14

    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x5

    and-int/lit8 v8, v8, 0xf

    .line 120
    aget-char v8, v13, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v12

    :goto_5
    add-int/lit8 v9, v9, 0x6

    goto/16 :goto_8

    :cond_b
    const v12, 0xd800

    const/16 v13, 0x3f

    if-lt v8, v12, :cond_10

    const v12, 0xe000

    if-ge v8, v12, :cond_10

    const v14, 0xdc00

    if-ge v8, v14, :cond_f

    .line 121
    array-length v15, v1

    sub-int/2addr v15, v7

    if-ge v15, v6, :cond_c

    const/4 v8, -0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v15, v7, 0x1

    .line 122
    aget-char v15, v1, v15

    if-lt v15, v14, :cond_e

    if-ge v15, v12, :cond_e

    shl-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v15

    const v12, -0x35fdc00

    add-int/2addr v8, v12

    :goto_6
    if-gez v8, :cond_d

    add-int/lit8 v8, v9, 0x1

    .line 123
    aput-byte v13, v5, v9

    goto :goto_7

    :cond_d
    shr-int/lit8 v12, v8, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    .line 124
    aput-byte v12, v5, v9

    add-int/lit8 v12, v9, 0x1

    shr-int/lit8 v14, v8, 0xc

    and-int/2addr v14, v13

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    .line 125
    aput-byte v14, v5, v12

    add-int/lit8 v12, v9, 0x2

    shr-int/lit8 v14, v8, 0x6

    and-int/2addr v13, v14

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    .line 126
    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x3

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 127
    aput-byte v8, v5, v12

    add-int/lit8 v8, v9, 0x4

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v8, v9, 0x1

    .line 128
    aput-byte v13, v5, v9

    goto :goto_7

    :cond_f
    add-int/lit8 v8, v9, 0x1

    .line 129
    aput-byte v13, v5, v9

    :goto_7
    move v9, v8

    goto :goto_8

    :cond_10
    const/16 v12, 0x7ff

    if-le v8, v12, :cond_11

    shr-int/lit8 v12, v8, 0xc

    and-int/lit8 v12, v12, 0xf

    or-int/lit16 v12, v12, 0xe0

    int-to-byte v12, v12

    .line 130
    aput-byte v12, v5, v9

    add-int/lit8 v12, v9, 0x1

    shr-int/lit8 v14, v8, 0x6

    and-int/2addr v13, v14

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    .line 131
    aput-byte v13, v5, v12

    add-int/lit8 v12, v9, 0x2

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 132
    aput-byte v8, v5, v12

    add-int/lit8 v9, v9, 0x3

    goto :goto_8

    :cond_11
    shr-int/lit8 v12, v8, 0x6

    and-int/lit8 v12, v12, 0x1f

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    .line 133
    aput-byte v12, v5, v9

    add-int/lit8 v12, v9, 0x1

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 134
    aput-byte v8, v5, v12

    goto/16 :goto_4

    :goto_8
    add-int/2addr v7, v4

    goto/16 :goto_3

    :cond_12
    if-eqz p4, :cond_13

    add-int/lit8 v1, v9, 0x1

    .line 135
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v2, v2

    aput-byte v2, v5, v9

    move v9, v1

    .line 136
    :cond_13
    iput v9, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

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
.end method

.method public writeString([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/l;->startArray()V

    const/4 v0, 0x0

    .line 139
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/l;->writeComma()V

    .line 141
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 142
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 143
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/l;->endArray()V

    return-void
.end method

.method public writeStringLatin1([B)V
    .locals 7

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
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v3, v3

    move v4, v1

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_4

    aget-byte v5, p1, v4

    if-eq v5, v3, :cond_3

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_3

    if-eqz v0, :cond_2

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x28

    if-eq v5, v6, :cond_3

    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iget v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    if-nez v0, :cond_6

    array-length v0, p1

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    iget-object v5, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v5, v5

    if-lt v0, v5, :cond_5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/l;->g:[B

    aput-byte v3, v0, v4

    add-int/lit8 v5, v4, 0x1

    array-length v6, p1

    invoke-static {p1, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p1, v2

    add-int/2addr v4, p1

    aput-byte v3, v0, v4

    add-int/2addr v4, v2

    iput v4, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/l;->w([B)V

    return-void
.end method

.method public writeStringUTF16([B)V
    .locals 13

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    return-void

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

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v1

    const/4 v5, 0x2

    add-int/2addr v4, v5

    if-eqz v2, :cond_3

    array-length v7, p1

    mul-int/2addr v7, v5

    add-int/2addr v4, v7

    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v7, v7

    if-lt v4, v7, :cond_4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v7, v1, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    :goto_2
    array-length v1, p1

    if-ge v3, v1, :cond_11

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, p1, v1

    const/16 v9, 0x75

    const/16 v10, 0x5c

    if-nez v1, :cond_9

    if-ltz v3, :cond_9

    const/16 v1, 0x28

    const/16 v11, 0x30

    if-eq v3, v1, :cond_7

    const/16 v1, 0x29

    if-eq v3, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v3, v1, :cond_7

    const/16 v1, 0x3e

    if-eq v3, v1, :cond_7

    if-eq v3, v10, :cond_6

    const/16 v1, 0x31

    packed-switch v3, :pswitch_data_0

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    if-ne v3, v1, :cond_5

    aput-byte v10, v4, v7

    add-int/lit8 v3, v7, 0x1

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v1, v7, 0x1

    aput-byte v3, v4, v7

    goto/16 :goto_6

    :pswitch_0
    aput-byte v10, v4, v7

    add-int/lit8 v10, v7, 0x1

    aput-byte v9, v4, v10

    add-int/lit8 v9, v7, 0x2

    aput-byte v11, v4, v9

    add-int/lit8 v9, v7, 0x3

    aput-byte v11, v4, v9

    add-int/lit8 v9, v7, 0x4

    aput-byte v1, v4, v9

    add-int/lit8 v1, v7, 0x5

    add-int/lit8 v3, v3, -0x1a

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    goto/16 :goto_4

    :pswitch_1
    aput-byte v10, v4, v7

    add-int/lit8 v10, v7, 0x1

    aput-byte v9, v4, v10

    add-int/lit8 v9, v7, 0x2

    aput-byte v11, v4, v9

    add-int/lit8 v9, v7, 0x3

    aput-byte v11, v4, v9

    add-int/lit8 v9, v7, 0x4

    aput-byte v1, v4, v9

    add-int/lit8 v1, v7, 0x5

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v11

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    goto/16 :goto_4

    :pswitch_2
    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    const/16 v3, 0x72

    aput-byte v3, v4, v1

    goto/16 :goto_3

    :pswitch_3
    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    const/16 v3, 0x66

    aput-byte v3, v4, v1

    goto/16 :goto_3

    :pswitch_4
    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    aput-byte v9, v4, v1

    add-int/lit8 v1, v7, 0x2

    aput-byte v11, v4, v1

    add-int/lit8 v1, v7, 0x3

    aput-byte v11, v4, v1

    add-int/lit8 v1, v7, 0x4

    aput-byte v11, v4, v1

    add-int/lit8 v1, v7, 0x5

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    goto/16 :goto_4

    :pswitch_5
    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    const/16 v3, 0x6e

    aput-byte v3, v4, v1

    goto/16 :goto_3

    :pswitch_6
    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    const/16 v3, 0x74

    aput-byte v3, v4, v1

    goto/16 :goto_3

    :pswitch_7
    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    const/16 v3, 0x62

    aput-byte v3, v4, v1

    goto :goto_3

    :pswitch_8
    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    aput-byte v9, v4, v1

    add-int/lit8 v1, v7, 0x2

    aput-byte v11, v4, v1

    add-int/lit8 v1, v7, 0x3

    aput-byte v11, v4, v1

    add-int/lit8 v1, v7, 0x4

    aput-byte v11, v4, v1

    add-int/lit8 v1, v7, 0x5

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    goto/16 :goto_4

    :cond_6
    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    aput-byte v10, v4, v1

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    aput-byte v10, v4, v7

    add-int/lit8 v1, v7, 0x1

    aput-byte v9, v4, v1

    add-int/lit8 v1, v7, 0x2

    aput-byte v11, v4, v1

    add-int/lit8 v1, v7, 0x3

    aput-byte v11, v4, v1

    add-int/lit8 v1, v7, 0x4

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v10, v3, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v9, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v1

    add-int/lit8 v1, v7, 0x5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v9, v3

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v7, 0x1

    aput-byte v3, v4, v7

    goto/16 :goto_6

    :cond_9
    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    int-to-char v1, v1

    const/16 v3, 0x800

    if-ge v1, v3, :cond_a

    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v4, v7

    add-int/lit8 v3, v7, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    :goto_3
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_7

    :cond_a
    if-eqz v2, :cond_b

    aput-byte v10, v4, v7

    add-int/lit8 v3, v7, 0x1

    aput-byte v9, v4, v3

    add-int/lit8 v3, v7, 0x2

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter;->e:[C

    ushr-int/lit8 v10, v1, 0xc

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v9, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    add-int/lit8 v3, v7, 0x3

    ushr-int/lit8 v10, v1, 0x8

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v9, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    add-int/lit8 v3, v7, 0x4

    ushr-int/lit8 v10, v1, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v9, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    add-int/lit8 v3, v7, 0x5

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v9, v1

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    :goto_4
    add-int/lit8 v7, v7, 0x6

    goto/16 :goto_7

    :cond_b
    const v3, 0xd800

    const/16 v9, 0x3f

    if-lt v1, v3, :cond_10

    const v3, 0xe000

    if-ge v1, v3, :cond_10

    add-int/lit8 v10, v8, -0x1

    const v11, 0xdc00

    if-ge v1, v11, :cond_f

    array-length v12, p1

    sub-int/2addr v12, v10

    if-ge v12, v5, :cond_c

    const/4 v1, -0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p1, v12

    add-int/lit8 v10, v10, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v12

    int-to-char v10, v10

    if-lt v10, v11, :cond_e

    if-ge v10, v3, :cond_e

    add-int/lit8 v8, v8, 0x2

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v10

    const v3, -0x35fdc00

    add-int/2addr v1, v3

    :goto_5
    if-gez v1, :cond_d

    add-int/lit8 v1, v7, 0x1

    aput-byte v9, v4, v7

    goto :goto_6

    :cond_d
    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v4, v7

    add-int/lit8 v3, v7, 0x1

    shr-int/lit8 v10, v1, 0xc

    and-int/2addr v10, v9

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    add-int/lit8 v3, v7, 0x2

    shr-int/lit8 v10, v1, 0x6

    and-int/2addr v9, v10

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    add-int/lit8 v3, v7, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    add-int/lit8 v1, v7, 0x4

    goto :goto_6

    :cond_e
    add-int/lit8 v1, v7, 0x1

    aput-byte v9, v4, v7

    goto :goto_6

    :cond_f
    add-int/lit8 v1, v7, 0x1

    aput-byte v9, v4, v7

    :goto_6
    move v7, v1

    :goto_7
    move v3, v8

    goto/16 :goto_2

    :cond_10
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v4, v7

    add-int/lit8 v3, v7, 0x1

    shr-int/lit8 v10, v1, 0x6

    and-int/2addr v9, v10

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    add-int/lit8 v3, v7, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    add-int/lit8 v7, v7, 0x3

    goto :goto_7

    :cond_11
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v4, v7

    add-int/2addr v7, v6

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
.end method

.method public writeTimeHHMMSS8(III)V
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    add-int/lit8 v1, v0, 0xa

    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/l;->g:[B

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v4, v3

    aput-byte v4, v2, v0

    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K:[I

    aget p1, v4, p1

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v5, v0, 0x2

    int-to-byte p1, p1

    aput-byte p1, v2, v5

    add-int/lit8 p1, v0, 0x3

    const/16 v5, 0x3a

    aput-byte v5, v2, p1

    aget p1, v4, p2

    add-int/lit8 p2, v0, 0x4

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, p2

    add-int/lit8 p2, v0, 0x5

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    add-int/lit8 p1, v0, 0x6

    aput-byte v5, v2, p1

    aget p1, v4, p3

    add-int/lit8 p2, v0, 0x7

    shr-int/lit8 p3, p1, 0x8

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, v2, p2

    add-int/lit8 v0, v0, 0x9

    int-to-byte p1, v3

    aput-byte p1, v2, v0

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

    iget-object v6, v0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v6, v6

    if-lt v5, v6, :cond_1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_1
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->G:[C

    iget-object v6, v0, Lcom/alibaba/fastjson2/l;->g:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    const/16 v8, 0x22

    aput-byte v8, v6, v7

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

    aput-byte v0, v6, v5

    add-int/lit8 v0, v7, 0x2

    int-to-byte v5, v10

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x3

    shr-int/lit8 v5, v18, 0x8

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x4

    move/from16 v5, v18

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x5

    shr-int/lit8 v5, v16, 0x8

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x6

    move/from16 v5, v16

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x7

    shr-int/lit8 v5, v13, 0x8

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x8

    int-to-byte v5, v13

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x9

    const/16 v5, 0x2d

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0xa

    shr-int/lit8 v10, v2, 0x8

    int-to-byte v10, v10

    aput-byte v10, v6, v0

    add-int/lit8 v0, v7, 0xb

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v7, 0xc

    shr-int/lit8 v2, v14, 0x8

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v7, 0xd

    int-to-byte v2, v14

    aput-byte v2, v6, v0

    add-int/lit8 v0, v7, 0xe

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0xf

    shr-int/lit8 v2, v8, 0x8

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v7, 0x10

    int-to-byte v2, v8

    aput-byte v2, v6, v0

    add-int/lit8 v0, v7, 0x11

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v7, 0x12

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x13

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x14

    shr-int/lit8 v1, v9, 0x8

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x15

    int-to-byte v1, v9

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x16

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x17

    move/from16 v1, p1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x18

    aput-byte v5, v6, v0

    add-int/lit8 v0, v7, 0x19

    shr-int/lit8 v1, v17, 0x8

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x1a

    move/from16 v1, v17

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x1b

    shr-int/lit8 v1, v11, 0x8

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x1c

    int-to-byte v1, v11

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x1d

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x1e

    int-to-byte v1, v4

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x1f

    shr-int/lit8 v1, v12, 0x8

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x20

    int-to-byte v1, v12

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x21

    shr-int/lit8 v1, v15, 0x8

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x22

    int-to-byte v1, v15

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x23

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x24

    int-to-byte v1, v3

    aput-byte v1, v6, v0

    add-int/lit8 v0, v7, 0x25

    const/16 v1, 0x22

    aput-byte v1, v6, v0

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

    iget-object v10, p0, Lcom/alibaba/fastjson2/l;->g:[B

    array-length v10, v10

    if-lt v9, v10, :cond_6

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/l;->j(I)V

    :cond_6
    iget-object v9, p0, Lcom/alibaba/fastjson2/l;->g:[B

    add-int/lit8 v10, v6, 0x1

    iget-char v11, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte v11, v11

    aput-byte v11, v9, v6

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalDate;->getYear()I

    move-result v11

    invoke-virtual {v6}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v12

    invoke-virtual {v6}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v6

    invoke-static {v9, v10, v11, v12, v6}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalDate([BIIII)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    const/16 v11, 0x54

    aput-byte v11, v9, v6

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {v9, v10, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BILjava/time/LocalTime;)I

    move-result p1

    if-ne v3, v8, :cond_7

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x5a

    aput-byte v1, v9, p1

    goto :goto_3

    :cond_7
    if-eq v0, v5, :cond_9

    if-ne v0, v4, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v0, p1, 0x1

    const/16 v3, 0x5b

    aput-byte v3, v9, p1

    invoke-virtual {v1, v7, v2, v9, v0}, Ljava/lang/String;->getBytes(II[BI)V

    add-int/2addr v0, v2

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x5d

    aput-byte v1, v9, v0

    move v0, p1

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {v1, v7, v2, v9, p1}, Ljava/lang/String;->getBytes(II[BI)V

    add-int v0, p1, v2

    :goto_3
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    int-to-byte p1, p1

    aput-byte p1, v9, v0

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I

    return-void
.end method
