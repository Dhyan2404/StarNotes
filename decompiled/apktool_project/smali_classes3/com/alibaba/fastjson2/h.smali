.class public final Lcom/alibaba/fastjson2/h;
.super Lcom/alibaba/fastjson2/JSONReader;
.source "SourceFile"


# instance fields
.field public J:I

.field public O:I

.field public Q:I

.field public Z:I

.field public k0:Ljava/io/Closeable;

.field public q0:I

.field public final v:Ljava/lang/String;

.field public final w:[C

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 10

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lcom/alibaba/fastjson2/h;->q0:I

    .line 99
    iput-object p2, p0, Lcom/alibaba/fastjson2/h;->k0:Ljava/io/Closeable;

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->A:[Lcom/alibaba/fastjson2/JSONFactory$b;

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v2, v4

    .line 101
    aget-object v2, v3, v2

    .line 102
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->D:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_0

    .line 103
    iget v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    new-array v3, v3, [B

    :cond_0
    move v6, v0

    .line 104
    :cond_1
    :goto_0
    :try_start_0
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-virtual {p2, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_a

    .line 105
    rem-int/lit8 p1, v6, 0x2

    if-eq p1, v5, :cond_9

    .line 106
    div-int/lit8 p1, v6, 0x2

    new-array p2, p1, [C

    move v1, v0

    move v7, v1

    :goto_1
    if-ge v1, v6, :cond_2

    .line 107
    aget-byte v8, v3, v1

    add-int/lit8 v9, v1, 0x1

    .line 108
    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v9

    int-to-char v8, v8

    .line 109
    aput-char v8, p2, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 110
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->D:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    iput-object v4, p0, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/alibaba/fastjson2/h;->w:[C

    .line 113
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 114
    iput p1, p0, Lcom/alibaba/fastjson2/h;->x:I

    .line 115
    iput v0, p0, Lcom/alibaba/fastjson2/h;->y:I

    .line 116
    iput p1, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v1, 0x1a

    if-nez p1, :cond_3

    .line 117
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 118
    :cond_3
    aget-char v2, p2, v0

    :goto_2
    const/16 v3, 0x20

    if-gt v2, v3, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v6, 0x100003700L

    and-long/2addr v3, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_5

    add-int/2addr v0, v5

    if-lt v0, p1, :cond_4

    .line 119
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 120
    :cond_4
    aget-char v2, p2, v0

    goto :goto_2

    .line 121
    :cond_5
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 122
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p1, 0xfffe

    if-eq v2, p1, :cond_6

    const p1, 0xfeff

    if-ne v2, p1, :cond_7

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    .line 124
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_8
    return-void

    .line 126
    :cond_9
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal input utf16 bytes, length "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/2addr v6, v7

    .line 127
    array-length v7, v3

    if-ne v6, v7, :cond_1

    .line 128
    array-length v7, v3

    iget v8, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    add-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 129
    :try_start_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "read error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :goto_3
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->D:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    throw p0
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/Reader;)V
    .locals 6

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/alibaba/fastjson2/h;->q0:I

    .line 27
    iput-object p2, p0, Lcom/alibaba/fastjson2/h;->k0:Ljava/io/Closeable;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->A:[Lcom/alibaba/fastjson2/JSONFactory$b;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson2/h;->q0:I

    .line 29
    aget-object v1, v2, v1

    .line 30
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    new-array v1, v1, [C

    :cond_0
    move v2, v0

    .line 31
    :cond_1
    :goto_0
    :try_start_0
    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_8

    .line 32
    iput-object v3, p0, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    .line 34
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 35
    iput v2, p0, Lcom/alibaba/fastjson2/h;->x:I

    .line 36
    iput v0, p0, Lcom/alibaba/fastjson2/h;->y:I

    .line 37
    iput v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 p1, 0x1a

    if-gtz v2, :cond_2

    .line 38
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 39
    :cond_2
    aget-char p2, v1, v0

    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 40
    :goto_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x20

    if-gt p2, v0, :cond_4

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p2

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 41
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 42
    iget v0, p0, Lcom/alibaba/fastjson2/h;->x:I

    if-lt p2, v0, :cond_3

    .line 43
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 44
    :cond_3
    aget-char p2, v1, p2

    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_1

    .line 45
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p1, 0xfffe

    if-eq p2, p1, :cond_5

    const p1, 0xfeff

    if-ne p2, p1, :cond_6

    .line 46
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    .line 47
    :cond_6
    :goto_2
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_7

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    add-int/2addr v2, v4

    .line 49
    :try_start_1
    array-length v4, v1

    if-ne v2, v4, :cond_1

    .line 50
    array-length v4, v1

    shr-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v5

    .line 51
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "read error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V
    .locals 5

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/alibaba/fastjson2/h;->q0:I

    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->A:[Lcom/alibaba/fastjson2/JSONFactory$b;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/fastjson2/h;->q0:I

    .line 56
    aget-object p1, v1, p1

    .line 57
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    if-eqz v3, :cond_0

    .line 58
    array-length v4, v3

    if-ge v4, p4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/16 p1, 0x2000

    .line 60
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v3, p1, [C

    :cond_2
    add-int p1, p3, p4

    .line 61
    invoke-virtual {p2, p3, p1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, v2

    .line 62
    :goto_0
    iput-object p2, p0, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    .line 63
    iput-object v3, p0, Lcom/alibaba/fastjson2/h;->w:[C

    .line 64
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 65
    iput p4, p0, Lcom/alibaba/fastjson2/h;->x:I

    .line 66
    iput v0, p0, Lcom/alibaba/fastjson2/h;->y:I

    .line 67
    iput p4, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 p1, 0x1a

    if-gtz p4, :cond_4

    .line 68
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 69
    :cond_4
    aget-char p2, v3, v0

    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 70
    :goto_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x20

    if-gt p2, p3, :cond_6

    const-wide/16 p3, 0x1

    shl-long/2addr p3, p2

    const-wide v0, 0x100003700L

    and-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_6

    .line 71
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 72
    iget p3, p0, Lcom/alibaba/fastjson2/h;->x:I

    if-lt p2, p3, :cond_5

    .line 73
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 74
    :cond_5
    aget-char p2, v3, p2

    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_1

    .line 75
    :cond_6
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p1, 0xfffe

    if-eq p2, p1, :cond_7

    const p1, 0xfeff

    if-ne p2, p1, :cond_8

    .line 76
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    .line 77
    :cond_8
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_9

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_9
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V
    .locals 4

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/alibaba/fastjson2/h;->q0:I

    .line 81
    iput-object p2, p0, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/alibaba/fastjson2/h;->w:[C

    .line 83
    iput p4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 84
    iput p5, p0, Lcom/alibaba/fastjson2/h;->x:I

    .line 85
    iput p4, p0, Lcom/alibaba/fastjson2/h;->y:I

    add-int p1, p4, p5

    .line 86
    iput p1, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 p2, 0x1a

    if-lt p4, p1, :cond_0

    .line 87
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 88
    :cond_0
    aget-char p1, p3, p4

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 89
    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p4, 0x20

    if-gt p1, p4, :cond_2

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    const-wide v2, 0x100003700L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_2

    .line 90
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-lt p1, p5, :cond_1

    .line 91
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 92
    :cond_1
    aget-char p1, p3, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_0

    .line 93
    :cond_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p2, 0xfffe

    if-eq p1, p2, :cond_3

    const p2, 0xfeff

    if-ne p1, p2, :cond_4

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    .line 95
    :cond_4
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/alibaba/fastjson2/h;->q0:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    .line 4
    div-int/lit8 p1, p4, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    add-int p1, p3, p4

    move v1, p3

    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    aget-byte v2, p2, v1

    add-int/lit8 v3, v1, 0x1

    .line 6
    aget-byte v3, p2, v3

    .line 7
    iget-object v4, p0, Lcom/alibaba/fastjson2/h;->w:[C

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v4, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput p3, p0, Lcom/alibaba/fastjson2/h;->y:I

    .line 9
    iput v0, p0, Lcom/alibaba/fastjson2/h;->x:I

    iput v0, p0, Lcom/alibaba/fastjson2/h;->z:I

    .line 10
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 p2, 0x1a

    if-lt p1, v0, :cond_1

    .line 11
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 12
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char p1, p3, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 13
    :goto_1
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const-wide/16 v0, 0x0

    const-wide v2, 0x100003700L

    const-wide/16 v4, 0x1

    const/16 p3, 0x20

    if-gt p1, p3, :cond_3

    shl-long v6, v4, p1

    and-long/2addr v6, v2

    cmp-long p1, v6, v0

    if-eqz p1, :cond_3

    .line 14
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-lt p1, p4, :cond_2

    .line 15
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 16
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char p1, p3, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_1

    .line 17
    :cond_3
    :goto_2
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-gt p1, p3, :cond_5

    shl-long v6, v4, p1

    and-long/2addr v6, v2

    cmp-long v6, v6, v0

    if-eqz v6, :cond_5

    .line 18
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-lt p1, p4, :cond_4

    .line 19
    iput-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    .line 20
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char p1, v6, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_2

    .line 21
    :cond_5
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const p2, 0xfffe

    if-eq p1, p2, :cond_6

    const p2, 0xfeff

    if-ne p1, p2, :cond_7

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    .line 23
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson2/h;->q0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    array-length v2, v1

    const/high16 v3, 0x100000

    if-ge v2, v3, :cond_0

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->A:[Lcom/alibaba/fastjson2/JSONFactory$b;

    aget-object v0, v2, v0

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/h;->k0:Ljava/io/Closeable;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/h;->J:I

    iget p0, p0, Lcom/alibaba/fastjson2/h;->O:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v2, p0, Lcom/alibaba/fastjson2/h;->J:I

    iget p0, p0, Lcom/alibaba/fastjson2/h;->O:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/h;->Q:I

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v2, p0, Lcom/alibaba/fastjson2/h;->J:I

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson2/h;->O:I

    if-ge v2, v4, :cond_6

    aget-char v4, v1, v2

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    aget-char v4, v1, v2

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x40

    if-eq v4, v5, :cond_5

    if-eq v4, v6, :cond_5

    const/16 v5, 0x75

    if-eq v4, v5, :cond_3

    const/16 v5, 0x78

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v2, 0x1

    aget-char v4, v1, v4

    add-int/lit8 v2, v2, 0x2

    aget-char v5, v1, v2

    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v4

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v2, 0x1

    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    aget-char v6, v1, v6

    add-int/lit8 v2, v2, 0x4

    aget-char v7, v1, v2

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v4

    goto :goto_1

    :cond_4
    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    :pswitch_0
    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    iget v1, v0, Lcom/alibaba/fastjson2/h;->J:I

    iget-object v2, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :goto_0
    iget v8, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v10, 0x27

    const/16 v11, 0x41

    const/16 v12, 0x2d

    const/16 v13, 0x5f

    const/16 v14, 0x78

    const/16 v15, 0x75

    const/16 v3, 0x5c

    const/16 v4, 0x22

    const/16 v9, 0x20

    if-ge v1, v8, :cond_9

    aget-char v8, v2, v1

    if-ne v8, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    aget-char v8, v2, v1

    if-eq v8, v15, :cond_1

    if-eq v8, v14, :cond_0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v8

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v1, 0x1

    aget-char v8, v2, v8

    add-int/lit8 v1, v1, 0x2

    aget-char v14, v2, v1

    invoke-static {v8, v14}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v8

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v1, 0x1

    aget-char v8, v2, v8

    add-int/lit8 v14, v1, 0x2

    aget-char v14, v2, v14

    add-int/lit8 v17, v1, 0x3

    aget-char v15, v2, v17

    add-int/lit8 v1, v1, 0x4

    aget-char v3, v2, v1

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
    add-int/lit8 v12, v1, 0x1

    aget-char v12, v2, v12

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
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/h;->J:I

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
    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v1, v3, :cond_12

    aget-char v3, v2, v1

    const/16 v7, 0x5c

    if-ne v3, v7, :cond_d

    add-int/lit8 v1, v1, 0x1

    aget-char v3, v2, v1

    const/16 v8, 0x75

    if-eq v3, v8, :cond_c

    const/16 v14, 0x78

    if-eq v3, v14, :cond_b

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v3

    goto :goto_8

    :cond_b
    add-int/lit8 v3, v1, 0x1

    aget-char v3, v2, v3

    add-int/lit8 v1, v1, 0x2

    aget-char v15, v2, v1

    invoke-static {v3, v15}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v3

    goto :goto_8

    :cond_c
    const/16 v14, 0x78

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v2, v3

    add-int/lit8 v15, v1, 0x2

    aget-char v15, v2, v15

    add-int/lit8 v16, v1, 0x3

    aget-char v7, v2, v16

    add-int/lit8 v1, v1, 0x4

    aget-char v8, v2, v1

    invoke-static {v3, v15, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v3

    goto :goto_8

    :cond_d
    const/16 v14, 0x78

    if-ne v3, v4, :cond_e

    goto :goto_9

    :cond_e
    :goto_8
    add-int/lit8 v1, v1, 0x1

    if-eq v3, v13, :cond_f

    if-eq v3, v12, :cond_f

    if-ne v3, v9, :cond_10

    :cond_f
    aget-char v7, v2, v1

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
    int-to-long v7, v3

    xor-long/2addr v5, v7

    const-wide v7, 0x100000001b3L

    mul-long/2addr v5, v7

    goto :goto_7

    :cond_12
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

.method public getString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/h;->O:I

    iget v1, p0, Lcom/alibaba/fastjson2/h;->J:I

    sub-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/h;->Q:I

    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char v4, v3, v1

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    aget-char v4, v3, v1

    if-eq v4, v5, :cond_5

    if-eq v4, v6, :cond_5

    const/16 v5, 0x75

    if-eq v4, v5, :cond_3

    const/16 v5, 0x78

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    aget-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    aget-char v3, v3, v1

    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v4

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    aget-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    aget-char v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    aget-char v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    aget-char v3, v3, v1

    invoke-static {v4, v5, v6, v3}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v4

    goto :goto_1

    :cond_4
    if-ne v4, v5, :cond_5

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    return-object v1

    :cond_5
    :goto_1
    aput-char v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getStringLength()I
    .locals 6

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/h;->w:[C

    add-int/lit8 v3, v1, 0x8

    iget v4, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v3, v4, :cond_2

    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-char v4, v2, v1

    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v1, 0x2

    aget-char v4, v2, v4

    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v1, 0x3

    aget-char v4, v2, v4

    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v1, 0x4

    aget-char v4, v2, v4

    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v1, 0x5

    aget-char v4, v2, v4

    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v1, 0x6

    aget-char v4, v2, v4

    if-eq v4, v0, :cond_2

    add-int/lit8 v4, v1, 0x7

    aget-char v4, v2, v4

    if-eq v4, v0, :cond_2

    const/16 v1, 0x8

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v1, v4, :cond_4

    aget-char v4, v2, v1

    if-ne v4, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v3
.end method

.method public info(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-ge v2, v5, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v2, v6, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    and-int/2addr v5, v6

    const/16 v6, 0xa

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char v5, v5, v2

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p1, "offset "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", character "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", column "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fastjson-version "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2.0.48"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v3, v0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v6, 0x20

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v0, p0, Lcom/alibaba/fastjson2/h;->y:I

    iget p0, p0, Lcom/alibaba/fastjson2/h;->x:I

    const v2, 0xffff

    if-ge p0, v2, :cond_6

    goto :goto_4

    :cond_6
    move p0, v2

    :goto_4
    invoke-virtual {v1, p1, v0, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isArray()Z
    .locals 1

    iget-char p0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x5b

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNull()Z
    .locals 2

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char p0, p0, v0

    const/16 v0, 0x75

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReference()Z
    .locals 15

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v3, 0x7b

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    return v4

    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v1, :cond_1

    return v4

    :cond_1
    aget-char v1, v0, v2

    :goto_0
    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v3, 0x20

    if-gt v1, v3, :cond_3

    shl-long v11, v9, v1

    and-long/2addr v11, v7

    cmp-long v11, v11, v5

    if-eqz v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v2, v1, :cond_2

    return v4

    :cond_2
    aget-char v1, v0, v2

    goto :goto_0

    :cond_3
    const/16 v11, 0x22

    if-eq v1, v11, :cond_4

    const/16 v11, 0x27

    if-ne v1, v11, :cond_5

    :cond_4
    iget v11, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v11, v11, 0x5

    iget v12, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v11, v12, :cond_6

    :cond_5
    return v4

    :cond_6
    add-int/lit8 v11, v2, 0x1

    aget-char v11, v0, v11

    const/16 v13, 0x24

    if-ne v11, v13, :cond_e

    add-int/lit8 v11, v2, 0x2

    aget-char v11, v0, v11

    const/16 v13, 0x72

    if-ne v11, v13, :cond_e

    add-int/lit8 v11, v2, 0x3

    aget-char v11, v0, v11

    const/16 v13, 0x65

    if-ne v11, v13, :cond_e

    add-int/lit8 v11, v2, 0x4

    aget-char v11, v0, v11

    const/16 v13, 0x66

    if-ne v11, v13, :cond_e

    add-int/lit8 v11, v2, 0x5

    aget-char v11, v0, v11

    if-ne v11, v1, :cond_e

    add-int/lit8 v2, v2, 0x6

    if-lt v2, v12, :cond_7

    goto :goto_3

    :cond_7
    aget-char v11, v0, v2

    :goto_1
    if-gt v11, v3, :cond_9

    shl-long v12, v9, v11

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_9

    add-int/lit8 v2, v2, 0x1

    iget v11, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v2, v11, :cond_8

    return v4

    :cond_8
    aget-char v11, v0, v2

    goto :goto_1

    :cond_9
    const/16 v12, 0x3a

    if-ne v11, v12, :cond_e

    const/4 v11, 0x1

    add-int/2addr v2, v11

    iget v12, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v2, v12, :cond_a

    goto :goto_3

    :cond_a
    aget-char v12, v0, v2

    :goto_2
    if-gt v12, v3, :cond_c

    shl-long v13, v9, v12

    and-long/2addr v13, v7

    cmp-long v13, v13, v5

    if-eqz v13, :cond_c

    add-int/lit8 v2, v2, 0x1

    iget v12, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v2, v12, :cond_b

    return v4

    :cond_b
    aget-char v12, v0, v2

    goto :goto_2

    :cond_c
    if-ne v12, v1, :cond_e

    add-int/lit8 v1, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v1, v3, :cond_d

    aget-char v0, v0, v1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_d

    goto :goto_3

    :cond_d
    iput v2, p0, Lcom/alibaba/fastjson2/h;->Z:I

    return v11

    :cond_e
    :goto_3
    return v4
.end method

.method public m0()V
    .locals 15

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    move v3, v1

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char v6, v5, v3

    const/16 v7, 0x78

    const/16 v8, 0x75

    const/16 v9, 0x5c

    const/4 v10, 0x1

    if-ne v6, v9, :cond_2

    iput-boolean v10, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    add-int/lit8 v3, v3, 0x1

    aget-char v5, v5, v3

    if-eq v5, v8, :cond_1

    if-eq v5, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x4

    :goto_1
    add-int/2addr v3, v10

    goto/16 :goto_7

    :cond_2
    if-ne v6, v0, :cond_e

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueEscape:Z

    if-eqz v0, :cond_7

    new-array v0, v4, [C

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char v5, v4, v1

    const/16 v6, 0x22

    if-ne v5, v9, :cond_5

    add-int/lit8 v1, v1, 0x1

    aget-char v5, v4, v1

    if-eq v5, v6, :cond_6

    if-eq v5, v9, :cond_6

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v5

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    aget-char v5, v4, v1

    add-int/2addr v1, v10

    aget-char v4, v4, v1

    invoke-static {v5, v4}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v5

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    aget-char v5, v4, v1

    add-int/2addr v1, v10

    aget-char v6, v4, v1

    add-int/2addr v1, v10

    aget-char v11, v4, v1

    add-int/2addr v1, v10

    aget-char v4, v4, v1

    invoke-static {v5, v6, v11, v4}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v5

    goto :goto_3

    :cond_5
    if-ne v5, v6, :cond_6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v3

    move v3, v1

    goto :goto_4

    :cond_6
    :goto_3
    aput-char v5, v0, v3

    add-int/2addr v1, v10

    add-int/2addr v3, v10

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sub-int v4, v3, v1

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    :goto_4
    add-int/2addr v3, v10

    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v4, 0x1a

    if-ne v3, v1, :cond_8

    move v1, v4

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char v1, v1, v3

    :goto_5
    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v11, 0x1

    const/16 v9, 0x20

    if-gt v1, v9, :cond_9

    shl-long v13, v11, v1

    and-long/2addr v13, v7

    cmp-long v13, v13, v5

    if-eqz v13, :cond_9

    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v1, v1, v3

    goto :goto_5

    :cond_9
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_a

    move v2, v10

    :cond_a
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_c

    add-int/2addr v3, v10

    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-char v1, v1, v3

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    :goto_6
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-gt v1, v9, :cond_d

    shl-long v1, v11, v1

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v1, v2, :cond_b

    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/alibaba/fastjson2/h;->w:[C

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-char v1, v2, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_6

    :cond_c
    add-int/2addr v3, v10

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    :cond_d
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    return-void

    :cond_e
    add-int/lit8 v3, v3, 0x1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public final n0()V
    .locals 17

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v3, v0, Lcom/alibaba/fastjson2/h;->w:[C

    add-int/lit8 v4, v2, 0x1

    aget-char v2, v3, v2

    :goto_0
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_4

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v4, v2, :cond_3

    add-int/lit8 v2, v4, 0x1

    aget-char v4, v3, v4

    if-eq v4, v5, :cond_2

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x75

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v2, 0x1

    aget-char v2, v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v4

    goto :goto_3

    :cond_2
    :goto_1
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v3, v2

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal string, end"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v5, 0x1a

    if-ne v2, v1, :cond_5

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v4, v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    :goto_2
    move v4, v1

    goto :goto_4

    :cond_5
    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v4, v2, :cond_6

    add-int/lit8 v2, v4, 0x1

    aget-char v4, v3, v4

    :goto_3
    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto :goto_0

    :cond_6
    move v2, v5

    :goto_4
    const-wide/16 v6, 0x0

    const-wide v8, 0x100003700L

    const-wide/16 v10, 0x1

    const/16 v1, 0x20

    if-gt v2, v1, :cond_7

    shl-long v12, v10, v2

    and-long/2addr v12, v8

    cmp-long v12, v12, v6

    if-eqz v12, :cond_7

    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    goto :goto_2

    :cond_7
    const/16 v12, 0x2c

    const/4 v13, 0x1

    if-ne v2, v12, :cond_8

    move v12, v13

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v12, :cond_c

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v4, v2, :cond_9

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_9
    aget-char v2, v3, v4

    :goto_6
    if-gt v2, v1, :cond_b

    shl-long v14, v10, v2

    and-long/2addr v14, v8

    cmp-long v12, v14, v6

    if-eqz v12, :cond_b

    add-int/lit8 v4, v4, 0x1

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v4, v2, :cond_a

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_a
    aget-char v2, v3, v4

    goto :goto_6

    :cond_b
    add-int/2addr v4, v13

    :cond_c
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void
.end method

.method public next()V
    .locals 9

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v3, 0x1a

    if-lt v0, v2, :cond_0

    move v2, v0

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget-char v0, v1, v0

    :goto_1
    if-eqz v0, :cond_3

    const/16 v4, 0x20

    if-gt v0, v4, :cond_1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v0

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_2
    return-void

    :cond_3
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v0, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    aget-char v2, v1, v2

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_1
.end method

.method public nextIfArrayEnd()Z
    .locals 17

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v2, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v4, 0x1a

    if-ne v1, v3, :cond_1

    move v3, v1

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-char v1, v2, v1

    :goto_1
    if-eqz v1, :cond_8

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v1, v11, :cond_2

    shl-long v12, v9, v1

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_2

    goto :goto_4

    :cond_2
    const/16 v12, 0x2c

    const/4 v13, 0x1

    if-ne v1, v12, :cond_6

    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v1, :cond_3

    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v2, v3

    :goto_2
    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    :goto_3
    if-eqz v1, :cond_4

    if-gt v1, v11, :cond_6

    shl-long v14, v9, v1

    and-long/2addr v14, v7

    cmp-long v12, v14, v5

    if-eqz v12, :cond_6

    :cond_4
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v1, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v2, v3

    goto :goto_2

    :cond_6
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_7
    return v13

    :cond_8
    :goto_4
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v1, :cond_9

    goto :goto_0

    :cond_9
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v2, v3

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_1
.end method

.method public nextIfArrayStart()Z
    .locals 9

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v3, 0x1a

    if-ne v1, v2, :cond_1

    move v2, v1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v0, v1

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
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v0, 0x2f

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v1, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v0, v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1
.end method

.method public nextIfComma()Z
    .locals 14

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    :goto_0
    const-wide/16 v3, 0x0

    const-wide v5, 0x100003700L

    const-wide/16 v7, 0x1

    const/16 v9, 0x20

    const/16 v10, 0x1a

    if-gt v2, v9, :cond_1

    shl-long v11, v7, v2

    and-long/2addr v11, v5

    cmp-long v11, v11, v3

    if-eqz v11, :cond_1

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, v2, :cond_0

    move v2, v10

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v0, v1

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_0

    :cond_1
    const/16 v11, 0x2c

    if-eq v2, v11, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, v2, :cond_3

    move v2, v1

    :goto_1
    move v1, v10

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v0, v1

    :goto_2
    if-eqz v1, :cond_6

    if-gt v1, v9, :cond_4

    shl-long v11, v7, v1

    and-long/2addr v11, v5

    cmp-long v11, v11, v3

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x2f

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_3
    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v1, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v0, v2

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_2
.end method

.method public nextIfInfinity()Z
    .locals 9

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x49

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x6

    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v2, v3, :cond_3

    aget-char v4, v0, v1

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v0, v4

    const/16 v6, 0x66

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x2

    aget-char v4, v0, v4

    const/16 v6, 0x69

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x3

    aget-char v4, v0, v4

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v1, 0x4

    aget-char v4, v0, v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x5

    aget-char v4, v0, v4

    const/16 v5, 0x74

    if-ne v4, v5, :cond_3

    aget-char v2, v0, v2

    const/16 v4, 0x79

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x7

    const/16 v2, 0x1a

    if-ne v1, v3, :cond_0

    move v3, v1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    aget-char v1, v0, v1

    :goto_1
    const/16 v4, 0x20

    if-gt v1, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v0, v3

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public nextIfMatch(C)Z
    .locals 14

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    :goto_0
    const-wide/16 v3, 0x0

    const-wide v5, 0x100003700L

    const-wide/16 v7, 0x1

    const/16 v9, 0x20

    const/16 v10, 0x1a

    if-gt v2, v9, :cond_1

    shl-long v11, v7, v2

    and-long/2addr v11, v5

    cmp-long v11, v11, v3

    if-eqz v11, :cond_1

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, v2, :cond_0

    move v2, v10

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v0, v1

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_0

    :cond_1
    if-eq v2, p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, p1, :cond_3

    move p1, v1

    :goto_1
    move v1, v10

    goto :goto_2

    :cond_3
    add-int/lit8 p1, v1, 0x1

    aget-char v1, v0, v1

    :goto_2
    if-eqz v1, :cond_6

    if-gt v1, v9, :cond_4

    shl-long v11, v7, v1

    and-long/2addr v11, v5

    cmp-long v2, v11, v3

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p1, 0x2f

    if-ne v1, p1, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_3
    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne p1, v1, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v1, p1, 0x1

    aget-char p1, v0, p1

    move v13, v1

    move v1, p1

    move p1, v13

    goto :goto_2
.end method

.method public nextIfMatchIdent(CCC)Z
    .locals 8

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    .line 3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x2

    .line 4
    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v2, v3, :cond_6

    aget-char v4, p1, v0

    if-ne v4, p2, :cond_6

    const/4 p2, 0x1

    add-int/2addr v0, p2

    aget-char v0, p1, v0

    if-eq v0, p3, :cond_1

    goto :goto_2

    :cond_1
    const/16 p3, 0x1a

    if-ne v2, v3, :cond_2

    move v0, v2

    :goto_0
    move v2, p3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 5
    aget-char v2, p1, v2

    :goto_1
    const/16 v3, 0x20

    if-gt v2, v3, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 6
    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v0, 0x1

    aget-char v0, p1, v0

    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_1

    .line 7
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x3

    if-ne v0, p1, :cond_5

    if-eq v2, p3, :cond_5

    const/16 p1, 0x28

    if-eq v2, p1, :cond_5

    const/16 p1, 0x5b

    if-eq v2, p1, :cond_5

    const/16 p1, 0x5d

    if-eq v2, p1, :cond_5

    const/16 p1, 0x29

    if-eq v2, p1, :cond_5

    const/16 p1, 0x3a

    if-eq v2, p1, :cond_5

    const/16 p1, 0x2c

    if-eq v2, p1, :cond_5

    return v1

    .line 8
    :cond_5
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return p2

    :cond_6
    :goto_2
    return v1
.end method

.method public nextIfMatchIdent(CCCC)Z
    .locals 7

    .line 10
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    .line 12
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x3

    .line 13
    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v2, v3, :cond_6

    aget-char v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-char p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 v0, v0, 0x2

    aget-char p2, p1, v0

    if-eq p2, p4, :cond_1

    goto :goto_3

    :cond_1
    const/16 p2, 0x1a

    if-ne v2, v3, :cond_2

    :goto_0
    move p4, p2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, v2, 0x1

    .line 14
    aget-char p4, p1, v2

    :goto_1
    move v2, p3

    :goto_2
    const/16 p3, 0x20

    if-gt p4, p3, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p4

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-eqz p3, :cond_4

    .line 15
    iget p3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-char p4, p1, v2

    goto :goto_1

    .line 16
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x4

    if-ne v2, p1, :cond_5

    if-eq p4, p2, :cond_5

    const/16 p1, 0x28

    if-eq p4, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p4, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p4, p1, :cond_5

    const/16 p1, 0x29

    if-eq p4, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p4, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p4, p1, :cond_5

    return v1

    .line 17
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 18
    iput-char p4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_3
    return v1
.end method

.method public nextIfMatchIdent(CCCCC)Z
    .locals 7

    .line 19
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    .line 21
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x4

    .line 22
    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v2, v3, :cond_6

    aget-char v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-char p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 p2, v0, 0x2

    aget-char p2, p1, p2

    if-ne p2, p4, :cond_6

    add-int/lit8 v0, v0, 0x3

    aget-char p2, p1, v0

    if-eq p2, p5, :cond_1

    goto :goto_3

    :cond_1
    const/16 p2, 0x1a

    if-ne v2, v3, :cond_2

    :goto_0
    move p4, p2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, v2, 0x1

    .line 23
    aget-char p4, p1, v2

    :goto_1
    move v2, p3

    :goto_2
    const/16 p3, 0x20

    if-gt p4, p3, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p4

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-eqz p3, :cond_4

    .line 24
    iget p3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-char p4, p1, v2

    goto :goto_1

    .line 25
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x5

    if-ne v2, p1, :cond_5

    if-eq p4, p2, :cond_5

    const/16 p1, 0x28

    if-eq p4, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p4, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p4, p1, :cond_5

    const/16 p1, 0x29

    if-eq p4, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p4, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p4, p1, :cond_5

    return v1

    .line 26
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 27
    iput-char p4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_3
    return v1
.end method

.method public nextIfMatchIdent(CCCCCC)Z
    .locals 5

    .line 28
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    .line 30
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v0, 0x5

    .line 31
    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v2, v3, :cond_6

    aget-char v4, p1, v0

    if-ne v4, p2, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-char p2, p1, p2

    if-ne p2, p3, :cond_6

    add-int/lit8 p2, v0, 0x2

    aget-char p2, p1, p2

    if-ne p2, p4, :cond_6

    add-int/lit8 p2, v0, 0x3

    aget-char p2, p1, p2

    if-ne p2, p5, :cond_6

    add-int/lit8 v0, v0, 0x4

    aget-char p2, p1, v0

    if-eq p2, p6, :cond_1

    goto :goto_3

    :cond_1
    const/16 p2, 0x1a

    if-ne v2, v3, :cond_2

    :goto_0
    move p4, p2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, v2, 0x1

    .line 32
    aget-char p4, p1, v2

    :goto_1
    move v2, p3

    :goto_2
    const/16 p3, 0x20

    if-gt p4, p3, :cond_4

    const-wide/16 p5, 0x1

    shl-long/2addr p5, p4

    const-wide v3, 0x100003700L

    and-long/2addr p5, v3

    const-wide/16 v3, 0x0

    cmp-long p3, p5, v3

    if-eqz p3, :cond_4

    .line 33
    iget p3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, p3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v2, 0x1

    aget-char p4, p1, v2

    goto :goto_1

    .line 34
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x6

    if-ne v2, p1, :cond_5

    if-eq p4, p2, :cond_5

    const/16 p1, 0x28

    if-eq p4, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p4, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p4, p1, :cond_5

    const/16 p1, 0x29

    if-eq p4, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p4, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p4, p1, :cond_5

    return v1

    .line 35
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 36
    iput-char p4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_3
    return v1
.end method

.method public nextIfNull()Z
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char v0, v1, v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->readNull()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public nextIfNullOrEmptyString()Z
    .locals 18

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v4, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/16 v5, 0x6e

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v5, :cond_0

    add-int/lit8 v5, v3, 0x2

    if-ge v5, v2, :cond_0

    aget-char v8, v4, v3

    const/16 v9, 0x75

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-char v8, v4, v8

    const/16 v9, 0x6c

    if-ne v8, v9, :cond_0

    aget-char v5, v4, v5

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

    aget-char v5, v4, v3

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

    aget-char v3, v4, v3

    :goto_2
    const-wide/16 v8, 0x0

    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    const/16 v14, 0x20

    if-gt v3, v14, :cond_4

    shl-long v15, v12, v3

    and-long/2addr v15, v10

    cmp-long v15, v15, v8

    if-eqz v15, :cond_4

    if-ne v5, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v5, 0x1

    aget-char v5, v4, v5

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

    aget-char v5, v4, v5

    :goto_4
    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    :cond_7
    :goto_5
    if-gt v3, v14, :cond_9

    shl-long v15, v12, v3

    and-long/2addr v15, v10

    cmp-long v6, v15, v8

    if-eqz v6, :cond_9

    if-ne v5, v2, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v5, 0x1

    aget-char v5, v4, v5

    goto :goto_4

    :cond_9
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return v7

    :cond_a
    return v6
.end method

.method public nextIfObjectEnd()Z
    .locals 17

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v2, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v4, 0x1a

    if-ne v1, v3, :cond_1

    move v3, v1

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-char v1, v2, v1

    :goto_1
    if-eqz v1, :cond_8

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v1, v11, :cond_2

    shl-long v12, v9, v1

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_2

    goto :goto_4

    :cond_2
    const/16 v12, 0x2c

    const/4 v13, 0x1

    if-ne v1, v12, :cond_6

    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v1, :cond_3

    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v2, v3

    :goto_2
    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    :goto_3
    if-eqz v1, :cond_4

    if-gt v1, v11, :cond_6

    shl-long v14, v9, v1

    and-long/2addr v14, v7

    cmp-long v12, v14, v5

    if-eqz v12, :cond_6

    :cond_4
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v1, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v2, v3

    goto :goto_2

    :cond_6
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_7
    return v13

    :cond_8
    :goto_4
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v1, :cond_9

    goto :goto_0

    :cond_9
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v2, v3

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_1
.end method

.method public nextIfObjectStart()Z
    .locals 9

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v3, 0x1a

    if-ne v1, v2, :cond_1

    move v2, v1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v0, v1

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
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v0, 0x2f

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v1, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v0, v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1
.end method

.method public nextIfSet()Z
    .locals 9

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v2, v3, :cond_3

    aget-char v4, v0, v1

    const/16 v5, 0x65

    if-ne v4, v5, :cond_3

    aget-char v2, v0, v2

    const/16 v4, 0x74

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1a

    if-ne v1, v3, :cond_0

    move v3, v1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    aget-char v1, v0, v1

    :goto_1
    const/16 v4, 0x20

    if-gt v1, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v0, v3

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public readBigDecimal()Ljava/math/BigDecimal;
    .locals 29

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v4, 0x22

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v2, v4, :cond_1

    const/16 v4, 0x27

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    move v3, v6

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, 0x1

    aget-char v3, v0, v3

    if-ne v3, v2, :cond_3

    iget v2, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v2, :cond_2

    const/16 v5, 0x1a

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v4, 0x1

    aget-char v5, v0, v4

    move v4, v2

    :goto_1
    iput-char v5, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->nextIfComma()Z

    return-object v7

    :cond_3
    move/from16 v28, v3

    move v3, v2

    move/from16 v2, v28

    :goto_2
    const/16 v8, 0x2b

    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-ne v2, v9, :cond_4

    iput-boolean v10, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    add-int/lit8 v2, v4, 0x1

    aget-char v11, v0, v4

    :goto_3
    move/from16 v28, v11

    move v11, v2

    move/from16 v2, v28

    goto :goto_4

    :cond_4
    iput-boolean v6, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-ne v2, v8, :cond_5

    add-int/lit8 v2, v4, 0x1

    aget-char v11, v0, v4

    goto :goto_3

    :cond_5
    move v11, v4

    :goto_4
    iput-byte v10, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    const-wide/16 v12, 0x0

    move v14, v6

    move/from16 v17, v14

    move-wide v15, v12

    :goto_5
    const/16 v18, 0x1f

    const/16 v5, 0x39

    const-wide/16 v19, 0xa

    const/16 v7, 0x30

    if-lt v2, v7, :cond_a

    if-gt v2, v5, :cond_a

    if-nez v14, :cond_8

    mul-long v22, v15, v19

    or-long v24, v15, v19

    ushr-long v24, v24, v18

    cmp-long v17, v24, v12

    if-eqz v17, :cond_7

    div-long v24, v22, v19

    cmp-long v17, v24, v15

    if-nez v17, :cond_6

    goto :goto_6

    :cond_6
    move v14, v10

    goto :goto_7

    :cond_7
    :goto_6
    add-int/lit8 v2, v2, -0x30

    int-to-long v8, v2

    add-long v15, v22, v8

    :cond_8
    :goto_7
    iget v2, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v11, v2, :cond_9

    add-int/lit8 v11, v11, 0x1

    move/from16 v17, v10

    const/16 v2, 0x1a

    goto :goto_8

    :cond_9
    add-int/lit8 v2, v11, 0x1

    aget-char v5, v0, v11

    move v11, v2

    move v2, v5

    move/from16 v17, v10

    const/4 v7, 0x0

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    goto :goto_5

    :cond_a
    :goto_8
    iput-short v6, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    const/16 v8, 0x2e

    const/4 v9, 0x2

    if-ne v2, v8, :cond_f

    iput-byte v9, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    add-int/lit8 v2, v11, 0x1

    aget-char v8, v0, v11

    move v11, v2

    move v2, v8

    :goto_9
    if-lt v2, v7, :cond_f

    if-gt v2, v5, :cond_f

    iget-short v8, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    add-int/2addr v8, v10

    int-to-short v8, v8

    iput-short v8, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-nez v14, :cond_d

    mul-long v22, v15, v19

    or-long v26, v15, v19

    ushr-long v26, v26, v18

    cmp-long v8, v26, v12

    if-eqz v8, :cond_c

    div-long v26, v22, v19

    cmp-long v8, v26, v15

    if-nez v8, :cond_b

    goto :goto_a

    :cond_b
    move v14, v10

    goto :goto_b

    :cond_c
    :goto_a
    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    add-long v22, v22, v12

    move-wide/from16 v15, v22

    :cond_d
    :goto_b
    iget v2, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v11, v2, :cond_e

    add-int/lit8 v11, v11, 0x1

    move/from16 v17, v10

    move-wide v12, v15

    const/16 v2, 0x1a

    goto :goto_c

    :cond_e
    add-int/lit8 v2, v11, 0x1

    aget-char v8, v0, v11

    move v11, v2

    move v2, v8

    move/from16 v17, v10

    const-wide/16 v12, 0x0

    goto :goto_9

    :cond_f
    move-wide v12, v15

    :goto_c
    const/16 v8, 0x65

    if-eq v2, v8, :cond_10

    const/16 v15, 0x45

    if-ne v2, v15, :cond_18

    :cond_10
    add-int/lit8 v2, v11, 0x1

    aget-char v11, v0, v11

    const/16 v15, 0x2d

    if-ne v11, v15, :cond_11

    move v15, v10

    goto :goto_d

    :cond_11
    move v15, v6

    :goto_d
    if-nez v15, :cond_12

    const/16 v6, 0x2b

    if-ne v11, v6, :cond_13

    :cond_12
    add-int/lit8 v6, v2, 0x1

    aget-char v11, v0, v2

    move v2, v6

    :cond_13
    const/4 v6, 0x0

    :goto_e
    if-lt v11, v7, :cond_16

    if-gt v11, v5, :cond_16

    add-int/lit8 v11, v11, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v11

    const/16 v11, 0x3ff

    if-gt v6, v11, :cond_15

    iget v11, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v11, :cond_14

    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move/from16 v17, v10

    const/16 v2, 0x1a

    goto :goto_f

    :cond_14
    add-int/lit8 v11, v2, 0x1

    aget-char v2, v0, v2

    move/from16 v17, v10

    move/from16 v28, v11

    move v11, v2

    move/from16 v2, v28

    goto :goto_e

    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too large exp value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move/from16 v28, v11

    move v11, v2

    move/from16 v2, v28

    :goto_f
    if-eqz v15, :cond_17

    neg-int v6, v6

    :cond_17
    int-to-short v5, v6

    iput-short v5, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    iput-byte v9, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    :cond_18
    if-ne v11, v4, :cond_23

    const/16 v5, 0x6e

    const/16 v7, 0x75

    const/16 v9, 0x6c

    if-ne v2, v5, :cond_1c

    add-int/lit8 v5, v11, 0x1

    aget-char v11, v0, v11

    if-ne v11, v7, :cond_1b

    add-int/lit8 v11, v5, 0x1

    aget-char v5, v0, v5

    if-ne v5, v9, :cond_1c

    add-int/lit8 v5, v11, 0x1

    aget-char v11, v0, v11

    if-ne v11, v9, :cond_1b

    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v10, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v7, v10

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iget v7, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v7, :cond_19

    const/16 v7, 0x1a

    goto :goto_10

    :cond_19
    aget-char v7, v0, v5

    :goto_10
    add-int/lit8 v11, v5, 0x1

    move v2, v7

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x1

    const/16 v21, 0x0

    goto/16 :goto_14

    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move v11, v5

    :cond_1c
    const/16 v5, 0x74

    if-ne v2, v5, :cond_1e

    add-int/lit8 v5, v11, 0x3

    iget v10, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v5, v10, :cond_1e

    aget-char v15, v0, v11

    const/16 v9, 0x72

    if-ne v15, v9, :cond_1e

    add-int/lit8 v9, v11, 0x1

    aget-char v9, v0, v9

    if-ne v9, v7, :cond_1e

    add-int/lit8 v7, v11, 0x2

    aget-char v7, v0, v7

    if-ne v7, v8, :cond_1e

    sget-object v7, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    if-ne v5, v10, :cond_1d

    const/16 v2, 0x1a

    goto :goto_11

    :cond_1d
    aget-char v2, v0, v5

    :goto_11
    const/4 v8, 0x1

    add-int/lit8 v11, v5, 0x1

    move-object/from16 v21, v7

    :goto_12
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x1

    goto/16 :goto_14

    :cond_1e
    const/16 v5, 0x66

    if-ne v2, v5, :cond_20

    add-int/lit8 v5, v11, 0x4

    iget v7, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v5, v7, :cond_20

    aget-char v9, v0, v11

    const/16 v10, 0x61

    if-ne v9, v10, :cond_20

    add-int/lit8 v9, v11, 0x1

    aget-char v9, v0, v9

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_20

    add-int/lit8 v9, v11, 0x2

    aget-char v9, v0, v9

    const/16 v10, 0x73

    if-ne v9, v10, :cond_20

    add-int/lit8 v9, v11, 0x3

    aget-char v9, v0, v9

    if-ne v9, v8, :cond_20

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    if-ne v5, v7, :cond_1f

    const/16 v7, 0x1a

    goto :goto_13

    :cond_1f
    aget-char v7, v0, v5

    :goto_13
    const/4 v8, 0x1

    add-int/lit8 v11, v5, 0x1

    move-object/from16 v21, v2

    move v2, v7

    goto :goto_12

    :cond_20
    const/16 v5, 0x7b

    if-ne v2, v5, :cond_21

    if-nez v3, :cond_21

    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->readObject(Ljava/lang/Object;J)V

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->decimal(Lcom/alibaba/fastjson2/JSONObject;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_21
    const/4 v5, 0x0

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_24

    if-nez v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    const/4 v7, 0x0

    return-object v7

    :cond_22
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v5, 0x0

    :cond_24
    const/4 v7, 0x0

    move-object/from16 v21, v7

    move v7, v5

    :goto_14
    sub-int v8, v11, v4

    if-eqz v3, :cond_27

    if-eq v2, v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_25
    iget v2, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v11, v2, :cond_26

    const/16 v2, 0x1a

    goto :goto_15

    :cond_26
    add-int/lit8 v2, v11, 0x1

    aget-char v3, v0, v11

    move v11, v2

    move v2, v3

    :cond_27
    :goto_15
    if-nez v7, :cond_2d

    if-nez v6, :cond_29

    if-nez v14, :cond_29

    const-wide/16 v9, 0x0

    cmp-long v3, v12, v9

    if-eqz v3, :cond_29

    iget-boolean v3, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v3, :cond_28

    neg-long v12, v12

    :cond_28
    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    invoke-static {v12, v13, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v21

    const/4 v7, 0x1

    :cond_29
    const/4 v3, 0x1

    if-nez v7, :cond_2a

    sub-int/2addr v4, v3

    invoke-static {v0, v4, v8}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object v4

    move-object/from16 v21, v4

    :cond_2a
    const/16 v4, 0x4c

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x46

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x44

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x42

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x53

    if-ne v2, v4, :cond_2e

    :cond_2b
    iget v2, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v11, v2, :cond_2c

    :goto_16
    const/16 v2, 0x1a

    goto :goto_18

    :cond_2c
    add-int/lit8 v2, v11, 0x1

    aget-char v4, v0, v11

    :goto_17
    move v11, v2

    move v2, v4

    goto :goto_18

    :cond_2d
    const/4 v3, 0x1

    :cond_2e
    :goto_18
    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v4, 0x20

    if-gt v2, v4, :cond_30

    shl-long v12, v8, v2

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_30

    iget v2, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v11, v2, :cond_2f

    goto :goto_16

    :cond_2f
    add-int/lit8 v2, v11, 0x1

    aget-char v4, v0, v11

    goto :goto_17

    :cond_30
    const/16 v10, 0x2c

    if-ne v2, v10, :cond_31

    goto :goto_19

    :cond_31
    move v3, v5

    :goto_19
    iput-boolean v3, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v3, :cond_34

    iget v2, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v11, v2, :cond_32

    const/16 v3, 0x1a

    goto :goto_1a

    :cond_32
    add-int/lit8 v2, v11, 0x1

    aget-char v3, v0, v11

    goto :goto_1c

    :goto_1a
    move v2, v3

    :goto_1b
    if-gt v2, v4, :cond_34

    shl-long v12, v8, v2

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_34

    iget v2, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v11, v2, :cond_33

    const/16 v2, 0x1a

    goto :goto_1b

    :cond_33
    add-int/lit8 v2, v11, 0x1

    aget-char v3, v0, v11

    :goto_1c
    move v11, v2

    goto :goto_1a

    :cond_34
    if-eqz v17, :cond_35

    iput-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v11, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v21

    :cond_35
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBoolValue()Z
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iget-object v2, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v5, 0x74

    const/16 v6, 0x65

    const/16 v7, 0x75

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v3, 0x2

    array-length v11, v2

    if-ge v5, v11, :cond_1

    aget-char v11, v2, v3

    const/16 v12, 0x72

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, v3, 0x1

    aget-char v11, v2, v11

    if-ne v11, v7, :cond_1

    aget-char v5, v2, v5

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x3

    :cond_0
    :goto_0
    move v4, v10

    goto/16 :goto_2

    :cond_1
    const/16 v5, 0x66

    const/16 v11, 0x6c

    if-ne v4, v5, :cond_3

    add-int/lit8 v5, v3, 0x3

    array-length v12, v2

    if-ge v5, v12, :cond_3

    aget-char v12, v2, v3

    const/16 v13, 0x61

    if-ne v12, v13, :cond_3

    add-int/lit8 v12, v3, 0x1

    aget-char v12, v2, v12

    if-ne v12, v11, :cond_3

    add-int/lit8 v12, v3, 0x2

    aget-char v12, v2, v12

    const/16 v13, 0x73

    if-ne v12, v13, :cond_3

    aget-char v5, v2, v5

    if-ne v5, v6, :cond_3

    add-int/lit8 v3, v3, 0x4

    :cond_2
    :goto_1
    move v4, v1

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_16

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v6, 0x39

    if-gt v4, v6, :cond_4

    goto/16 :goto_9

    :cond_4
    const/16 v6, 0x6e

    if-ne v4, v6, :cond_6

    add-int/lit8 v6, v3, 0x2

    array-length v12, v2

    if-ge v6, v12, :cond_6

    aget-char v12, v2, v3

    if-ne v12, v7, :cond_6

    add-int/lit8 v7, v3, 0x1

    aget-char v7, v2, v7

    if-ne v7, v11, :cond_6

    aget-char v6, v2, v6

    if-ne v6, v11, :cond_6

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-nez v4, :cond_5

    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "boolean value not support input null"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v6, 0x22

    if-ne v4, v6, :cond_15

    add-int/lit8 v4, v3, 0x1

    array-length v7, v2

    const-string v11, "can not convert to boolean : "

    if-ge v4, v7, :cond_10

    aget-char v4, v2, v4

    if-ne v4, v6, :cond_10

    aget-char v4, v2, v3

    add-int/lit8 v3, v3, 0x2

    if-eq v4, v5, :cond_2

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v5, 0x31

    if-eq v4, v5, :cond_0

    const/16 v5, 0x59

    if-ne v4, v5, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v6, 0x1a

    if-ne v3, v5, :cond_9

    move v5, v3

    :goto_3
    move v3, v6

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v3, 0x1

    aget-char v3, v2, v3

    :goto_4
    const-wide v11, 0x100003700L

    const-wide/16 v13, 0x1

    const/16 v7, 0x20

    if-gt v3, v7, :cond_b

    shl-long v15, v13, v3

    and-long/2addr v15, v11

    cmp-long v15, v15, v8

    if-eqz v15, :cond_b

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v3, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v5, 0x1

    aget-char v5, v2, v5

    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    goto :goto_4

    :cond_b
    const/16 v15, 0x2c

    if-ne v3, v15, :cond_c

    move v1, v10

    :cond_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v1, :cond_d

    :goto_5
    move v3, v6

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v5, 0x1

    aget-char v3, v2, v5

    :goto_6
    move v5, v1

    :goto_7
    if-gt v3, v7, :cond_f

    shl-long v15, v13, v3

    and-long/2addr v15, v11

    cmp-long v1, v15, v8

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v1, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v1, v5, 0x1

    aget-char v3, v2, v5

    goto :goto_6

    :cond_f
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return v4

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    return v10

    :cond_11
    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    return v1

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_8
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v1

    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    iget-byte v2, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    if-ne v2, v10, :cond_1a

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_19

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v2, :cond_17

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v2, :cond_17

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v2, :cond_17

    iget v0, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-eqz v0, :cond_18

    :cond_17
    move v1, v10

    :cond_18
    return v1

    :cond_19
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    if-nez v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    if-nez v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    if-nez v2, :cond_1a

    iget v0, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ne v0, v10, :cond_1a

    move v1, v10

    :cond_1a
    return v1
.end method

.method public readDoubleValue()D
    .locals 27

    move-object/from16 v1, p0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iget-object v2, v1, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v5, 0x22

    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v10, 0x20

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    if-eq v3, v5, :cond_1

    const/16 v5, 0x27

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    move v4, v0

    goto :goto_4

    :cond_1
    :goto_0
    add-int/lit8 v5, v4, 0x1

    aget-char v4, v2, v4

    if-ne v4, v3, :cond_5

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v0, :cond_2

    :goto_1
    const/16 v3, 0x1a

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v5, 0x1

    aget-char v3, v2, v5

    :goto_2
    move v5, v0

    :goto_3
    if-gt v3, v10, :cond_4

    shl-long v17, v8, v3

    and-long v17, v17, v6

    cmp-long v0, v17, v11

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v5, 0x1

    aget-char v3, v2, v5

    goto :goto_2

    :cond_4
    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->nextIfComma()Z

    iput-boolean v14, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-wide v15

    :cond_5
    move/from16 v26, v4

    move v4, v3

    move/from16 v3, v26

    :goto_4
    const/16 v13, 0x2b

    const/16 v15, 0x2d

    if-ne v3, v15, :cond_6

    iput-boolean v14, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    add-int/lit8 v3, v5, 0x1

    aget-char v16, v2, v5

    :goto_5
    move/from16 v26, v16

    move/from16 v16, v3

    move/from16 v3, v26

    goto :goto_6

    :cond_6
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-ne v3, v13, :cond_7

    add-int/lit8 v3, v5, 0x1

    aget-char v16, v2, v5

    goto :goto_5

    :cond_7
    move/from16 v16, v5

    :goto_6
    iput-byte v14, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    move v7, v0

    move-wide/from16 v20, v11

    move/from16 v6, v16

    move/from16 v16, v7

    :goto_7
    const-wide/16 v22, 0xa

    const/16 v8, 0x39

    const/16 v9, 0x30

    if-lt v3, v9, :cond_b

    if-gt v3, v8, :cond_b

    if-nez v7, :cond_9

    mul-long v24, v20, v22

    add-int/lit8 v3, v3, -0x30

    int-to-long v10, v3

    add-long v24, v24, v10

    cmp-long v3, v24, v20

    if-gez v3, :cond_8

    move v7, v14

    goto :goto_8

    :cond_8
    move-wide/from16 v20, v24

    :cond_9
    :goto_8
    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v3, :cond_a

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v14

    const/16 v3, 0x1a

    goto :goto_9

    :cond_a
    add-int/lit8 v16, v6, 0x1

    aget-char v3, v2, v6

    move/from16 v6, v16

    const-wide/16 v8, 0x1

    const/16 v10, 0x20

    const-wide/16 v11, 0x0

    move/from16 v16, v14

    goto :goto_7

    :cond_b
    :goto_9
    iput-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    const/16 v10, 0x2e

    const/4 v11, 0x2

    if-ne v3, v10, :cond_f

    iput-byte v11, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    :goto_a
    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    if-lt v3, v9, :cond_f

    if-gt v3, v8, :cond_f

    iget-short v10, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    add-int/2addr v10, v14

    int-to-short v10, v10

    iput-short v10, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-nez v7, :cond_d

    mul-long v24, v20, v22

    add-int/lit8 v3, v3, -0x30

    int-to-long v11, v3

    add-long v24, v24, v11

    cmp-long v3, v24, v20

    if-gez v3, :cond_c

    move v7, v14

    goto :goto_b

    :cond_c
    move-wide/from16 v20, v24

    :cond_d
    :goto_b
    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v3, :cond_e

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v14

    move-wide/from16 v11, v20

    const/16 v3, 0x1a

    goto :goto_c

    :cond_e
    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    move/from16 v16, v14

    const/4 v11, 0x2

    goto :goto_a

    :cond_f
    move-wide/from16 v11, v20

    :goto_c
    const/16 v0, 0x65

    if-eq v3, v0, :cond_11

    const/16 v10, 0x45

    if-ne v3, v10, :cond_10

    goto :goto_d

    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_11
    :goto_d
    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    if-ne v6, v15, :cond_12

    add-int/lit8 v6, v3, 0x1

    aget-char v3, v2, v3

    move v13, v14

    const/4 v10, 0x0

    :goto_e
    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    goto :goto_f

    :cond_12
    if-ne v6, v13, :cond_13

    add-int/lit8 v6, v3, 0x1

    aget-char v3, v2, v3

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto :goto_e

    :cond_13
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_f
    if-lt v6, v9, :cond_16

    if-gt v6, v8, :cond_16

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v6

    const/16 v6, 0x3ff

    if-gt v10, v6, :cond_15

    iget v6, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v6, :cond_14

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    move/from16 v16, v14

    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    add-int/lit8 v6, v3, 0x1

    aget-char v3, v2, v3

    move/from16 v16, v14

    goto :goto_e

    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too large exp value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    :goto_10
    if-eqz v13, :cond_17

    neg-int v10, v10

    :cond_17
    int-to-short v8, v10

    iput-short v8, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    const/4 v8, 0x2

    iput-byte v8, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    :goto_11
    if-ne v6, v5, :cond_24

    const/16 v8, 0x6e

    const/16 v9, 0x75

    const/16 v13, 0x6c

    if-ne v3, v8, :cond_1a

    aget-char v8, v2, v6

    if-ne v8, v9, :cond_1a

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v2, v8

    if-ne v8, v13, :cond_1a

    add-int/lit8 v8, v6, 0x2

    aget-char v8, v2, v8

    if-ne v8, v13, :cond_1a

    add-int/lit8 v6, v6, 0x3

    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v8, v14

    const-wide/16 v13, 0x0

    cmp-long v0, v8, v13

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_18

    :goto_12
    const/16 v3, 0x1a

    goto/16 :goto_17

    :cond_18
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    :goto_13
    move v6, v0

    goto/16 :goto_17

    :cond_19
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/16 v8, 0x74

    if-ne v3, v8, :cond_1c

    aget-char v8, v2, v6

    const/16 v14, 0x72

    if-ne v8, v14, :cond_1c

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v2, v8

    if-ne v8, v9, :cond_1c

    add-int/lit8 v8, v6, 0x2

    aget-char v8, v2, v8

    if-ne v8, v0, :cond_1c

    add-int/lit8 v6, v6, 0x3

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_1b

    const/16 v3, 0x1a

    goto :goto_14

    :cond_1b
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    move v6, v0

    :goto_14
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_15
    const/4 v0, 0x1

    goto/16 :goto_18

    :cond_1c
    const/16 v8, 0x66

    const/16 v9, 0x61

    if-ne v3, v8, :cond_1e

    aget-char v8, v2, v6

    if-ne v8, v9, :cond_1e

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v2, v8

    if-ne v8, v13, :cond_1e

    add-int/lit8 v8, v6, 0x2

    aget-char v8, v2, v8

    const/16 v13, 0x73

    if-ne v8, v13, :cond_1e

    add-int/lit8 v8, v6, 0x3

    aget-char v8, v2, v8

    if-ne v8, v0, :cond_1e

    add-int/lit8 v6, v6, 0x4

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_1d

    goto :goto_12

    :cond_1d
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    goto :goto_13

    :cond_1e
    const/16 v0, 0x4e

    if-ne v3, v0, :cond_20

    aget-char v8, v2, v6

    if-ne v8, v9, :cond_20

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v2, v8

    if-ne v8, v0, :cond_20

    add-int/lit8 v6, v6, 0x2

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_1f

    const/16 v3, 0x1a

    goto :goto_16

    :cond_1f
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    move v6, v0

    :goto_16
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    :cond_20
    const/16 v0, 0x7b

    if-ne v3, v0, :cond_22

    if-nez v4, :cond_22

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    :goto_17
    const/4 v0, 0x1

    const-wide/16 v8, 0x0

    :goto_18
    const/16 v16, 0x1

    goto :goto_19

    :cond_21
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/16 v0, 0x5b

    if-ne v3, v0, :cond_24

    if-nez v4, :cond_24

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    goto :goto_17

    :cond_23
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    :goto_19
    sub-int v13, v6, v5

    const/4 v14, 0x0

    if-eqz v4, :cond_27

    if-eq v3, v4, :cond_25

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readString()Ljava/lang/String;

    move-result-object v14

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :cond_25
    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v3, :cond_26

    const/16 v3, 0x1a

    goto :goto_1a

    :cond_26
    add-int/lit8 v3, v6, 0x1

    aget-char v4, v2, v6

    move v6, v3

    move v3, v4

    :cond_27
    :goto_1a
    if-nez v0, :cond_34

    if-nez v7, :cond_2f

    const-wide/16 v22, 0x0

    cmp-long v4, v11, v22

    if-nez v4, :cond_28

    iget-short v4, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2f

    const/4 v0, 0x1

    const-wide/16 v18, 0x0

    goto :goto_1e

    :cond_28
    iget-short v4, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    sub-int/2addr v4, v10

    if-nez v4, :cond_2a

    long-to-double v7, v11

    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_29

    :goto_1b
    neg-double v7, v7

    :cond_29
    const/4 v0, 0x1

    goto :goto_1c

    :cond_2a
    move-wide/from16 v18, v8

    long-to-double v7, v11

    double-to-long v9, v7

    cmp-long v9, v9, v11

    if-nez v9, :cond_2c

    if-lez v4, :cond_2b

    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->y:[D

    array-length v10, v9

    if-ge v4, v10, :cond_2b

    aget-wide v9, v9, v4

    div-double/2addr v7, v9

    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_29

    goto :goto_1b

    :cond_2b
    if-gez v4, :cond_2c

    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->y:[D

    array-length v10, v9

    neg-int v10, v10

    if-le v4, v10, :cond_2c

    neg-int v0, v4

    aget-wide v9, v9, v0

    mul-double/2addr v7, v9

    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_29

    goto :goto_1b

    :cond_2c
    move-wide/from16 v7, v18

    :goto_1c
    if-nez v0, :cond_2e

    const/16 v9, -0x80

    if-le v4, v9, :cond_2e

    const/16 v9, 0x80

    if-ge v4, v9, :cond_2e

    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_2d

    const/4 v0, -0x1

    goto :goto_1d

    :cond_2d
    const/4 v0, 0x1

    :goto_1d
    invoke-static {v0, v11, v12, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->doubleValue(IJI)D

    move-result-wide v7

    move-wide/from16 v18, v7

    const/4 v0, 0x1

    goto :goto_1e

    :cond_2e
    move-wide/from16 v18, v7

    goto :goto_1e

    :cond_2f
    move-wide/from16 v18, v8

    :goto_1e
    if-nez v0, :cond_31

    if-eqz v14, :cond_30

    :try_start_0
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v8, v4

    const/4 v0, 0x1

    goto :goto_1f

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_30
    const/4 v0, 0x1

    sub-int/2addr v5, v0

    invoke-static {v2, v5, v13}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseDouble([CII)D

    move-result-wide v4

    move-wide v8, v4

    goto :goto_1f

    :cond_31
    const/4 v0, 0x1

    move-wide/from16 v8, v18

    :goto_1f
    const/16 v4, 0x4c

    if-eq v3, v4, :cond_32

    const/16 v4, 0x46

    if-eq v3, v4, :cond_32

    const/16 v4, 0x44

    if-eq v3, v4, :cond_32

    const/16 v4, 0x42

    if-eq v3, v4, :cond_32

    const/16 v4, 0x53

    if-ne v3, v4, :cond_35

    :cond_32
    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v3, :cond_33

    :goto_20
    const/16 v3, 0x1a

    goto :goto_22

    :cond_33
    add-int/lit8 v3, v6, 0x1

    aget-char v4, v2, v6

    :goto_21
    move v6, v3

    move v3, v4

    goto :goto_22

    :cond_34
    move-wide/from16 v18, v8

    const/4 v0, 0x1

    :cond_35
    :goto_22
    const/16 v4, 0x20

    if-gt v3, v4, :cond_37

    const-wide/16 v4, 0x1

    shl-long v10, v4, v3

    const-wide v4, 0x100003700L

    and-long/2addr v10, v4

    const-wide/16 v4, 0x0

    cmp-long v7, v10, v4

    if-eqz v7, :cond_37

    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v3, :cond_36

    goto :goto_20

    :cond_36
    add-int/lit8 v3, v6, 0x1

    aget-char v4, v2, v6

    goto :goto_21

    :cond_37
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_38

    goto :goto_23

    :cond_38
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v0, :cond_3b

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_39

    const/16 v3, 0x1a

    goto :goto_24

    :cond_39
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    move v6, v0

    :goto_24
    const/16 v0, 0x20

    :goto_25
    if-gt v3, v0, :cond_3b

    const-wide/16 v4, 0x1

    shl-long v10, v4, v3

    const-wide v12, 0x100003700L

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-eqz v7, :cond_3b

    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v3, :cond_3a

    const/16 v3, 0x1a

    goto :goto_25

    :cond_3a
    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    goto :goto_25

    :cond_3b
    if-eqz v16, :cond_3c

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-wide v8

    :cond_3c
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFieldName()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v7

    cmp-long v2, v5, v3

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
    iget-object v2, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v5, v0, Lcom/alibaba/fastjson2/h;->J:I

    iget v6, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/4 v7, 0x0

    move v8, v5

    :goto_0
    const/16 v9, 0x20

    const/4 v10, 0x1

    if-ge v8, v6, :cond_b

    aget-char v11, v2, v8

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_4

    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v8, v8, 0x1

    aget-char v9, v2, v8

    const/16 v11, 0x75

    if-eq v9, v11, :cond_3

    const/16 v11, 0x78

    if-eq v9, v11, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x4

    :goto_1
    add-int/2addr v8, v10

    goto :goto_4

    :cond_4
    if-ne v11, v1, :cond_a

    iput v7, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v8, v0, Lcom/alibaba/fastjson2/h;->O:I

    add-int/lit8 v8, v8, 0x1

    if-ge v8, v6, :cond_5

    aget-char v1, v2, v8

    goto :goto_2

    :cond_5
    const/16 v1, 0x1a

    :goto_2
    if-gt v1, v9, :cond_6

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v1

    const-wide v13, 0x100003700L

    and-long/2addr v11, v13

    cmp-long v7, v11, v3

    if-eqz v7, :cond_6

    add-int/lit8 v8, v8, 0x1

    aget-char v1, v2, v8

    goto :goto_2

    :cond_6
    const/16 v7, 0x3a

    if-ne v1, v7, :cond_9

    add-int/2addr v8, v10

    if-ne v8, v6, :cond_7

    const/16 v1, 0x1a

    goto :goto_3

    :cond_7
    aget-char v1, v2, v8

    :goto_3
    if-gt v1, v9, :cond_8

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    const-wide v11, 0x100003700L

    and-long/2addr v6, v11

    cmp-long v6, v6, v3

    if-eqz v6, :cond_8

    add-int/lit8 v8, v8, 0x1

    aget-char v1, v2, v8

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v8, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-char v1, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto :goto_5

    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    add-int/lit8 v8, v8, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/h;->O:I

    if-lt v1, v5, :cond_16

    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    if-nez v3, :cond_15

    iget v3, v0, Lcom/alibaba/fastjson2/h;->Q:I

    packed-switch v3, :pswitch_data_0

    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    goto/16 :goto_c

    :pswitch_0
    aget-char v3, v2, v5

    add-int/lit8 v15, v5, 0x1

    aget-char v15, v2, v15

    add-int/lit8 v16, v5, 0x2

    aget-char v10, v2, v16

    add-int/lit8 v16, v5, 0x3

    aget-char v6, v2, v16

    add-int/lit8 v7, v5, 0x4

    aget-char v7, v2, v7

    add-int/lit8 v16, v5, 0x5

    aget-char v14, v2, v16

    add-int/lit8 v16, v5, 0x6

    aget-char v13, v2, v16

    add-int/lit8 v16, v5, 0x7

    aget-char v12, v2, v16

    add-int/lit8 v16, v5, 0x8

    aget-char v9, v2, v16

    add-int/lit8 v16, v5, 0x9

    aget-char v11, v2, v16

    add-int/lit8 v16, v5, 0xa

    aget-char v8, v2, v16

    add-int/lit8 v16, v5, 0xb

    aget-char v4, v2, v16

    add-int/lit8 v16, v5, 0xc

    move/from16 v20, v1

    aget-char v1, v2, v16

    add-int/lit8 v16, v5, 0xd

    aget-char v0, v2, v16

    add-int/lit8 v16, v5, 0xe

    move/from16 v21, v0

    aget-char v0, v2, v16

    add-int/lit8 v16, v5, 0xf

    move/from16 v22, v5

    aget-char v5, v2, v16

    move-object/from16 v16, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_c

    and-int/lit16 v2, v15, 0xff

    if-ne v2, v15, :cond_c

    and-int/lit16 v2, v10, 0xff

    if-ne v2, v10, :cond_c

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_c

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_c

    and-int/lit16 v2, v14, 0xff

    if-ne v2, v14, :cond_c

    and-int/lit16 v2, v13, 0xff

    if-ne v2, v13, :cond_c

    and-int/lit16 v2, v12, 0xff

    if-ne v2, v12, :cond_c

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_c

    and-int/lit16 v2, v11, 0xff

    if-ne v2, v11, :cond_c

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_c

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_c

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_c

    move/from16 v2, v21

    move/from16 v21, v9

    and-int/lit16 v9, v2, 0xff

    if-ne v9, v2, :cond_c

    and-int/lit16 v9, v0, 0xff

    if-ne v9, v0, :cond_c

    and-int/lit16 v9, v5, 0xff

    if-ne v9, v5, :cond_c

    move v9, v11

    int-to-long v11, v12

    const/16 v19, 0x38

    shl-long v11, v11, v19

    move/from16 v23, v8

    move/from16 v24, v9

    int-to-long v8, v13

    const/16 v13, 0x30

    shl-long/2addr v8, v13

    add-long/2addr v11, v8

    int-to-long v8, v14

    const/16 v13, 0x28

    shl-long/2addr v8, v13

    add-long/2addr v11, v8

    int-to-long v7, v7

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v11, v7

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    int-to-long v6, v10

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    int-to-long v6, v15

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v11, v6

    int-to-long v6, v3

    add-long/2addr v11, v6

    int-to-long v5, v5

    const/16 v3, 0x38

    shl-long/2addr v5, v3

    int-to-long v7, v0

    const/16 v0, 0x30

    shl-long/2addr v7, v0

    add-long/2addr v5, v7

    int-to-long v2, v2

    const/16 v0, 0x28

    shl-long/2addr v2, v0

    add-long/2addr v5, v2

    int-to-long v0, v1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v5, v0

    int-to-long v0, v4

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-long/2addr v5, v0

    move/from16 v0, v23

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    add-long/2addr v5, v0

    move/from16 v0, v24

    int-to-long v0, v0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    add-long/2addr v5, v0

    move/from16 v0, v21

    int-to-long v0, v0

    add-long/2addr v5, v0

    goto/16 :goto_9

    :pswitch_1
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    add-int/lit8 v7, v22, 0x7

    aget-char v7, v16, v7

    add-int/lit8 v8, v22, 0x8

    aget-char v8, v16, v8

    add-int/lit8 v9, v22, 0x9

    aget-char v9, v16, v9

    add-int/lit8 v10, v22, 0xa

    aget-char v10, v16, v10

    add-int/lit8 v11, v22, 0xb

    aget-char v11, v16, v11

    add-int/lit8 v12, v22, 0xc

    aget-char v12, v16, v12

    add-int/lit8 v13, v22, 0xd

    aget-char v13, v16, v13

    add-int/lit8 v14, v22, 0xe

    aget-char v14, v16, v14

    and-int/lit16 v15, v0, 0xff

    if-ne v15, v0, :cond_c

    and-int/lit16 v15, v1, 0xff

    if-ne v15, v1, :cond_c

    and-int/lit16 v15, v2, 0xff

    if-ne v15, v2, :cond_c

    and-int/lit16 v15, v3, 0xff

    if-ne v15, v3, :cond_c

    and-int/lit16 v15, v4, 0xff

    if-ne v15, v4, :cond_c

    and-int/lit16 v15, v5, 0xff

    if-ne v15, v5, :cond_c

    and-int/lit16 v15, v6, 0xff

    if-ne v15, v6, :cond_c

    and-int/lit16 v15, v7, 0xff

    if-ne v15, v7, :cond_c

    and-int/lit16 v15, v8, 0xff

    if-ne v15, v8, :cond_c

    and-int/lit16 v15, v9, 0xff

    if-ne v15, v9, :cond_c

    and-int/lit16 v15, v10, 0xff

    if-ne v15, v10, :cond_c

    and-int/lit16 v15, v11, 0xff

    if-ne v15, v11, :cond_c

    and-int/lit16 v15, v12, 0xff

    if-ne v15, v12, :cond_c

    and-int/lit16 v15, v13, 0xff

    if-ne v15, v13, :cond_c

    and-int/lit16 v15, v14, 0xff

    if-ne v15, v14, :cond_c

    move v15, v7

    int-to-long v6, v6

    const/16 v18, 0x30

    shl-long v6, v6, v18

    move/from16 v21, v8

    move/from16 v23, v9

    int-to-long v8, v5

    const/16 v5, 0x28

    shl-long/2addr v8, v5

    add-long/2addr v6, v8

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    add-long/2addr v6, v4

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    add-long/2addr v6, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v6, v2

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v6, v1

    int-to-long v0, v0

    add-long/2addr v0, v6

    int-to-long v2, v14

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    int-to-long v4, v13

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    int-to-long v4, v12

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    int-to-long v4, v11

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    int-to-long v4, v10

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    move/from16 v4, v23

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    move/from16 v4, v21

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    move v4, v15

    goto/16 :goto_6

    :pswitch_2
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    add-int/lit8 v7, v22, 0x7

    aget-char v7, v16, v7

    add-int/lit8 v8, v22, 0x8

    aget-char v8, v16, v8

    add-int/lit8 v9, v22, 0x9

    aget-char v9, v16, v9

    add-int/lit8 v10, v22, 0xa

    aget-char v10, v16, v10

    add-int/lit8 v11, v22, 0xb

    aget-char v11, v16, v11

    add-int/lit8 v12, v22, 0xc

    aget-char v12, v16, v12

    add-int/lit8 v13, v22, 0xd

    aget-char v13, v16, v13

    and-int/lit16 v14, v0, 0xff

    if-ne v14, v0, :cond_c

    and-int/lit16 v14, v1, 0xff

    if-ne v14, v1, :cond_c

    and-int/lit16 v14, v2, 0xff

    if-ne v14, v2, :cond_c

    and-int/lit16 v14, v3, 0xff

    if-ne v14, v3, :cond_c

    and-int/lit16 v14, v4, 0xff

    if-ne v14, v4, :cond_c

    and-int/lit16 v14, v5, 0xff

    if-ne v14, v5, :cond_c

    and-int/lit16 v14, v6, 0xff

    if-ne v14, v6, :cond_c

    and-int/lit16 v14, v7, 0xff

    if-ne v14, v7, :cond_c

    and-int/lit16 v14, v8, 0xff

    if-ne v14, v8, :cond_c

    and-int/lit16 v14, v9, 0xff

    if-ne v14, v9, :cond_c

    and-int/lit16 v14, v10, 0xff

    if-ne v14, v10, :cond_c

    and-int/lit16 v14, v11, 0xff

    if-ne v14, v11, :cond_c

    and-int/lit16 v14, v12, 0xff

    if-ne v14, v12, :cond_c

    and-int/lit16 v14, v13, 0xff

    if-ne v14, v13, :cond_c

    int-to-long v14, v5

    const/16 v5, 0x28

    shl-long/2addr v14, v5

    int-to-long v4, v4

    const/16 v17, 0x20

    shl-long v4, v4, v17

    add-long/2addr v14, v4

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    add-long/2addr v14, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v14, v2

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v14, v1

    int-to-long v0, v0

    add-long/2addr v0, v14

    int-to-long v2, v13

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    int-to-long v4, v12

    const/16 v12, 0x30

    shl-long/2addr v4, v12

    add-long/2addr v2, v4

    int-to-long v4, v11

    const/16 v11, 0x28

    shl-long/2addr v4, v11

    add-long/2addr v2, v4

    int-to-long v4, v10

    const/16 v10, 0x20

    shl-long/2addr v4, v10

    add-long/2addr v2, v4

    int-to-long v4, v9

    const/16 v9, 0x18

    shl-long/2addr v4, v9

    add-long/2addr v2, v4

    int-to-long v4, v8

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    int-to-long v4, v7

    const/16 v7, 0x8

    shl-long/2addr v4, v7

    add-long/2addr v2, v4

    int-to-long v4, v6

    goto/16 :goto_7

    :pswitch_3
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    add-int/lit8 v7, v22, 0x7

    aget-char v7, v16, v7

    add-int/lit8 v8, v22, 0x8

    aget-char v8, v16, v8

    add-int/lit8 v9, v22, 0x9

    aget-char v9, v16, v9

    add-int/lit8 v10, v22, 0xa

    aget-char v10, v16, v10

    add-int/lit8 v11, v22, 0xb

    aget-char v11, v16, v11

    add-int/lit8 v12, v22, 0xc

    aget-char v12, v16, v12

    and-int/lit16 v13, v0, 0xff

    if-ne v13, v0, :cond_c

    and-int/lit16 v13, v1, 0xff

    if-ne v13, v1, :cond_c

    and-int/lit16 v13, v2, 0xff

    if-ne v13, v2, :cond_c

    and-int/lit16 v13, v3, 0xff

    if-ne v13, v3, :cond_c

    and-int/lit16 v13, v4, 0xff

    if-ne v13, v4, :cond_c

    and-int/lit16 v13, v5, 0xff

    if-ne v13, v5, :cond_c

    and-int/lit16 v13, v6, 0xff

    if-ne v13, v6, :cond_c

    and-int/lit16 v13, v7, 0xff

    if-ne v13, v7, :cond_c

    and-int/lit16 v13, v8, 0xff

    if-ne v13, v8, :cond_c

    and-int/lit16 v13, v9, 0xff

    if-ne v13, v9, :cond_c

    and-int/lit16 v13, v10, 0xff

    if-ne v13, v10, :cond_c

    and-int/lit16 v13, v11, 0xff

    if-ne v13, v11, :cond_c

    and-int/lit16 v13, v12, 0xff

    if-ne v13, v12, :cond_c

    int-to-long v13, v4

    const/16 v4, 0x20

    shl-long/2addr v13, v4

    int-to-long v3, v3

    const/16 v15, 0x18

    shl-long/2addr v3, v15

    add-long/2addr v13, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v13, v2

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v13, v1

    int-to-long v0, v0

    add-long/2addr v0, v13

    int-to-long v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    int-to-long v11, v11

    const/16 v4, 0x30

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    int-to-long v10, v10

    const/16 v4, 0x28

    shl-long/2addr v10, v4

    add-long/2addr v2, v10

    int-to-long v9, v9

    const/16 v4, 0x20

    shl-long/2addr v9, v4

    add-long/2addr v2, v9

    int-to-long v8, v8

    const/16 v4, 0x18

    shl-long/2addr v8, v4

    add-long/2addr v2, v8

    int-to-long v7, v7

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    add-long/2addr v2, v7

    int-to-long v6, v6

    const/16 v4, 0x8

    shl-long/2addr v6, v4

    add-long/2addr v2, v6

    int-to-long v4, v5

    goto/16 :goto_7

    :pswitch_4
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    add-int/lit8 v7, v22, 0x7

    aget-char v7, v16, v7

    add-int/lit8 v8, v22, 0x8

    aget-char v8, v16, v8

    add-int/lit8 v9, v22, 0x9

    aget-char v9, v16, v9

    add-int/lit8 v10, v22, 0xa

    aget-char v10, v16, v10

    add-int/lit8 v11, v22, 0xb

    aget-char v11, v16, v11

    and-int/lit16 v12, v0, 0xff

    if-ne v12, v0, :cond_c

    and-int/lit16 v12, v1, 0xff

    if-ne v12, v1, :cond_c

    and-int/lit16 v12, v2, 0xff

    if-ne v12, v2, :cond_c

    and-int/lit16 v12, v3, 0xff

    if-ne v12, v3, :cond_c

    and-int/lit16 v12, v4, 0xff

    if-ne v12, v4, :cond_c

    and-int/lit16 v12, v5, 0xff

    if-ne v12, v5, :cond_c

    and-int/lit16 v12, v6, 0xff

    if-ne v12, v6, :cond_c

    and-int/lit16 v12, v7, 0xff

    if-ne v12, v7, :cond_c

    and-int/lit16 v12, v8, 0xff

    if-ne v12, v8, :cond_c

    and-int/lit16 v12, v9, 0xff

    if-ne v12, v9, :cond_c

    and-int/lit16 v12, v10, 0xff

    if-ne v12, v10, :cond_c

    and-int/lit16 v12, v11, 0xff

    if-ne v12, v11, :cond_c

    const/16 v12, 0x18

    shl-int/2addr v3, v12

    const/16 v12, 0x10

    shl-int/2addr v2, v12

    add-int/2addr v3, v2

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    int-to-long v0, v3

    int-to-long v2, v11

    const/16 v11, 0x38

    shl-long/2addr v2, v11

    int-to-long v10, v10

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    add-long/2addr v2, v10

    int-to-long v9, v9

    const/16 v11, 0x28

    shl-long/2addr v9, v11

    add-long/2addr v2, v9

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long/2addr v2, v8

    int-to-long v7, v7

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    add-long/2addr v2, v7

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    int-to-long v5, v5

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    add-long/2addr v2, v5

    :goto_6
    int-to-long v4, v4

    :goto_7
    add-long v5, v2, v4

    move-wide v2, v0

    move-wide v4, v5

    goto/16 :goto_a

    :pswitch_5
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    add-int/lit8 v7, v22, 0x7

    aget-char v7, v16, v7

    add-int/lit8 v8, v22, 0x8

    aget-char v8, v16, v8

    add-int/lit8 v9, v22, 0x9

    aget-char v9, v16, v9

    add-int/lit8 v10, v22, 0xa

    aget-char v10, v16, v10

    and-int/lit16 v11, v0, 0xff

    if-ne v11, v0, :cond_c

    and-int/lit16 v11, v1, 0xff

    if-ne v11, v1, :cond_c

    and-int/lit16 v11, v2, 0xff

    if-ne v11, v2, :cond_c

    and-int/lit16 v11, v3, 0xff

    if-ne v11, v3, :cond_c

    and-int/lit16 v11, v4, 0xff

    if-ne v11, v4, :cond_c

    and-int/lit16 v11, v5, 0xff

    if-ne v11, v5, :cond_c

    and-int/lit16 v11, v6, 0xff

    if-ne v11, v6, :cond_c

    and-int/lit16 v11, v7, 0xff

    if-ne v11, v7, :cond_c

    and-int/lit16 v11, v8, 0xff

    if-ne v11, v8, :cond_c

    and-int/lit16 v11, v9, 0xff

    if-ne v11, v9, :cond_c

    and-int/lit16 v11, v10, 0xff

    if-ne v11, v10, :cond_c

    const/16 v11, 0x10

    shl-int/2addr v2, v11

    const/16 v11, 0x8

    shl-int/2addr v1, v11

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    int-to-long v11, v2

    int-to-long v0, v10

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v9, v9

    const/16 v2, 0x30

    shl-long/2addr v9, v2

    add-long/2addr v0, v9

    int-to-long v8, v8

    const/16 v2, 0x28

    shl-long/2addr v8, v2

    add-long/2addr v0, v8

    int-to-long v7, v7

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    add-long/2addr v0, v7

    int-to-long v6, v6

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    add-long/2addr v0, v6

    int-to-long v5, v5

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    add-long/2addr v0, v5

    int-to-long v4, v4

    const/16 v2, 0x8

    shl-long/2addr v4, v2

    add-long/2addr v0, v4

    int-to-long v2, v3

    goto/16 :goto_8

    :pswitch_6
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    add-int/lit8 v7, v22, 0x7

    aget-char v7, v16, v7

    add-int/lit8 v8, v22, 0x8

    aget-char v8, v16, v8

    add-int/lit8 v9, v22, 0x9

    aget-char v9, v16, v9

    and-int/lit16 v10, v0, 0xff

    if-ne v10, v0, :cond_c

    and-int/lit16 v10, v1, 0xff

    if-ne v10, v1, :cond_c

    and-int/lit16 v10, v2, 0xff

    if-ne v10, v2, :cond_c

    and-int/lit16 v10, v3, 0xff

    if-ne v10, v3, :cond_c

    and-int/lit16 v10, v4, 0xff

    if-ne v10, v4, :cond_c

    and-int/lit16 v10, v5, 0xff

    if-ne v10, v5, :cond_c

    and-int/lit16 v10, v6, 0xff

    if-ne v10, v6, :cond_c

    and-int/lit16 v10, v7, 0xff

    if-ne v10, v7, :cond_c

    and-int/lit16 v10, v8, 0xff

    if-ne v10, v8, :cond_c

    and-int/lit16 v10, v9, 0xff

    if-ne v10, v9, :cond_c

    const/16 v10, 0x8

    shl-int/2addr v1, v10

    add-int/2addr v1, v0

    int-to-long v11, v1

    int-to-long v0, v9

    const/16 v9, 0x38

    shl-long/2addr v0, v9

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    add-long/2addr v0, v8

    int-to-long v7, v7

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    add-long/2addr v0, v7

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    add-long/2addr v0, v6

    int-to-long v5, v5

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    add-long/2addr v0, v5

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    int-to-long v3, v3

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    int-to-long v2, v2

    :goto_8
    add-long v5, v0, v2

    goto/16 :goto_9

    :pswitch_7
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    add-int/lit8 v7, v22, 0x7

    aget-char v7, v16, v7

    add-int/lit8 v8, v22, 0x8

    aget-char v8, v16, v8

    and-int/lit16 v9, v0, 0xff

    if-ne v9, v0, :cond_c

    and-int/lit16 v9, v1, 0xff

    if-ne v9, v1, :cond_c

    and-int/lit16 v9, v2, 0xff

    if-ne v9, v2, :cond_c

    and-int/lit16 v9, v3, 0xff

    if-ne v9, v3, :cond_c

    and-int/lit16 v9, v4, 0xff

    if-ne v9, v4, :cond_c

    and-int/lit16 v9, v5, 0xff

    if-ne v9, v5, :cond_c

    and-int/lit16 v9, v6, 0xff

    if-ne v9, v6, :cond_c

    and-int/lit16 v9, v7, 0xff

    if-ne v9, v7, :cond_c

    and-int/lit16 v9, v8, 0xff

    if-ne v9, v8, :cond_c

    int-to-long v11, v0

    int-to-long v8, v8

    const/16 v0, 0x38

    shl-long/2addr v8, v0

    int-to-long v13, v7

    const/16 v0, 0x30

    shl-long/2addr v13, v0

    add-long/2addr v8, v13

    int-to-long v6, v6

    const/16 v0, 0x28

    shl-long/2addr v6, v0

    add-long/2addr v8, v6

    int-to-long v5, v5

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    add-long/2addr v8, v5

    int-to-long v4, v4

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    add-long/2addr v8, v4

    int-to-long v3, v3

    const/16 v0, 0x10

    shl-long/2addr v3, v0

    add-long/2addr v8, v3

    int-to-long v2, v2

    const/16 v0, 0x8

    shl-long/2addr v2, v0

    add-long/2addr v8, v2

    int-to-long v0, v1

    add-long v5, v8, v0

    :goto_9
    move-wide v4, v5

    move-wide v2, v11

    :goto_a
    const-wide/16 v0, -0x1

    goto/16 :goto_e

    :pswitch_8
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    add-int/lit8 v7, v22, 0x7

    aget-char v7, v16, v7

    and-int/lit16 v8, v0, 0xff

    if-ne v8, v0, :cond_c

    and-int/lit16 v8, v1, 0xff

    if-ne v8, v1, :cond_c

    and-int/lit16 v8, v2, 0xff

    if-ne v8, v2, :cond_c

    and-int/lit16 v8, v3, 0xff

    if-ne v8, v3, :cond_c

    and-int/lit16 v8, v4, 0xff

    if-ne v8, v4, :cond_c

    and-int/lit16 v8, v5, 0xff

    if-ne v8, v5, :cond_c

    and-int/lit16 v8, v6, 0xff

    if-ne v8, v6, :cond_c

    and-int/lit16 v8, v7, 0xff

    if-ne v8, v7, :cond_c

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    int-to-long v9, v6

    const/16 v6, 0x30

    shl-long/2addr v9, v6

    add-long/2addr v7, v9

    int-to-long v5, v5

    const/16 v9, 0x28

    shl-long/2addr v5, v9

    add-long/2addr v7, v5

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v7, v4

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    add-long/2addr v7, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v7, v2

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v7, v1

    int-to-long v0, v0

    add-long v11, v7, v0

    goto/16 :goto_b

    :pswitch_9
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    add-int/lit8 v6, v22, 0x6

    aget-char v6, v16, v6

    and-int/lit16 v7, v0, 0xff

    if-ne v7, v0, :cond_c

    and-int/lit16 v7, v1, 0xff

    if-ne v7, v1, :cond_c

    and-int/lit16 v7, v2, 0xff

    if-ne v7, v2, :cond_c

    and-int/lit16 v7, v3, 0xff

    if-ne v7, v3, :cond_c

    and-int/lit16 v7, v4, 0xff

    if-ne v7, v4, :cond_c

    and-int/lit16 v7, v5, 0xff

    if-ne v7, v5, :cond_c

    and-int/lit16 v7, v6, 0xff

    if-ne v7, v6, :cond_c

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    int-to-long v8, v5

    const/16 v5, 0x28

    shl-long/2addr v8, v5

    add-long/2addr v6, v8

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    add-long/2addr v6, v4

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    add-long/2addr v6, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v6, v2

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v6, v1

    int-to-long v0, v0

    add-long v11, v6, v0

    goto/16 :goto_b

    :pswitch_a
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    add-int/lit8 v5, v22, 0x5

    aget-char v5, v16, v5

    and-int/lit16 v6, v0, 0xff

    if-ne v6, v0, :cond_c

    and-int/lit16 v6, v1, 0xff

    if-ne v6, v1, :cond_c

    and-int/lit16 v6, v2, 0xff

    if-ne v6, v2, :cond_c

    and-int/lit16 v6, v3, 0xff

    if-ne v6, v3, :cond_c

    and-int/lit16 v6, v4, 0xff

    if-ne v6, v4, :cond_c

    and-int/lit16 v6, v5, 0xff

    if-ne v6, v5, :cond_c

    int-to-long v5, v5

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    int-to-long v7, v4

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    int-to-long v3, v3

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    add-long/2addr v5, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v5, v2

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v5, v1

    int-to-long v0, v0

    add-long v11, v5, v0

    goto/16 :goto_b

    :pswitch_b
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    add-int/lit8 v5, v22, 0x4

    aget-char v4, v16, v5

    and-int/lit16 v5, v0, 0xff

    if-ne v5, v0, :cond_c

    and-int/lit16 v5, v1, 0xff

    if-ne v5, v1, :cond_c

    and-int/lit16 v5, v2, 0xff

    if-ne v5, v2, :cond_c

    and-int/lit16 v5, v3, 0xff

    if-ne v5, v3, :cond_c

    and-int/lit16 v5, v4, 0xff

    if-ne v5, v4, :cond_c

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    add-long/2addr v4, v6

    int-to-long v2, v2

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    add-long/2addr v4, v2

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v4, v1

    int-to-long v0, v0

    add-long v11, v4, v0

    goto/16 :goto_b

    :pswitch_c
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    add-int/lit8 v5, v22, 0x3

    aget-char v3, v16, v5

    and-int/lit16 v4, v0, 0xff

    if-ne v4, v0, :cond_c

    and-int/lit16 v4, v1, 0xff

    if-ne v4, v1, :cond_c

    and-int/lit16 v4, v2, 0xff

    if-ne v4, v2, :cond_c

    and-int/lit16 v4, v3, 0xff

    if-ne v4, v3, :cond_c

    const/16 v4, 0x18

    shl-int/2addr v3, v4

    const/16 v4, 0x10

    shl-int/2addr v2, v4

    add-int/2addr v3, v2

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    int-to-long v11, v3

    goto :goto_b

    :pswitch_d
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    add-int/lit8 v5, v22, 0x2

    aget-char v2, v16, v5

    and-int/lit16 v3, v0, 0xff

    if-ne v3, v0, :cond_c

    and-int/lit16 v3, v1, 0xff

    if-ne v3, v1, :cond_c

    and-int/lit16 v3, v2, 0xff

    if-ne v3, v2, :cond_c

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    const/16 v3, 0x8

    shl-int/2addr v1, v3

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    int-to-long v11, v2

    goto :goto_b

    :pswitch_e
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    add-int/lit8 v5, v22, 0x1

    aget-char v1, v16, v5

    and-int/lit16 v2, v0, 0xff

    if-ne v2, v0, :cond_c

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_c

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    add-int/2addr v1, v0

    int-to-long v11, v1

    goto :goto_b

    :pswitch_f
    move/from16 v20, v1

    move-object/from16 v16, v2

    move/from16 v22, v5

    aget-char v0, v16, v22

    and-int/lit16 v1, v0, 0xff

    if-ne v1, v0, :cond_c

    int-to-long v11, v0

    :goto_b
    move-wide v2, v11

    const-wide/16 v0, -0x1

    goto :goto_d

    :cond_c
    :goto_c
    const-wide/16 v0, -0x1

    const-wide/16 v2, -0x1

    :goto_d
    const-wide/16 v4, -0x1

    :goto_e
    cmp-long v6, v2, v0

    if-eqz v6, :cond_12

    cmp-long v0, v4, v0

    if-eqz v0, :cond_f

    xor-long v0, v2, v4

    const/16 v6, 0x20

    ushr-long v6, v0, v6

    xor-long/2addr v0, v6

    long-to-int v0, v0

    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->j:[Lcom/alibaba/fastjson2/JSONFactory$e;

    array-length v1, v6

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    and-int v7, v0, v1

    aget-object v0, v6, v7

    if-nez v0, :cond_e

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    if-eqz v0, :cond_d

    move/from16 v8, v20

    move/from16 v9, v22

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    move/from16 v8, v20

    move/from16 v9, v22

    new-instance v0, Ljava/lang/String;

    sub-int v1, v8, v9

    move-object/from16 v10, v16

    invoke-direct {v0, v10, v9, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_f
    move-object v8, v0

    new-instance v9, Lcom/alibaba/fastjson2/JSONFactory$e;

    move-object v0, v9

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONFactory$e;-><init>(Ljava/lang/String;JJ)V

    aput-object v9, v6, v7

    return-object v8

    :cond_e
    move-object/from16 v1, p0

    move-object/from16 v10, v16

    move/from16 v8, v20

    move/from16 v9, v22

    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONFactory$e;->b:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_13

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONFactory$e;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONFactory$e;->a:Ljava/lang/String;

    return-object v0

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v10, v16

    move/from16 v8, v20

    move/from16 v9, v22

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v4, v2

    long-to-int v0, v4

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->i:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int/2addr v0, v5

    aget-object v5, v4, v0

    if-nez v5, :cond_11

    iget-object v1, v1, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_10
    new-instance v1, Ljava/lang/String;

    sub-int v5, v8, v9

    invoke-direct {v1, v10, v9, v5}, Ljava/lang/String;-><init>([CII)V

    :goto_10
    new-instance v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;

    invoke-direct {v5, v1, v2, v3}, Lcom/alibaba/fastjson2/util/NameCacheEntry;-><init>(Ljava/lang/String;J)V

    aput-object v5, v4, v0

    return-object v1

    :cond_11
    iget-wide v6, v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_13

    iget-object v0, v5, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;

    return-object v0

    :cond_12
    move-object/from16 v1, p0

    move-object/from16 v10, v16

    move/from16 v8, v20

    move/from16 v9, v22

    :cond_13
    iget-object v0, v1, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/String;

    sub-int v1, v8, v9

    invoke-direct {v0, v10, v9, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_15
    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->getFieldName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/h;->w:[C

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

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readFieldNameHashCodeUnquote()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/alibaba/fastjson2/h;->J:I

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fieldName input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", previous fieldName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

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

    iput v6, v0, Lcom/alibaba/fastjson2/h;->J:I

    iget v7, v0, Lcom/alibaba/fastjson2/h;->z:I

    add-int/lit8 v8, v6, 0x9

    if-ge v8, v7, :cond_f

    aget-char v5, v1, v6

    add-int/lit8 v9, v6, 0x1

    aget-char v10, v1, v9

    add-int/lit8 v13, v6, 0x2

    aget-char v11, v1, v13

    add-int/lit8 v12, v6, 0x3

    aget-char v14, v1, v12

    add-int/lit8 v15, v6, 0x4

    aget-char v3, v1, v15

    add-int/lit8 v4, v6, 0x5

    move/from16 v20, v8

    aget-char v8, v1, v4

    move/from16 v21, v7

    add-int/lit8 v7, v6, 0x6

    move/from16 v22, v4

    aget-char v4, v1, v7

    move/from16 v23, v7

    add-int/lit8 v7, v6, 0x7

    move/from16 v24, v4

    aget-char v4, v1, v7

    move/from16 v25, v7

    add-int/lit8 v7, v6, 0x8

    move/from16 v26, v6

    aget-char v6, v1, v7

    if-ne v5, v2, :cond_6

    move-object/from16 v27, v1

    :cond_5
    move v4, v2

    goto/16 :goto_3

    :cond_6
    if-ne v10, v2, :cond_7

    if-eqz v5, :cond_7

    move-object/from16 v27, v1

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_8

    const/16 v1, 0xff

    if-gt v5, v1, :cond_8

    int-to-byte v1, v5

    int-to-long v3, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v9, v0, Lcom/alibaba/fastjson2/h;->O:I

    move v6, v13

    :goto_2
    const-wide/16 v7, 0x0

    move-wide/from16 v28, v3

    move v4, v2

    move-wide/from16 v1, v28

    goto/16 :goto_5

    :cond_7
    move-object/from16 v27, v1

    :cond_8
    if-ne v11, v2, :cond_9

    if-eqz v5, :cond_9

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_9

    if-eq v10, v1, :cond_9

    const/16 v1, 0xff

    if-gt v5, v1, :cond_9

    if-gt v10, v1, :cond_9

    int-to-byte v1, v10

    const/16 v3, 0x8

    shl-int/2addr v1, v3

    add-int/2addr v1, v5

    int-to-long v3, v1

    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v13, v0, Lcom/alibaba/fastjson2/h;->O:I

    move v6, v12

    goto :goto_2

    :cond_9
    if-ne v14, v2, :cond_a

    if-eqz v5, :cond_a

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_a

    if-eq v10, v1, :cond_a

    if-eq v11, v1, :cond_a

    const/16 v1, 0xff

    if-gt v5, v1, :cond_a

    if-gt v10, v1, :cond_a

    if-gt v11, v1, :cond_a

    int-to-byte v1, v11

    const/16 v3, 0x10

    shl-int/2addr v1, v3

    const/16 v3, 0x8

    shl-int/lit8 v4, v10, 0x8

    add-int/2addr v1, v4

    add-int/2addr v1, v5

    int-to-long v3, v1

    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v12, v0, Lcom/alibaba/fastjson2/h;->O:I

    move v6, v15

    goto :goto_2

    :cond_a
    if-ne v3, v2, :cond_b

    if-eqz v5, :cond_b

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_b

    if-eq v10, v1, :cond_b

    if-eq v11, v1, :cond_b

    if-eq v14, v1, :cond_b

    const/16 v1, 0xff

    if-gt v5, v1, :cond_b

    if-gt v10, v1, :cond_b

    if-gt v11, v1, :cond_b

    if-gt v14, v1, :cond_b

    int-to-byte v1, v14

    const/16 v3, 0x18

    shl-int/2addr v1, v3

    const/16 v3, 0x10

    shl-int/lit8 v4, v11, 0x10

    add-int/2addr v1, v4

    const/16 v3, 0x8

    shl-int/lit8 v4, v10, 0x8

    add-int/2addr v1, v4

    add-int/2addr v1, v5

    int-to-long v3, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v15, v0, Lcom/alibaba/fastjson2/h;->O:I

    move/from16 v6, v22

    goto :goto_2

    :cond_b
    if-ne v8, v2, :cond_c

    if-eqz v5, :cond_c

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_c

    if-eq v10, v1, :cond_c

    if-eq v11, v1, :cond_c

    if-eq v14, v1, :cond_c

    if-eq v3, v1, :cond_c

    const/16 v1, 0xff

    if-gt v5, v1, :cond_c

    if-gt v10, v1, :cond_c

    if-gt v11, v1, :cond_c

    if-gt v14, v1, :cond_c

    if-gt v3, v1, :cond_c

    int-to-byte v1, v3

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    int-to-long v6, v14

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    add-long/2addr v3, v6

    int-to-long v6, v11

    const/16 v1, 0x10

    shl-long/2addr v6, v1

    add-long/2addr v3, v6

    int-to-long v6, v10

    const/16 v1, 0x8

    shl-long/2addr v6, v1

    add-long/2addr v3, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v1, 0x5

    iput v1, v0, Lcom/alibaba/fastjson2/h;->Q:I

    move/from16 v6, v22

    iput v6, v0, Lcom/alibaba/fastjson2/h;->O:I

    move/from16 v6, v23

    goto/16 :goto_2

    :cond_c
    move/from16 v1, v24

    if-ne v1, v2, :cond_d

    if-eqz v5, :cond_d

    const/16 v9, 0x5c

    if-eq v5, v9, :cond_d

    if-eq v10, v9, :cond_d

    if-eq v11, v9, :cond_d

    if-eq v14, v9, :cond_d

    if-eq v3, v9, :cond_d

    if-eq v8, v9, :cond_d

    const/16 v9, 0xff

    if-gt v5, v9, :cond_d

    if-gt v10, v9, :cond_d

    if-gt v11, v9, :cond_d

    if-gt v14, v9, :cond_d

    if-gt v3, v9, :cond_d

    if-gt v8, v9, :cond_d

    int-to-byte v1, v8

    int-to-long v6, v1

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    int-to-long v3, v3

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    add-long/2addr v6, v3

    int-to-long v3, v14

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-long/2addr v6, v3

    int-to-long v3, v11

    const/16 v1, 0x10

    shl-long/2addr v3, v1

    add-long/2addr v6, v3

    int-to-long v3, v10

    const/16 v1, 0x8

    shl-long/2addr v3, v1

    add-long/2addr v6, v3

    int-to-long v3, v5

    add-long/2addr v3, v6

    const/4 v1, 0x6

    iput v1, v0, Lcom/alibaba/fastjson2/h;->Q:I

    move/from16 v6, v23

    iput v6, v0, Lcom/alibaba/fastjson2/h;->O:I

    move/from16 v6, v25

    goto/16 :goto_2

    :cond_d
    if-ne v4, v2, :cond_e

    if-eqz v5, :cond_e

    const/16 v9, 0x5c

    if-eq v5, v9, :cond_e

    if-eq v10, v9, :cond_e

    if-eq v11, v9, :cond_e

    if-eq v14, v9, :cond_e

    if-eq v3, v9, :cond_e

    if-eq v8, v9, :cond_e

    if-eq v1, v9, :cond_e

    const/16 v9, 0xff

    if-gt v5, v9, :cond_e

    if-gt v10, v9, :cond_e

    if-gt v11, v9, :cond_e

    if-gt v14, v9, :cond_e

    if-gt v3, v9, :cond_e

    if-gt v8, v9, :cond_e

    if-gt v1, v9, :cond_e

    int-to-byte v1, v1

    int-to-long v12, v1

    const/16 v1, 0x30

    shl-long/2addr v12, v1

    int-to-long v8, v8

    const/16 v1, 0x28

    shl-long/2addr v8, v1

    add-long/2addr v12, v8

    int-to-long v3, v3

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    add-long/2addr v12, v3

    int-to-long v3, v14

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-long/2addr v12, v3

    int-to-long v3, v11

    const/16 v1, 0x10

    shl-long/2addr v3, v1

    add-long/2addr v12, v3

    int-to-long v3, v10

    const/16 v1, 0x8

    shl-long/2addr v3, v1

    add-long/2addr v12, v3

    int-to-long v3, v5

    add-long/2addr v3, v12

    const/4 v1, 0x7

    iput v1, v0, Lcom/alibaba/fastjson2/h;->Q:I

    move/from16 v6, v25

    iput v6, v0, Lcom/alibaba/fastjson2/h;->O:I

    move v6, v7

    goto/16 :goto_2

    :cond_e
    if-ne v6, v2, :cond_5

    if-eqz v5, :cond_5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_5

    if-eq v10, v6, :cond_5

    if-eq v11, v6, :cond_5

    if-eq v14, v6, :cond_5

    if-eq v3, v6, :cond_5

    if-eq v8, v6, :cond_5

    if-eq v1, v6, :cond_5

    if-eq v4, v6, :cond_5

    const/16 v6, 0xff

    if-gt v5, v6, :cond_5

    if-gt v10, v6, :cond_5

    if-gt v11, v6, :cond_5

    if-gt v14, v6, :cond_5

    if-gt v3, v6, :cond_5

    if-gt v8, v6, :cond_5

    if-gt v1, v6, :cond_5

    if-gt v4, v6, :cond_5

    int-to-byte v4, v4

    int-to-long v12, v4

    const/16 v4, 0x38

    shl-long/2addr v12, v4

    move v4, v2

    int-to-long v1, v1

    const/16 v6, 0x30

    shl-long/2addr v1, v6

    add-long/2addr v12, v1

    int-to-long v1, v8

    const/16 v6, 0x28

    shl-long/2addr v1, v6

    add-long/2addr v12, v1

    int-to-long v1, v3

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    add-long/2addr v12, v1

    int-to-long v1, v14

    const/16 v3, 0x18

    shl-long/2addr v1, v3

    add-long/2addr v12, v1

    int-to-long v1, v11

    const/16 v3, 0x10

    shl-long/2addr v1, v3

    add-long/2addr v12, v1

    int-to-long v1, v10

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v12, v1

    int-to-long v1, v5

    add-long/2addr v1, v12

    iput v3, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v7, v0, Lcom/alibaba/fastjson2/h;->O:I

    move/from16 v6, v20

    goto :goto_4

    :cond_f
    move-object/from16 v27, v1

    move v4, v2

    move/from16 v26, v6

    move/from16 v21, v7

    :goto_3
    move/from16 v6, v26

    const-wide/16 v1, 0x0

    :goto_4
    const-wide/16 v7, 0x0

    :goto_5
    cmp-long v3, v1, v7

    const/16 v5, 0x78

    const/16 v7, 0x75

    if-nez v3, :cond_17

    move/from16 v3, v21

    const/4 v8, 0x0

    :goto_6
    if-ge v6, v3, :cond_18

    aget-char v9, v27, v6

    if-ne v9, v4, :cond_11

    if-nez v8, :cond_10

    iget v6, v0, Lcom/alibaba/fastjson2/h;->J:I

    goto/16 :goto_e

    :cond_10
    iput v8, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v6, v0, Lcom/alibaba/fastjson2/h;->O:I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    :cond_11
    const/16 v10, 0x5c

    if-ne v9, v10, :cond_14

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v6, v6, 0x1

    aget-char v9, v27, v6

    if-eq v9, v7, :cond_13

    if-eq v9, v5, :cond_12

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v9

    goto :goto_7

    :cond_12
    add-int/lit8 v9, v6, 0x1

    aget-char v9, v27, v9

    add-int/lit8 v6, v6, 0x2

    aget-char v10, v27, v6

    invoke-static {v9, v10}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v9

    goto :goto_7

    :cond_13
    add-int/lit8 v9, v6, 0x1

    aget-char v9, v27, v9

    add-int/lit8 v10, v6, 0x2

    aget-char v10, v27, v10

    add-int/lit8 v11, v6, 0x3

    aget-char v11, v27, v11

    add-int/lit8 v6, v6, 0x4

    aget-char v12, v27, v6

    invoke-static {v9, v10, v11, v12}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v9

    :cond_14
    :goto_7
    const/16 v10, 0xff

    if-gt v9, v10, :cond_16

    const/16 v11, 0x8

    if-ge v8, v11, :cond_16

    if-nez v8, :cond_15

    if-nez v9, :cond_15

    goto/16 :goto_d

    :cond_15
    packed-switch v8, :pswitch_data_0

    const/16 v13, 0x30

    const/16 v14, 0x28

    :goto_8
    const/4 v9, 0x1

    goto/16 :goto_c

    :pswitch_0
    int-to-byte v9, v9

    int-to-long v11, v9

    const/16 v9, 0x38

    shl-long/2addr v11, v9

    const-wide v13, 0xffffffffffffffL

    and-long/2addr v1, v13

    add-long/2addr v1, v11

    const/4 v9, 0x1

    const/16 v13, 0x30

    goto :goto_9

    :pswitch_1
    int-to-byte v9, v9

    int-to-long v11, v9

    const/16 v13, 0x30

    shl-long/2addr v11, v13

    const-wide v14, 0xffffffffffffL

    and-long/2addr v1, v14

    add-long/2addr v1, v11

    const/4 v9, 0x1

    :goto_9
    const/16 v14, 0x28

    goto :goto_c

    :pswitch_2
    const/16 v13, 0x30

    int-to-byte v9, v9

    int-to-long v11, v9

    const/16 v14, 0x28

    shl-long/2addr v11, v14

    const-wide v18, 0xffffffffffL

    goto :goto_a

    :pswitch_3
    const/16 v13, 0x30

    const/16 v14, 0x28

    int-to-byte v9, v9

    int-to-long v11, v9

    const/16 v9, 0x20

    shl-long/2addr v11, v9

    const-wide v18, 0xffffffffL

    goto :goto_a

    :pswitch_4
    const/16 v13, 0x30

    const/16 v14, 0x28

    int-to-byte v9, v9

    const/16 v11, 0x18

    shl-int/2addr v9, v11

    int-to-long v10, v9

    const-wide/32 v18, 0xffffff

    goto :goto_b

    :pswitch_5
    const/16 v13, 0x30

    const/16 v14, 0x28

    int-to-byte v9, v9

    const/16 v10, 0x10

    shl-int/2addr v9, v10

    int-to-long v11, v9

    const-wide/32 v18, 0xffff

    :goto_a
    and-long v1, v1, v18

    add-long/2addr v1, v11

    goto :goto_8

    :pswitch_6
    const/16 v10, 0x10

    const/16 v13, 0x30

    const/16 v14, 0x28

    int-to-byte v9, v9

    const/16 v11, 0x8

    shl-int/2addr v9, v11

    int-to-long v10, v9

    const-wide/16 v18, 0xff

    :goto_b
    and-long v1, v1, v18

    add-long/2addr v1, v10

    goto :goto_8

    :pswitch_7
    const/16 v13, 0x30

    const/16 v14, 0x28

    int-to-byte v1, v9

    int-to-long v1, v1

    goto :goto_8

    :goto_c
    add-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    :cond_16
    :goto_d
    iget v6, v0, Lcom/alibaba/fastjson2/h;->J:I

    const-wide/16 v1, 0x0

    goto :goto_e

    :cond_17
    move/from16 v3, v21

    :cond_18
    :goto_e
    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    if-eqz v10, :cond_19

    goto :goto_12

    :cond_19
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move v8, v6

    const/4 v6, 0x0

    :goto_f
    aget-char v9, v27, v8

    const-wide v10, 0x100000001b3L

    const/16 v12, 0x5c

    if-ne v9, v12, :cond_1c

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v8, v8, 0x1

    aget-char v9, v27, v8

    if-eq v9, v7, :cond_1b

    if-eq v9, v5, :cond_1a

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v9

    :goto_10
    const/4 v13, 0x1

    goto :goto_11

    :cond_1a
    add-int/lit8 v9, v8, 0x1

    aget-char v9, v27, v9

    add-int/lit8 v8, v8, 0x2

    aget-char v13, v27, v8

    invoke-static {v9, v13}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v9

    goto :goto_10

    :cond_1b
    add-int/lit8 v9, v8, 0x1

    aget-char v9, v27, v9

    add-int/lit8 v13, v8, 0x2

    aget-char v13, v27, v13

    add-int/lit8 v14, v8, 0x3

    aget-char v14, v27, v14

    add-int/lit8 v8, v8, 0x4

    aget-char v15, v27, v8

    invoke-static {v9, v13, v14, v15}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v9

    goto :goto_10

    :goto_11
    add-int/2addr v8, v13

    int-to-long v14, v9

    xor-long/2addr v1, v14

    mul-long/2addr v1, v10

    const/16 v14, 0x20

    const-wide/16 v15, 0x0

    goto/16 :goto_17

    :cond_1c
    const/4 v13, 0x1

    if-ne v9, v4, :cond_24

    iput v6, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v8, v0, Lcom/alibaba/fastjson2/h;->O:I

    add-int/lit8 v6, v8, 0x1

    :goto_12
    const/16 v4, 0x1a

    if-ne v6, v3, :cond_1d

    move v5, v6

    :goto_13
    move v6, v4

    goto :goto_14

    :cond_1d
    add-int/lit8 v5, v6, 0x1

    aget-char v6, v27, v6

    :goto_14
    const-wide/16 v7, 0x1

    const/16 v9, 0x20

    if-gt v6, v9, :cond_1f

    shl-long v9, v7, v6

    const-wide v11, 0x100003700L

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1f

    if-ne v5, v3, :cond_1e

    goto :goto_13

    :cond_1e
    add-int/lit8 v6, v5, 0x1

    aget-char v5, v27, v5

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    goto :goto_14

    :cond_1f
    const/16 v9, 0x3a

    if-ne v6, v9, :cond_23

    if-ne v5, v3, :cond_20

    move v6, v5

    move v5, v4

    goto :goto_15

    :cond_20
    add-int/lit8 v6, v5, 0x1

    aget-char v5, v27, v5

    :goto_15
    const/16 v14, 0x20

    :goto_16
    if-gt v5, v14, :cond_22

    shl-long v9, v7, v5

    const-wide v11, 0x100003700L

    and-long/2addr v9, v11

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-eqz v9, :cond_22

    if-ne v6, v3, :cond_21

    move v5, v4

    goto :goto_16

    :cond_21
    add-int/lit8 v5, v6, 0x1

    aget-char v6, v27, v6

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    goto :goto_16

    :cond_22
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-wide v1

    :cond_23
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect \':\', but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    const/16 v14, 0x20

    const-wide/16 v15, 0x0

    add-int/lit8 v8, v8, 0x1

    move/from16 v17, v8

    int-to-long v7, v9

    xor-long/2addr v1, v7

    mul-long/2addr v1, v10

    move/from16 v8, v17

    :goto_17
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x75

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

.method public readFieldNameHashCodeUnquote()J
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    iget-object v4, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    add-int/lit8 v6, v2, -0x1

    iput v6, v0, Lcom/alibaba/fastjson2/h;->J:I

    move v9, v1

    move v8, v5

    const-wide/16 v10, 0x0

    :goto_0
    const/16 v13, 0x5d

    const/16 v14, 0x5b

    const/16 v15, 0xd

    const/16 v1, 0xc

    const-wide v19, 0x100003700L

    const-wide/16 v21, 0x1

    const/16 v6, 0x3a

    const/16 v7, 0x1a

    const/4 v12, 0x1

    if-gt v2, v3, :cond_a

    if-eq v8, v1, :cond_7

    if-eq v8, v15, :cond_7

    if-eq v8, v7, :cond_7

    if-eq v8, v6, :cond_7

    if-eq v8, v14, :cond_7

    if-eq v8, v13, :cond_7

    const/16 v13, 0x7b

    if-eq v8, v13, :cond_7

    const/16 v13, 0x7d

    if-eq v8, v13, :cond_7

    const/16 v13, 0x20

    if-eq v8, v13, :cond_7

    const/16 v13, 0x21

    if-eq v8, v13, :cond_7

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    const/16 v13, 0x5c

    if-ne v8, v13, :cond_3

    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v8, v2, 0x1

    aget-char v2, v4, v2

    const/16 v14, 0x22

    if-eq v2, v14, :cond_2

    if-eq v2, v6, :cond_2

    const/16 v14, 0x40

    if-eq v2, v14, :cond_2

    if-eq v2, v13, :cond_2

    const/16 v13, 0x75

    if-eq v2, v13, :cond_1

    const/16 v13, 0x78

    if-eq v2, v13, :cond_0

    const/16 v13, 0x2a

    if-eq v2, v13, :cond_2

    const/16 v13, 0x2b

    if-eq v2, v13, :cond_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v2

    goto :goto_1

    :cond_0
    aget-char v2, v4, v8

    add-int/lit8 v13, v8, 0x1

    aget-char v13, v4, v13

    invoke-static {v2, v13}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v2

    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_1
    aget-char v2, v4, v8

    add-int/lit8 v13, v8, 0x1

    aget-char v13, v4, v13

    add-int/lit8 v14, v8, 0x2

    aget-char v14, v4, v14

    add-int/lit8 v23, v8, 0x3

    aget-char v15, v4, v23

    invoke-static {v2, v13, v14, v15}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v2

    add-int/lit8 v8, v8, 0x4

    :cond_2
    :goto_1
    :pswitch_0
    move/from16 v24, v8

    move v8, v2

    move/from16 v2, v24

    :cond_3
    const/16 v13, 0xff

    if-gt v8, v13, :cond_6

    const/16 v13, 0x8

    if-ge v9, v13, :cond_6

    if-nez v9, :cond_4

    if-nez v8, :cond_4

    goto :goto_5

    :cond_4
    int-to-byte v1, v8

    packed-switch v9, :pswitch_data_5

    goto :goto_3

    :pswitch_1
    int-to-long v12, v1

    const/16 v1, 0x38

    shl-long/2addr v12, v1

    const-wide v14, 0xffffffffffffffL

    goto :goto_2

    :pswitch_2
    int-to-long v12, v1

    const/16 v1, 0x30

    shl-long/2addr v12, v1

    const-wide v14, 0xffffffffffffL

    goto :goto_2

    :pswitch_3
    int-to-long v12, v1

    const/16 v1, 0x28

    shl-long/2addr v12, v1

    const-wide v14, 0xffffffffffL

    goto :goto_2

    :pswitch_4
    int-to-long v12, v1

    const/16 v1, 0x20

    shl-long/2addr v12, v1

    const-wide v14, 0xffffffffL

    goto :goto_2

    :pswitch_5
    shl-int/lit8 v1, v1, 0x18

    int-to-long v12, v1

    const-wide/32 v14, 0xffffff

    goto :goto_2

    :pswitch_6
    shl-int/lit8 v1, v1, 0x10

    int-to-long v12, v1

    const-wide/32 v14, 0xffff

    goto :goto_2

    :pswitch_7
    shl-int/lit8 v1, v1, 0x8

    int-to-long v12, v1

    const-wide/16 v14, 0xff

    :goto_2
    and-long/2addr v10, v14

    add-long/2addr v10, v12

    goto :goto_3

    :pswitch_8
    int-to-long v10, v1

    :goto_3
    if-ne v2, v3, :cond_5

    move v8, v7

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v4, v2

    move v8, v2

    move v2, v1

    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    :goto_5
    iget v2, v0, Lcom/alibaba/fastjson2/h;->J:I

    add-int/2addr v2, v12

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    goto :goto_8

    :cond_7
    :pswitch_9
    iput v9, v0, Lcom/alibaba/fastjson2/h;->Q:I

    if-ne v8, v7, :cond_8

    move v5, v2

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v2, -0x1

    :goto_6
    iput v5, v0, Lcom/alibaba/fastjson2/h;->O:I

    const/16 v5, 0x20

    if-gt v8, v5, :cond_a

    shl-long v13, v21, v8

    and-long v13, v13, v19

    const-wide/16 v17, 0x0

    cmp-long v5, v13, v17

    if-eqz v5, :cond_a

    if-ne v2, v3, :cond_9

    move v5, v7

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v2, 0x1

    aget-char v2, v4, v2

    move/from16 v24, v5

    move v5, v2

    move/from16 v2, v24

    goto :goto_7

    :cond_a
    move v5, v8

    :goto_7
    const-wide/16 v8, 0x0

    :goto_8
    cmp-long v13, v10, v8

    if-eqz v13, :cond_b

    goto/16 :goto_11

    :cond_b
    const-wide v8, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v10, v8

    const/16 v9, 0x5c

    move v8, v5

    move v5, v2

    const/4 v2, 0x0

    :goto_9
    if-ne v8, v9, :cond_12

    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v8, v5, 0x1

    aget-char v5, v4, v5

    const/16 v13, 0x22

    if-eq v5, v13, :cond_f

    if-eq v5, v6, :cond_f

    const/16 v14, 0x40

    if-eq v5, v14, :cond_e

    if-eq v5, v9, :cond_e

    const/16 v15, 0x75

    if-eq v5, v15, :cond_d

    const/16 v9, 0x78

    if-eq v5, v9, :cond_c

    const/16 v9, 0x2a

    if-eq v5, v9, :cond_10

    const/16 v9, 0x2b

    if-eq v5, v9, :cond_10

    packed-switch v5, :pswitch_data_6

    packed-switch v5, :pswitch_data_7

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v5

    goto :goto_b

    :cond_c
    aget-char v5, v4, v8

    add-int/lit8 v9, v8, 0x1

    aget-char v9, v4, v9

    invoke-static {v5, v9}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v5

    add-int/lit8 v8, v8, 0x2

    goto :goto_b

    :cond_d
    aget-char v5, v4, v8

    add-int/lit8 v9, v8, 0x1

    aget-char v9, v4, v9

    add-int/lit8 v16, v8, 0x2

    aget-char v12, v4, v16

    add-int/lit8 v16, v8, 0x3

    aget-char v13, v4, v16

    invoke-static {v5, v9, v12, v13}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v5

    add-int/lit8 v8, v8, 0x4

    goto :goto_b

    :cond_e
    :goto_a
    const/16 v15, 0x75

    goto :goto_b

    :cond_f
    const/16 v14, 0x40

    goto :goto_a

    :cond_10
    :goto_b
    :pswitch_a
    int-to-long v12, v5

    xor-long v9, v10, v12

    const-wide v11, 0x100000001b3L

    mul-long/2addr v9, v11

    if-ne v8, v3, :cond_11

    move v5, v8

    move v8, v7

    goto :goto_c

    :cond_11
    add-int/lit8 v5, v8, 0x1

    aget-char v8, v4, v8

    :goto_c
    move-wide v10, v9

    const/16 v1, 0x21

    const/16 v9, 0xd

    goto :goto_e

    :cond_12
    const/16 v14, 0x40

    const/16 v15, 0x75

    if-eq v8, v1, :cond_14

    const/16 v9, 0xd

    if-eq v8, v9, :cond_14

    if-eq v8, v7, :cond_14

    if-eq v8, v6, :cond_14

    const/16 v12, 0x5b

    if-eq v8, v12, :cond_14

    const/16 v13, 0x5d

    if-eq v8, v13, :cond_14

    const/16 v1, 0x7b

    if-eq v8, v1, :cond_14

    const/16 v1, 0x7d

    if-eq v8, v1, :cond_14

    const/16 v1, 0x20

    if-eq v8, v1, :cond_14

    const/16 v1, 0x21

    if-eq v8, v1, :cond_14

    packed-switch v8, :pswitch_data_8

    packed-switch v8, :pswitch_data_9

    packed-switch v8, :pswitch_data_a

    int-to-long v12, v8

    xor-long/2addr v10, v12

    const-wide v12, 0x100000001b3L

    mul-long/2addr v10, v12

    if-ne v5, v3, :cond_13

    move v8, v5

    move v5, v7

    goto :goto_d

    :cond_13
    add-int/lit8 v8, v5, 0x1

    aget-char v5, v4, v5

    :goto_d
    move/from16 v24, v8

    move v8, v5

    move/from16 v5, v24

    :goto_e
    add-int/lit8 v2, v2, 0x1

    const/16 v1, 0xc

    const/16 v9, 0x5c

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_14
    :pswitch_b
    iput v2, v0, Lcom/alibaba/fastjson2/h;->Q:I

    if-ne v8, v7, :cond_15

    move v1, v5

    goto :goto_f

    :cond_15
    add-int/lit8 v1, v5, -0x1

    :goto_f
    iput v1, v0, Lcom/alibaba/fastjson2/h;->O:I

    move v2, v5

    move v5, v8

    :goto_10
    const/16 v1, 0x20

    if-gt v5, v1, :cond_17

    shl-long v8, v21, v5

    and-long v8, v8, v19

    const-wide/16 v12, 0x0

    cmp-long v1, v8, v12

    if-eqz v1, :cond_17

    if-ne v2, v3, :cond_16

    move v5, v7

    goto :goto_10

    :cond_16
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v4, v2

    move v5, v2

    move v2, v1

    goto :goto_10

    :cond_17
    :goto_11
    if-ne v5, v6, :cond_1a

    if-ne v2, v3, :cond_18

    move v1, v2

    move v2, v7

    goto :goto_12

    :cond_18
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v4, v2

    :goto_12
    move v5, v2

    move v2, v1

    const/16 v1, 0x20

    :goto_13
    if-gt v5, v1, :cond_1a

    shl-long v8, v21, v5

    and-long v8, v8, v19

    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-eqz v6, :cond_1a

    if-ne v2, v3, :cond_19

    move v5, v7

    goto :goto_13

    :cond_19
    add-int/lit8 v5, v2, 0x1

    aget-char v2, v4, v2

    move/from16 v24, v5

    move v5, v2

    move/from16 v2, v24

    goto :goto_13

    :cond_1a
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

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

.method public readFloatValue()F
    .locals 27

    move-object/from16 v1, p0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iget-object v2, v1, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v5, 0x22

    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v10, 0x20

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v3, v5, :cond_1

    const/16 v5, 0x27

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    move v4, v0

    goto :goto_4

    :cond_1
    :goto_0
    add-int/lit8 v5, v4, 0x1

    aget-char v4, v2, v4

    if-ne v4, v3, :cond_5

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v0, :cond_2

    :goto_1
    const/16 v3, 0x1a

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v5, 0x1

    aget-char v3, v2, v5

    :goto_2
    move v5, v0

    :goto_3
    if-gt v3, v10, :cond_4

    shl-long v16, v8, v3

    and-long v16, v16, v6

    cmp-long v0, v16, v11

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v5, 0x1

    aget-char v3, v2, v5

    goto :goto_2

    :cond_4
    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->nextIfComma()Z

    iput-boolean v14, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v15

    :cond_5
    move/from16 v26, v4

    move v4, v3

    move/from16 v3, v26

    :goto_4
    const/16 v13, 0x2b

    const/16 v15, 0x2d

    if-ne v3, v15, :cond_6

    iput-boolean v14, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    add-int/lit8 v3, v5, 0x1

    aget-char v18, v2, v5

    :goto_5
    move/from16 v26, v18

    move/from16 v18, v3

    move/from16 v3, v26

    goto :goto_6

    :cond_6
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-ne v3, v13, :cond_7

    add-int/lit8 v3, v5, 0x1

    aget-char v18, v2, v5

    goto :goto_5

    :cond_7
    move/from16 v18, v5

    :goto_6
    iput-byte v14, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    move v7, v0

    move/from16 v21, v7

    move-wide/from16 v19, v11

    move/from16 v6, v18

    :goto_7
    const-wide/16 v22, 0xa

    const/16 v8, 0x39

    const/16 v9, 0x30

    if-lt v3, v9, :cond_b

    if-gt v3, v8, :cond_b

    if-nez v7, :cond_9

    mul-long v24, v19, v22

    add-int/lit8 v3, v3, -0x30

    int-to-long v10, v3

    add-long v24, v24, v10

    cmp-long v3, v24, v19

    if-gez v3, :cond_8

    move v7, v14

    goto :goto_8

    :cond_8
    move-wide/from16 v19, v24

    :cond_9
    :goto_8
    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v3, :cond_a

    add-int/lit8 v6, v6, 0x1

    move/from16 v21, v14

    const/16 v3, 0x1a

    goto :goto_9

    :cond_a
    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    move/from16 v21, v14

    const-wide/16 v8, 0x1

    const/16 v10, 0x20

    const-wide/16 v11, 0x0

    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    goto :goto_7

    :cond_b
    :goto_9
    iput-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    const/16 v10, 0x2e

    const/4 v11, 0x2

    if-ne v3, v10, :cond_f

    iput-byte v11, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    :goto_a
    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    if-lt v3, v9, :cond_f

    if-gt v3, v8, :cond_f

    iget-short v10, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    add-int/2addr v10, v14

    int-to-short v10, v10

    iput-short v10, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-nez v7, :cond_d

    mul-long v24, v19, v22

    add-int/lit8 v3, v3, -0x30

    int-to-long v11, v3

    add-long v24, v24, v11

    cmp-long v3, v24, v19

    if-gez v3, :cond_c

    move v7, v14

    goto :goto_b

    :cond_c
    move-wide/from16 v19, v24

    :cond_d
    :goto_b
    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v3, :cond_e

    add-int/lit8 v6, v6, 0x1

    move/from16 v21, v14

    move-wide/from16 v11, v19

    const/16 v3, 0x1a

    goto :goto_c

    :cond_e
    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    move/from16 v21, v14

    const/4 v11, 0x2

    goto :goto_a

    :cond_f
    move-wide/from16 v11, v19

    :goto_c
    const/16 v0, 0x65

    if-eq v3, v0, :cond_11

    const/16 v10, 0x45

    if-ne v3, v10, :cond_10

    goto :goto_d

    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_11
    :goto_d
    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    if-ne v6, v15, :cond_12

    add-int/lit8 v6, v3, 0x1

    aget-char v3, v2, v3

    move v13, v14

    const/4 v10, 0x0

    :goto_e
    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    goto :goto_f

    :cond_12
    if-ne v6, v13, :cond_13

    add-int/lit8 v6, v3, 0x1

    aget-char v3, v2, v3

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto :goto_e

    :cond_13
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_f
    if-lt v6, v9, :cond_16

    if-gt v6, v8, :cond_16

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v6

    const/16 v6, 0x3ff

    if-gt v10, v6, :cond_15

    iget v6, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v6, :cond_14

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    move/from16 v21, v14

    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    add-int/lit8 v6, v3, 0x1

    aget-char v3, v2, v3

    move/from16 v21, v14

    goto :goto_e

    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too large exp value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    :goto_10
    if-eqz v13, :cond_17

    neg-int v10, v10

    :cond_17
    int-to-short v8, v10

    iput-short v8, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    const/4 v8, 0x2

    iput-byte v8, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    :goto_11
    if-ne v6, v5, :cond_24

    const/16 v8, 0x6e

    const/16 v9, 0x75

    const/16 v13, 0x6c

    if-ne v3, v8, :cond_1a

    aget-char v8, v2, v6

    if-ne v8, v9, :cond_1a

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v2, v8

    if-ne v8, v13, :cond_1a

    add-int/lit8 v8, v6, 0x2

    aget-char v8, v2, v8

    if-ne v8, v13, :cond_1a

    add-int/lit8 v6, v6, 0x3

    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v8, v14

    const-wide/16 v13, 0x0

    cmp-long v0, v8, v13

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_18

    :goto_12
    const/16 v3, 0x1a

    goto/16 :goto_17

    :cond_18
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    :goto_13
    move v6, v0

    goto/16 :goto_17

    :cond_19
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/16 v8, 0x74

    if-ne v3, v8, :cond_1c

    aget-char v8, v2, v6

    const/16 v14, 0x72

    if-ne v8, v14, :cond_1c

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v2, v8

    if-ne v8, v9, :cond_1c

    add-int/lit8 v8, v6, 0x2

    aget-char v8, v2, v8

    if-ne v8, v0, :cond_1c

    add-int/lit8 v6, v6, 0x3

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_1b

    const/16 v3, 0x1a

    goto :goto_14

    :cond_1b
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    move v6, v0

    :goto_14
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_15
    const/4 v0, 0x1

    goto/16 :goto_18

    :cond_1c
    const/16 v8, 0x66

    const/16 v9, 0x61

    if-ne v3, v8, :cond_1e

    aget-char v8, v2, v6

    if-ne v8, v9, :cond_1e

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v2, v8

    if-ne v8, v13, :cond_1e

    add-int/lit8 v8, v6, 0x2

    aget-char v8, v2, v8

    const/16 v13, 0x73

    if-ne v8, v13, :cond_1e

    add-int/lit8 v8, v6, 0x3

    aget-char v8, v2, v8

    if-ne v8, v0, :cond_1e

    add-int/lit8 v6, v6, 0x4

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_1d

    goto :goto_12

    :cond_1d
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    goto :goto_13

    :cond_1e
    const/16 v0, 0x4e

    if-ne v3, v0, :cond_20

    aget-char v8, v2, v6

    if-ne v8, v9, :cond_20

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v2, v8

    if-ne v8, v0, :cond_20

    add-int/lit8 v6, v6, 0x2

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_1f

    const/16 v3, 0x1a

    goto :goto_16

    :cond_1f
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    move v6, v0

    :goto_16
    const/high16 v15, 0x7fc00000    # Float.NaN

    goto :goto_15

    :cond_20
    const/16 v0, 0x7b

    if-ne v3, v0, :cond_22

    if-nez v4, :cond_22

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    :goto_17
    const/4 v0, 0x1

    const/4 v15, 0x0

    :goto_18
    const/16 v21, 0x1

    goto :goto_19

    :cond_21
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/16 v0, 0x5b

    if-ne v3, v0, :cond_24

    if-nez v4, :cond_24

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    goto :goto_17

    :cond_23
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_19
    sub-int v8, v6, v5

    const/4 v9, 0x0

    if-eqz v4, :cond_27

    if-eq v3, v4, :cond_25

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v4, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readString()Ljava/lang/String;

    move-result-object v9

    iget v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v7, 0x1

    :cond_25
    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v6, v3, :cond_26

    const/16 v3, 0x1a

    goto :goto_1a

    :cond_26
    add-int/lit8 v3, v6, 0x1

    aget-char v4, v2, v6

    move v6, v3

    move v3, v4

    :cond_27
    :goto_1a
    if-nez v0, :cond_32

    if-nez v7, :cond_2d

    iget-short v4, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    sub-int/2addr v4, v10

    if-nez v4, :cond_29

    long-to-float v0, v11

    iget-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v7, :cond_28

    neg-float v0, v0

    :cond_28
    move v15, v0

    const/4 v0, 0x1

    goto :goto_1c

    :cond_29
    long-to-float v7, v11

    float-to-long v13, v7

    cmp-long v10, v13, v11

    if-nez v10, :cond_2b

    if-lez v4, :cond_2a

    sget-object v10, Lcom/alibaba/fastjson2/JSONFactory;->x:[F

    array-length v13, v10

    if-ge v4, v13, :cond_2a

    aget v10, v10, v4

    div-float v15, v7, v10

    iget-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v7, :cond_2b

    :goto_1b
    neg-float v15, v15

    goto :goto_1c

    :cond_2a
    if-gez v4, :cond_2b

    sget-object v10, Lcom/alibaba/fastjson2/JSONFactory;->x:[F

    array-length v13, v10

    neg-int v13, v13

    if-le v4, v13, :cond_2b

    neg-int v13, v4

    aget v10, v10, v13

    mul-float v15, v7, v10

    iget-boolean v7, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v7, :cond_2b

    goto :goto_1b

    :cond_2b
    :goto_1c
    if-nez v0, :cond_2d

    const/16 v7, -0x80

    if-le v4, v7, :cond_2d

    const/16 v7, 0x80

    if-ge v4, v7, :cond_2d

    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v0, :cond_2c

    const/4 v0, -0x1

    goto :goto_1d

    :cond_2c
    const/4 v0, 0x1

    :goto_1d
    invoke-static {v0, v11, v12, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->floatValue(IJI)F

    move-result v15

    const/4 v0, 0x1

    :cond_2d
    if-nez v0, :cond_2f

    if-eqz v9, :cond_2e

    :try_start_0
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v15, v0

    goto :goto_1e

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2e
    const/4 v0, 0x1

    sub-int/2addr v5, v0

    invoke-static {v2, v5, v8}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseFloat([CII)F

    move-result v4

    move v15, v4

    goto :goto_1f

    :cond_2f
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    const/16 v4, 0x4c

    if-eq v3, v4, :cond_30

    const/16 v4, 0x46

    if-eq v3, v4, :cond_30

    const/16 v4, 0x44

    if-eq v3, v4, :cond_30

    const/16 v4, 0x42

    if-eq v3, v4, :cond_30

    const/16 v4, 0x53

    if-ne v3, v4, :cond_33

    :cond_30
    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v6, v3, :cond_31

    :goto_20
    const/16 v3, 0x1a

    goto :goto_22

    :cond_31
    add-int/lit8 v3, v6, 0x1

    aget-char v4, v2, v6

    :goto_21
    move v6, v3

    move v3, v4

    goto :goto_22

    :cond_32
    const/4 v0, 0x1

    :cond_33
    :goto_22
    const/16 v4, 0x20

    if-gt v3, v4, :cond_35

    const-wide/16 v4, 0x1

    shl-long v7, v4, v3

    const-wide v4, 0x100003700L

    and-long/2addr v7, v4

    const-wide/16 v4, 0x0

    cmp-long v7, v7, v4

    if-eqz v7, :cond_35

    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v6, v3, :cond_34

    goto :goto_20

    :cond_34
    add-int/lit8 v3, v6, 0x1

    aget-char v4, v2, v6

    goto :goto_21

    :cond_35
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_36

    goto :goto_23

    :cond_36
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v0, :cond_39

    iget v0, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v6, v0, :cond_37

    const/16 v3, 0x1a

    goto :goto_24

    :cond_37
    add-int/lit8 v0, v6, 0x1

    aget-char v3, v2, v6

    move v6, v0

    :goto_24
    const/16 v0, 0x20

    :goto_25
    if-gt v3, v0, :cond_39

    const-wide/16 v4, 0x1

    shl-long v7, v4, v3

    const-wide v9, 0x100003700L

    and-long/2addr v7, v9

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-eqz v7, :cond_39

    iget v3, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v6, v3, :cond_38

    const/16 v3, 0x1a

    goto :goto_25

    :cond_38
    add-int/lit8 v3, v6, 0x1

    aget-char v6, v2, v6

    move/from16 v26, v6

    move v6, v3

    move/from16 v3, v26

    goto :goto_25

    :cond_39
    if-eqz v21, :cond_3a

    iput-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v6, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v15

    :cond_3a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readHex()[B
    .locals 19

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v3, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/16 v4, 0x78

    const/16 v5, 0x1a

    if-ne v1, v4, :cond_1

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    move/from16 v18, v2

    move v2, v1

    move/from16 v1, v18

    :cond_1
    :goto_0
    const/16 v4, 0x27

    if-eq v1, v4, :cond_3

    const/16 v4, 0x22

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/JSONReader;->k0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    iget v4, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v4, :cond_4

    move v4, v2

    :goto_2
    move v6, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v2, 0x1

    aget-char v6, v3, v2

    :goto_3
    const/16 v7, 0x39

    const/16 v8, 0x30

    if-lt v6, v8, :cond_5

    if-le v6, v7, :cond_6

    :cond_5
    const/16 v9, 0x41

    if-lt v6, v9, :cond_8

    const/16 v9, 0x46

    if-gt v6, v9, :cond_8

    :cond_6
    iget v6, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v6, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v4, 0x1

    aget-char v4, v3, v4

    move/from16 v18, v6

    move v6, v4

    move/from16 v4, v18

    goto :goto_3

    :cond_8
    if-ne v6, v1, :cond_18

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_9

    move v1, v4

    move v4, v5

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    :goto_4
    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x2

    if-ne v4, v5, :cond_a

    add-int/lit8 v6, v6, 0x1

    :cond_a
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_17

    div-int/lit8 v6, v6, 0x2

    new-array v9, v6, [B

    const/4 v10, 0x0

    :goto_5
    const/4 v11, 0x1

    if-ge v10, v6, :cond_d

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v2

    aget-char v13, v3, v12

    add-int/2addr v12, v11

    aget-char v11, v3, v12

    const/16 v12, 0x37

    if-gt v13, v7, :cond_b

    move v14, v8

    goto :goto_6

    :cond_b
    move v14, v12

    :goto_6
    sub-int/2addr v13, v14

    if-gt v11, v7, :cond_c

    move v12, v8

    :cond_c
    sub-int/2addr v11, v12

    shl-int/lit8 v12, v13, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    :goto_7
    const-wide/16 v6, 0x0

    const-wide v12, 0x100003700L

    const-wide/16 v14, 0x1

    const/16 v2, 0x20

    if-gt v4, v2, :cond_f

    shl-long v16, v14, v4

    and-long v16, v16, v12

    cmp-long v8, v16, v6

    if-eqz v8, :cond_f

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, v2, :cond_e

    move v4, v5

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    move v4, v1

    move v1, v2

    goto :goto_7

    :cond_f
    const/16 v8, 0x2c

    if-ne v4, v8, :cond_16

    iget v8, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v1, v8, :cond_10

    goto :goto_b

    :cond_10
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-ne v1, v8, :cond_11

    move v4, v1

    :goto_8
    move v1, v5

    goto :goto_9

    :cond_11
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v3, v1

    :goto_9
    if-eqz v1, :cond_14

    if-gt v1, v2, :cond_12

    shl-long v10, v14, v1

    and-long/2addr v10, v12

    cmp-long v8, v10, v6

    if-eqz v8, :cond_12

    goto :goto_a

    :cond_12
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_13
    return-object v9

    :cond_14
    :goto_a
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_15

    goto :goto_8

    :cond_15
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    move/from16 v18, v4

    move v4, v1

    move/from16 v1, v18

    goto :goto_9

    :cond_16
    :goto_b
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-object v9

    :cond_17
    invoke-static {v1, v4}, Lcom/alibaba/fastjson2/JSONReader;->k0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {v4, v6}, Lcom/alibaba/fastjson2/JSONReader;->k0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public readIfNull()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x6e

    const/4 v5, 0x0

    if-ne v3, v4, :cond_7

    aget-char v3, v1, v2

    const/16 v4, 0x75

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v1, v3

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v1, v3

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, v2, 0x3

    iget v4, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v6, 0x1a

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    aget-char v3, v1, v3

    :goto_0
    add-int/lit8 v2, v2, 0x4

    :goto_1
    const-wide/16 v7, 0x0

    const-wide v9, 0x100003700L

    const-wide/16 v11, 0x1

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    shl-long v13, v11, v3

    and-long/2addr v13, v9

    cmp-long v13, v13, v7

    if-eqz v13, :cond_2

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_1

    :cond_2
    const/16 v13, 0x2c

    const/4 v14, 0x1

    if-ne v3, v13, :cond_3

    move v5, v14

    :cond_3
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v5, :cond_6

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_4

    move v3, v2

    move v2, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    :goto_2
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :goto_3
    if-gt v3, v4, :cond_6

    shl-long v15, v11, v3

    and-long/2addr v15, v9

    cmp-long v5, v15, v7

    if-eqz v5, :cond_6

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_5

    move v3, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    goto :goto_2

    :cond_6
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v14

    :cond_7
    return v5
.end method

.method public readInt32()Ljava/lang/Integer;
    .locals 21

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v3, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    const/16 v4, 0x27

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v3, v2

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    :goto_1
    const/16 v6, 0x2d

    const/16 v7, 0x2c

    const/4 v8, 0x1

    if-ne v1, v6, :cond_2

    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    move v6, v8

    :goto_2
    move/from16 v20, v4

    move v4, v1

    move/from16 v1, v20

    goto :goto_3

    :cond_2
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_3

    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    move v6, v5

    goto :goto_2

    :cond_3
    if-eq v1, v7, :cond_19

    move v6, v5

    :goto_3
    const/16 v9, 0x39

    const/16 v10, 0x30

    if-lt v1, v10, :cond_5

    if-le v1, v9, :cond_4

    goto :goto_4

    :cond_4
    move v11, v5

    goto :goto_5

    :cond_5
    :goto_4
    move v11, v8

    :goto_5
    move v12, v5

    :goto_6
    const/16 v13, 0x1a

    if-lt v1, v10, :cond_8

    if-gt v1, v9, :cond_8

    mul-int/lit8 v14, v12, 0xa

    add-int/lit8 v15, v1, -0x30

    add-int/2addr v14, v15

    if-ge v14, v12, :cond_6

    move v11, v8

    goto :goto_8

    :cond_6
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_7

    move v1, v13

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    move/from16 v20, v4

    move v4, v1

    move/from16 v1, v20

    :goto_7
    move v12, v14

    goto :goto_6

    :cond_8
    :goto_8
    const/16 v9, 0x2e

    if-eq v1, v9, :cond_9

    const/16 v9, 0x65

    if-eq v1, v9, :cond_9

    const/16 v9, 0x45

    if-eq v1, v9, :cond_9

    const/16 v9, 0x74

    if-eq v1, v9, :cond_9

    const/16 v9, 0x66

    if-eq v1, v9, :cond_9

    const/16 v9, 0x6e

    if-eq v1, v9, :cond_9

    const/16 v9, 0x7b

    if-eq v1, v9, :cond_9

    const/16 v9, 0x5b

    if-eq v1, v9, :cond_9

    if-eqz v2, :cond_a

    if-eq v1, v2, :cond_a

    :cond_9
    move v11, v8

    :cond_a
    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readNumber0()V

    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->getInt32Value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_c
    if-eqz v2, :cond_e

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_d

    move v1, v13

    goto :goto_9

    :cond_d
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    move v4, v1

    move v1, v2

    :cond_e
    :goto_9
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x46

    if-eq v1, v2, :cond_f

    const/16 v2, 0x44

    if-eq v1, v2, :cond_f

    const/16 v2, 0x42

    if-eq v1, v2, :cond_f

    const/16 v2, 0x53

    if-ne v1, v2, :cond_11

    :cond_f
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_10

    :goto_a
    move v1, v13

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    :goto_b
    move v4, v1

    move v1, v2

    :cond_11
    :goto_c
    const-wide/16 v9, 0x0

    const-wide v14, 0x100003700L

    const-wide/16 v16, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_13

    shl-long v18, v16, v1

    and-long v18, v18, v14

    cmp-long v11, v18, v9

    if-eqz v11, :cond_13

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    goto :goto_b

    :cond_13
    if-ne v1, v7, :cond_14

    move v5, v8

    :cond_14
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v5, :cond_17

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_15

    move v1, v4

    move v4, v13

    goto :goto_d

    :cond_15
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    :goto_d
    move/from16 v20, v4

    move v4, v1

    move/from16 v1, v20

    :goto_e
    if-gt v1, v2, :cond_17

    shl-long v7, v16, v1

    and-long/2addr v7, v14

    cmp-long v5, v7, v9

    if-eqz v5, :cond_17

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_16

    move v1, v13

    goto :goto_e

    :cond_16
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    goto :goto_d

    :cond_17
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-eqz v6, :cond_18

    neg-int v12, v12

    :cond_18
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->h0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public readInt32Value()I
    .locals 22

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    iget-object v4, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/16 v5, 0x22

    const/4 v6, 0x0

    if-eq v1, v5, :cond_1

    const/16 v5, 0x27

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    move v2, v6

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v5, v2, 0x1

    aget-char v2, v4, v2

    move/from16 v21, v2

    move v2, v1

    move/from16 v1, v21

    :goto_1
    const/16 v7, 0x2d

    const/16 v8, 0x2c

    const/4 v9, 0x1

    if-ne v1, v7, :cond_2

    add-int/lit8 v1, v5, 0x1

    aget-char v5, v4, v5

    move v7, v9

    :goto_2
    move/from16 v21, v5

    move v5, v1

    move/from16 v1, v21

    goto :goto_3

    :cond_2
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_3

    add-int/lit8 v1, v5, 0x1

    aget-char v5, v4, v5

    move v7, v6

    goto :goto_2

    :cond_3
    if-eq v1, v8, :cond_18

    move v7, v6

    :goto_3
    const/16 v10, 0x39

    const/16 v11, 0x30

    if-lt v1, v11, :cond_5

    if-le v1, v10, :cond_4

    goto :goto_4

    :cond_4
    move v12, v6

    goto :goto_5

    :cond_5
    :goto_4
    move v12, v9

    :goto_5
    move v13, v6

    :goto_6
    const/16 v14, 0x1a

    if-lt v1, v11, :cond_8

    if-gt v1, v10, :cond_8

    mul-int/lit8 v15, v13, 0xa

    add-int/lit8 v16, v1, -0x30

    add-int v15, v15, v16

    if-ge v15, v13, :cond_6

    move v12, v9

    goto :goto_8

    :cond_6
    if-ne v5, v3, :cond_7

    move v1, v14

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v5, 0x1

    aget-char v5, v4, v5

    move/from16 v21, v5

    move v5, v1

    move/from16 v1, v21

    :goto_7
    move v13, v15

    goto :goto_6

    :cond_8
    :goto_8
    const/16 v10, 0x2e

    if-eq v1, v10, :cond_9

    const/16 v10, 0x65

    if-eq v1, v10, :cond_9

    const/16 v10, 0x45

    if-eq v1, v10, :cond_9

    const/16 v10, 0x74

    if-eq v1, v10, :cond_9

    const/16 v10, 0x66

    if-eq v1, v10, :cond_9

    const/16 v10, 0x6e

    if-eq v1, v10, :cond_9

    const/16 v10, 0x7b

    if-eq v1, v10, :cond_9

    const/16 v10, 0x5b

    if-eq v1, v10, :cond_9

    if-eqz v2, :cond_a

    if-eq v1, v2, :cond_a

    :cond_9
    move v12, v9

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readNumber0()V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->getInt32Value()I

    move-result v0

    return v0

    :cond_b
    if-eqz v2, :cond_d

    if-ne v5, v3, :cond_c

    move v1, v14

    goto :goto_9

    :cond_c
    add-int/lit8 v1, v5, 0x1

    aget-char v2, v4, v5

    move v5, v1

    move v1, v2

    :cond_d
    :goto_9
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_e

    const/16 v2, 0x46

    if-eq v1, v2, :cond_e

    const/16 v2, 0x44

    if-eq v1, v2, :cond_e

    const/16 v2, 0x42

    if-eq v1, v2, :cond_e

    const/16 v2, 0x53

    if-ne v1, v2, :cond_10

    :cond_e
    if-ne v5, v3, :cond_f

    :goto_a
    move v1, v14

    goto :goto_c

    :cond_f
    add-int/lit8 v1, v5, 0x1

    aget-char v2, v4, v5

    :goto_b
    move v5, v1

    move v1, v2

    :cond_10
    :goto_c
    const-wide/16 v10, 0x0

    const-wide v15, 0x100003700L

    const-wide/16 v17, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_12

    shl-long v19, v17, v1

    and-long v19, v19, v15

    cmp-long v12, v19, v10

    if-eqz v12, :cond_12

    if-ne v5, v3, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v1, v5, 0x1

    aget-char v2, v4, v5

    goto :goto_b

    :cond_12
    if-ne v1, v8, :cond_13

    move v6, v9

    :cond_13
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v6, :cond_16

    if-ne v5, v3, :cond_14

    move v1, v5

    move v5, v14

    goto :goto_d

    :cond_14
    add-int/lit8 v1, v5, 0x1

    aget-char v5, v4, v5

    :goto_d
    move/from16 v21, v5

    move v5, v1

    move/from16 v1, v21

    :goto_e
    if-gt v1, v2, :cond_16

    shl-long v8, v17, v1

    and-long/2addr v8, v15

    cmp-long v6, v8, v10

    if-eqz v6, :cond_16

    if-ne v5, v3, :cond_15

    move v1, v14

    goto :goto_e

    :cond_15
    add-int/lit8 v1, v5, 0x1

    aget-char v5, v4, v5

    goto :goto_d

    :cond_16
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-eqz v7, :cond_17

    neg-int v13, v13

    :cond_17
    return v13

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->h0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public readInt64()Ljava/lang/Long;
    .locals 20

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v3, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    const/16 v4, 0x27

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v3, v2

    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v19

    :goto_1
    const/16 v6, 0x2d

    const/16 v7, 0x2c

    if-ne v1, v6, :cond_2

    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    const/4 v6, 0x1

    :goto_2
    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    goto :goto_3

    :cond_2
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_3

    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    move v6, v5

    goto :goto_2

    :cond_3
    if-eq v1, v7, :cond_19

    move v6, v5

    :goto_3
    const/16 v9, 0x39

    const/16 v10, 0x30

    if-lt v1, v10, :cond_5

    if-le v1, v9, :cond_4

    goto :goto_4

    :cond_4
    move v11, v5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v11, 0x1

    :goto_5
    const-wide/16 v12, 0x0

    move-wide v14, v12

    :goto_6
    const/16 v16, 0x1a

    if-lt v1, v10, :cond_8

    if-gt v1, v9, :cond_8

    const-wide/16 v17, 0xa

    mul-long v17, v17, v14

    add-int/lit8 v8, v1, -0x30

    int-to-long v9, v8

    add-long v17, v17, v9

    cmp-long v8, v17, v14

    if-gez v8, :cond_6

    const/4 v11, 0x1

    goto :goto_8

    :cond_6
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_7

    move/from16 v1, v16

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    :goto_7
    move-wide/from16 v14, v17

    const/16 v9, 0x39

    const/16 v10, 0x30

    goto :goto_6

    :cond_8
    :goto_8
    const/16 v8, 0x2e

    if-eq v1, v8, :cond_9

    const/16 v8, 0x65

    if-eq v1, v8, :cond_9

    const/16 v8, 0x45

    if-eq v1, v8, :cond_9

    const/16 v8, 0x74

    if-eq v1, v8, :cond_9

    const/16 v8, 0x66

    if-eq v1, v8, :cond_9

    const/16 v8, 0x6e

    if-eq v1, v8, :cond_9

    const/16 v8, 0x7b

    if-eq v1, v8, :cond_9

    const/16 v8, 0x5b

    if-eq v1, v8, :cond_9

    if-eqz v2, :cond_a

    if-eq v1, v2, :cond_a

    :cond_9
    const/4 v11, 0x1

    :cond_a
    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readNumber0()V

    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->getInt64Value()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_c
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    if-eqz v2, :cond_e

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_d

    move/from16 v1, v16

    goto :goto_9

    :cond_d
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    move v4, v1

    move v1, v2

    :cond_e
    :goto_9
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x46

    if-eq v1, v2, :cond_f

    const/16 v2, 0x44

    if-eq v1, v2, :cond_f

    const/16 v2, 0x42

    if-eq v1, v2, :cond_f

    const/16 v2, 0x53

    if-ne v1, v2, :cond_11

    :cond_f
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_10

    :goto_a
    move/from16 v1, v16

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    :goto_b
    move v4, v1

    move v1, v2

    :cond_11
    :goto_c
    const-wide v8, 0x100003700L

    const-wide/16 v10, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_13

    shl-long v17, v10, v1

    and-long v17, v17, v8

    cmp-long v17, v17, v12

    if-eqz v17, :cond_13

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    goto :goto_b

    :cond_13
    if-ne v1, v7, :cond_14

    const/4 v5, 0x1

    :cond_14
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v5, :cond_17

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_15

    move v1, v4

    move/from16 v4, v16

    goto :goto_d

    :cond_15
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    :goto_d
    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    :goto_e
    if-gt v1, v2, :cond_17

    shl-long v17, v10, v1

    and-long v17, v17, v8

    cmp-long v5, v17, v12

    if-eqz v5, :cond_17

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_16

    move/from16 v1, v16

    goto :goto_e

    :cond_16
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    goto :goto_d

    :cond_17
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-eqz v6, :cond_18

    neg-long v14, v14

    :cond_18
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->h0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public readInt64Value()J
    .locals 20

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v3, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/16 v4, 0x22

    if-eq v1, v4, :cond_1

    const/16 v4, 0x27

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v3, v2

    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v19

    :goto_1
    const/16 v6, 0x2d

    const/16 v7, 0x2c

    if-ne v1, v6, :cond_2

    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    const/4 v6, 0x1

    :goto_2
    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    goto :goto_3

    :cond_2
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_3

    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    if-eq v1, v7, :cond_18

    const/4 v6, 0x0

    :goto_3
    const/16 v9, 0x39

    const/16 v10, 0x30

    if-lt v1, v10, :cond_5

    if-le v1, v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v11, 0x1

    :goto_5
    const-wide/16 v12, 0x0

    move-wide v14, v12

    :goto_6
    const/16 v16, 0x1a

    if-lt v1, v10, :cond_8

    if-gt v1, v9, :cond_8

    const-wide/16 v17, 0xa

    mul-long v17, v17, v14

    add-int/lit8 v5, v1, -0x30

    int-to-long v8, v5

    add-long v17, v17, v8

    cmp-long v5, v17, v14

    if-gez v5, :cond_6

    const/4 v11, 0x1

    goto :goto_8

    :cond_6
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_7

    move/from16 v1, v16

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    :goto_7
    move-wide/from16 v14, v17

    const/16 v9, 0x39

    goto :goto_6

    :cond_8
    :goto_8
    const/16 v5, 0x2e

    if-eq v1, v5, :cond_9

    const/16 v5, 0x65

    if-eq v1, v5, :cond_9

    const/16 v5, 0x45

    if-eq v1, v5, :cond_9

    const/16 v5, 0x74

    if-eq v1, v5, :cond_9

    const/16 v5, 0x66

    if-eq v1, v5, :cond_9

    const/16 v5, 0x6e

    if-eq v1, v5, :cond_9

    const/16 v5, 0x7b

    if-eq v1, v5, :cond_9

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_9

    if-eqz v2, :cond_a

    if-eq v1, v2, :cond_a

    :cond_9
    const/4 v11, 0x1

    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readNumber0()V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->getInt64Value()J

    move-result-wide v0

    return-wide v0

    :cond_b
    if-eqz v2, :cond_d

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_c

    move/from16 v1, v16

    goto :goto_9

    :cond_c
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    move v4, v1

    move v1, v2

    :cond_d
    :goto_9
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_e

    const/16 v2, 0x46

    if-eq v1, v2, :cond_e

    const/16 v2, 0x44

    if-eq v1, v2, :cond_e

    const/16 v2, 0x42

    if-eq v1, v2, :cond_e

    const/16 v2, 0x53

    if-ne v1, v2, :cond_10

    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_f

    :goto_a
    move/from16 v1, v16

    goto :goto_c

    :cond_f
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    :goto_b
    move v4, v1

    move v1, v2

    :cond_10
    :goto_c
    const-wide v8, 0x100003700L

    const-wide/16 v10, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_12

    shl-long v17, v10, v1

    and-long v17, v17, v8

    cmp-long v5, v17, v12

    if-eqz v5, :cond_12

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    goto :goto_b

    :cond_12
    if-ne v1, v7, :cond_13

    const/4 v5, 0x1

    goto :goto_d

    :cond_13
    const/4 v5, 0x0

    :goto_d
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v5, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_14

    move v1, v4

    move/from16 v4, v16

    goto :goto_e

    :cond_14
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    :goto_e
    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    :goto_f
    if-gt v1, v2, :cond_16

    shl-long v17, v10, v1

    and-long v17, v17, v8

    cmp-long v5, v17, v12

    if-eqz v5, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v1, :cond_15

    move/from16 v1, v16

    goto :goto_f

    :cond_15
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v3, v4

    goto :goto_e

    :cond_16
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-eqz v6, :cond_17

    neg-long v14, v14

    :cond_17
    return-wide v14

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->h0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public readLocalDate()Ljava/time/LocalDate;
    .locals 10

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    const/16 v2, 0x27

    if-ne v1, v2, :cond_8

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->b:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->c:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->e:Z

    if-nez v3, :cond_1

    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->h:Z

    if-eqz v2, :cond_8

    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0xa

    array-length v4, v0

    if-ge v3, v4, :cond_8

    iget v4, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v3, v4, :cond_8

    add-int/lit8 v3, v2, 0x4

    aget-char v3, v0, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_8

    add-int/lit8 v3, v2, 0x7

    aget-char v3, v0, v3

    if-ne v3, v4, :cond_8

    add-int/lit8 v3, v2, 0xa

    aget-char v3, v0, v3

    if-ne v3, v1, :cond_8

    aget-char v1, v0, v2

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v0, v3

    add-int/lit8 v4, v2, 0x2

    aget-char v4, v0, v4

    add-int/lit8 v5, v2, 0x3

    aget-char v5, v0, v5

    add-int/lit8 v6, v2, 0x5

    aget-char v6, v0, v6

    add-int/lit8 v7, v2, 0x6

    aget-char v7, v0, v7

    add-int/lit8 v8, v2, 0x8

    aget-char v8, v0, v8

    add-int/lit8 v2, v2, 0x9

    aget-char v0, v0, v2

    const/16 v2, 0x30

    if-lt v1, v2, :cond_7

    const/16 v9, 0x39

    if-gt v1, v9, :cond_7

    if-lt v3, v2, :cond_7

    if-gt v3, v9, :cond_7

    if-lt v4, v2, :cond_7

    if-gt v4, v9, :cond_7

    if-lt v5, v2, :cond_7

    if-gt v5, v9, :cond_7

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v1, v3

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v2

    add-int/2addr v1, v5

    if-lt v6, v2, :cond_6

    if-gt v6, v9, :cond_6

    if-lt v7, v2, :cond_6

    if-gt v7, v9, :cond_6

    sub-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v2

    add-int/2addr v6, v7

    if-lt v8, v2, :cond_5

    if-gt v8, v9, :cond_5

    if-lt v0, v2, :cond_5

    if-gt v0, v9, :cond_5

    sub-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v8, v0

    if-nez v1, :cond_2

    if-nez v6, :cond_2

    if-nez v8, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1, v6, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public readLocalDate10()Ljava/time/LocalDate;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localDate only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([CI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readLocalDate11()Ljava/time/LocalDate;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localDate only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([CI)Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalDate8()Ljava/time/LocalDate;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localDate only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([CI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readLocalDate9()Ljava/time/LocalDate;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localDate only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([CI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readLocalDateTime12()Ljava/time/LocalDateTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalDateTime14()Ljava/time/LocalDateTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalDateTime16()Ljava/time/LocalDateTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x11

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalDateTime17()Ljava/time/LocalDateTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalDateTime18()Ljava/time/LocalDateTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_3
    return-object v0
.end method

.method public readLocalDateTime19()Ljava/time/LocalDateTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalDateTime20()Ljava/time/LocalDateTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalDateTimeX(I)Ljava/time/LocalDateTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "date only support string input"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([CII)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalTime10()Ljava/time/LocalTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localTime only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime10([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalTime11()Ljava/time/LocalTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localTime only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime11([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalTime12()Ljava/time/LocalTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localTime only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime12([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalTime18()Ljava/time/LocalTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localTime only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime18([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalTime5()Ljava/time/LocalTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localTime only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime5([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalTime8()Ljava/time/LocalTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localTime only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readLocalTime9()Ljava/time/LocalTime;
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "localTime only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-object v0
.end method

.method public readMillis19()J
    .locals 7

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x12

    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    invoke-static {v2, v1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([CILjava/time/ZoneId;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v6, v5, 0x13

    aget-char v3, v3, v6

    if-ne v3, v0, :cond_5

    add-int/lit8 v5, v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_4
    return-wide v1

    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "illegal date input"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readNull()V
    .locals 14

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-char v2, v0, v1

    const/16 v3, 0x75

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x2

    aget-char v2, v0, v2

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x3

    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v4, 0x1a

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    aget-char v2, v0, v2

    :goto_0
    add-int/lit8 v1, v1, 0x4

    :goto_1
    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    shl-long v11, v9, v2

    and-long/2addr v11, v7

    cmp-long v11, v11, v5

    if-eqz v11, :cond_2

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v0, v1

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_1

    :cond_2
    const/16 v11, 0x2c

    if-ne v2, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    iput-boolean v11, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v11, :cond_6

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, v2, :cond_4

    move v2, v1

    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v0, v1

    :goto_3
    move v13, v2

    move v2, v1

    move v1, v13

    :goto_4
    if-gt v2, v3, :cond_6

    shl-long v11, v9, v2

    and-long/2addr v11, v7

    cmp-long v11, v11, v5

    if-eqz v11, :cond_6

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, v2, :cond_5

    move v2, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v0, v1

    goto :goto_3

    :cond_6
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_7
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json syntax error, not match null, offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readNullOrNewDate()Ljava/util/Date;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x2

    iget v4, v0, Lcom/alibaba/fastjson2/h;->z:I

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-ge v3, v4, :cond_1

    aget-char v13, v1, v2

    const/16 v14, 0x75

    if-ne v13, v14, :cond_1

    add-int/lit8 v13, v2, 0x1

    aget-char v13, v1, v13

    const/16 v14, 0x6c

    if-ne v13, v14, :cond_1

    aget-char v13, v1, v3

    if-ne v13, v14, :cond_1

    add-int/lit8 v3, v2, 0x3

    if-ne v3, v4, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    aget-char v3, v1, v3

    :goto_0
    add-int/lit8 v2, v2, 0x4

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v13, v2, 0x1

    if-ge v13, v4, :cond_14

    aget-char v14, v1, v2

    const/16 v15, 0x65

    if-ne v14, v15, :cond_14

    aget-char v13, v1, v13

    const/16 v14, 0x77

    if-ne v13, v14, :cond_14

    add-int/lit8 v2, v2, 0x3

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    aget-char v3, v1, v3

    :goto_1
    if-gt v3, v11, :cond_4

    shl-long v13, v9, v3

    and-long/2addr v13, v7

    cmp-long v4, v13, v5

    if-eqz v4, :cond_4

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v2, v3, :cond_3

    :goto_2
    const/16 v3, 0x1a

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v2, 0x4

    iget v13, v0, Lcom/alibaba/fastjson2/h;->z:I

    const-string v14, "json syntax error, not match new Date"

    if-ge v4, v13, :cond_13

    const/16 v12, 0x44

    if-ne v3, v12, :cond_13

    aget-char v3, v1, v2

    const/16 v12, 0x61

    if-ne v3, v12, :cond_13

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v1, v3

    const/16 v12, 0x74

    if-ne v3, v12, :cond_13

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v1, v3

    if-ne v3, v15, :cond_13

    add-int/lit8 v2, v2, 0x3

    if-ne v2, v13, :cond_5

    :goto_3
    const/16 v2, 0x1a

    goto :goto_4

    :cond_5
    aget-char v2, v1, v2

    :goto_4
    if-gt v2, v11, :cond_7

    shl-long v12, v9, v2

    and-long/2addr v12, v7

    cmp-long v3, v12, v5

    if-eqz v3, :cond_7

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v4, v2, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v4, 0x1

    aget-char v3, v1, v4

    move v4, v2

    move v2, v3

    goto :goto_4

    :cond_7
    const/16 v3, 0x28

    if-ne v2, v3, :cond_12

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v4, v2, :cond_12

    add-int/lit8 v2, v4, 0x1

    aget-char v3, v1, v4

    :goto_5
    if-gt v3, v11, :cond_9

    shl-long v12, v9, v3

    and-long/2addr v12, v7

    cmp-long v4, v12, v5

    if-eqz v4, :cond_9

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_8

    const/16 v3, 0x1a

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5

    :cond_9
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readInt64Value()J

    move-result-wide v2

    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v13, 0x29

    if-ne v4, v13, :cond_11

    iget v4, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v12, v4, :cond_a

    move v4, v12

    const/16 v12, 0x1a

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v12, 0x1

    aget-char v12, v1, v12

    :goto_6
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v2, v3}, Ljava/util/Date;-><init>(J)V

    move v2, v4

    move v3, v12

    move-object v4, v13

    :goto_7
    if-gt v3, v11, :cond_c

    shl-long v12, v9, v3

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_c

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_b

    const/16 v3, 0x1a

    goto :goto_7

    :cond_b
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_7

    :cond_c
    const/16 v12, 0x2c

    if-ne v3, v12, :cond_d

    const/4 v12, 0x1

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    :goto_8
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v12, :cond_10

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_e

    move v3, v2

    const/16 v2, 0x1a

    goto :goto_9

    :cond_e
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    :goto_9
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :goto_a
    if-gt v3, v11, :cond_10

    shl-long v12, v9, v3

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_10

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_f

    const/16 v3, 0x1a

    goto :goto_a

    :cond_f
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    goto :goto_9

    :cond_10
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v4

    :cond_11
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json syntax error, not match null or new Date"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readNumber0()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    iput-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v3, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v5, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v6, 0x22

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    const/16 v14, 0x20

    const/4 v15, 0x1

    if-eq v4, v6, :cond_1

    const/16 v6, 0x27

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v2

    goto :goto_4

    :cond_1
    :goto_0
    add-int/lit8 v6, v2, 0x1

    aget-char v1, v3, v2

    if-ne v1, v4, :cond_5

    if-ne v6, v5, :cond_2

    :goto_1
    const/16 v2, 0x1a

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v6, 0x1

    aget-char v2, v3, v6

    :goto_2
    move v6, v1

    :goto_3
    if-gt v2, v14, :cond_4

    shl-long v16, v12, v2

    and-long v16, v16, v10

    cmp-long v1, v16, v8

    if-eqz v1, :cond_4

    if-ne v6, v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v6, 0x1

    aget-char v2, v3, v6

    goto :goto_2

    :cond_4
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->nextIfComma()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    iput-boolean v15, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iput-byte v7, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    return-void

    :cond_5
    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    :goto_4
    const-string v8, "illegal input"

    const/16 v9, 0x2b

    const/16 v10, 0x2d

    if-ne v4, v10, :cond_7

    if-eq v6, v5, :cond_6

    iput-boolean v15, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    add-int/lit8 v4, v6, 0x1

    aget-char v8, v3, v6

    goto :goto_6

    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-ne v4, v9, :cond_9

    if-eq v6, v5, :cond_8

    add-int/lit8 v4, v6, 0x1

    aget-char v8, v3, v6

    move/from16 v19, v8

    move v8, v4

    move/from16 v4, v19

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move v8, v6

    :goto_5
    move/from16 v19, v8

    move v8, v4

    move/from16 v4, v19

    :goto_6
    iput-byte v15, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    const/4 v11, 0x0

    const/16 v18, 0x0

    :goto_7
    const/16 v12, 0x39

    const/16 v13, 0xa

    const/16 v14, 0x30

    const v7, -0xccccccc

    if-lt v8, v14, :cond_d

    if-gt v8, v12, :cond_d

    if-nez v11, :cond_b

    add-int/lit8 v8, v8, -0x30

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    mul-int/2addr v9, v13

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ge v9, v7, :cond_a

    :goto_8
    move v11, v15

    goto :goto_9

    :cond_a
    sub-int/2addr v9, v8

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ge v9, v7, :cond_b

    goto :goto_8

    :cond_b
    :goto_9
    if-ne v4, v5, :cond_c

    add-int/lit8 v4, v4, 0x1

    move/from16 v18, v15

    const/16 v8, 0x1a

    goto :goto_a

    :cond_c
    add-int/lit8 v7, v4, 0x1

    aget-char v8, v3, v4

    move v4, v7

    move/from16 v18, v15

    const/4 v7, 0x5

    const/16 v9, 0x2b

    const/16 v14, 0x20

    goto :goto_7

    :cond_d
    :goto_a
    const/16 v9, 0x2e

    const/4 v10, 0x2

    if-ne v8, v9, :cond_11

    iput-byte v10, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    add-int/lit8 v8, v4, 0x1

    aget-char v4, v3, v4

    :goto_b
    move/from16 v19, v8

    move v8, v4

    move/from16 v4, v19

    if-lt v8, v14, :cond_11

    if-gt v8, v12, :cond_11

    if-nez v11, :cond_f

    add-int/lit8 v8, v8, -0x30

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    mul-int/2addr v9, v13

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ge v9, v7, :cond_e

    :goto_c
    move v11, v15

    goto :goto_d

    :cond_e
    sub-int/2addr v9, v8

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    if-ge v9, v7, :cond_f

    goto :goto_c

    :cond_f
    :goto_d
    iget-short v8, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    add-int/2addr v8, v15

    int-to-short v8, v8

    iput-short v8, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-ne v4, v5, :cond_10

    add-int/lit8 v4, v4, 0x1

    move/from16 v18, v15

    const/16 v8, 0x1a

    goto :goto_e

    :cond_10
    add-int/lit8 v8, v4, 0x1

    aget-char v4, v3, v4

    move/from16 v18, v15

    goto :goto_b

    :cond_11
    :goto_e
    if-eqz v11, :cond_16

    iget-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    if-eqz v7, :cond_12

    move v9, v6

    goto :goto_f

    :cond_12
    add-int/lit8 v9, v6, -0x1

    :goto_f
    iget-short v13, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-lez v13, :cond_13

    add-int/lit8 v13, v4, -0x2

    goto :goto_10

    :cond_13
    add-int/lit8 v13, v4, -0x1

    :goto_10
    sub-int/2addr v13, v9

    const/16 v15, 0x26

    if-le v13, v15, :cond_15

    const/16 v13, 0x8

    iput-byte v13, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    if-eqz v7, :cond_14

    add-int/lit8 v9, v9, -0x1

    :cond_14
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v13, v4, -0x1

    sub-int/2addr v13, v9

    invoke-direct {v7, v3, v9, v13}, Ljava/lang/String;-><init>([CII)V

    iput-object v7, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    goto :goto_11

    :cond_15
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v0, v3, v9, v7}, Lcom/alibaba/fastjson2/JSONReader;->w([CII)V

    goto :goto_11

    :cond_16
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    neg-int v7, v7

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    :goto_11
    const/16 v7, 0x65

    if-eq v8, v7, :cond_17

    const/16 v9, 0x45

    if-ne v8, v9, :cond_1e

    :cond_17
    add-int/lit8 v8, v4, 0x1

    aget-char v4, v3, v4

    const/16 v9, 0x2d

    if-ne v4, v9, :cond_18

    add-int/lit8 v4, v8, 0x1

    aget-char v8, v3, v8

    const/4 v9, 0x1

    :goto_12
    const/4 v13, 0x0

    :goto_13
    move/from16 v19, v8

    move v8, v4

    move/from16 v4, v19

    goto :goto_14

    :cond_18
    const/16 v9, 0x2b

    if-ne v4, v9, :cond_19

    add-int/lit8 v4, v8, 0x1

    aget-char v8, v3, v8

    const/4 v9, 0x0

    goto :goto_12

    :cond_19
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_14
    if-lt v4, v14, :cond_1c

    if-gt v4, v12, :cond_1c

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v4

    const/16 v4, 0x3ff

    if-gt v13, v4, :cond_1b

    if-ne v8, v5, :cond_1a

    const/16 v4, 0x1a

    const/16 v18, 0x1

    goto :goto_15

    :cond_1a
    add-int/lit8 v4, v8, 0x1

    aget-char v8, v3, v8

    const/16 v18, 0x1

    goto :goto_13

    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too large exp value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_15
    if-eqz v9, :cond_1d

    neg-int v13, v13

    :cond_1d
    int-to-short v9, v13

    iput-short v9, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    iput-byte v10, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    move/from16 v19, v8

    move v8, v4

    move/from16 v4, v19

    :cond_1e
    if-ne v4, v6, :cond_26

    const/16 v6, 0x6e

    const/16 v9, 0x75

    const/16 v10, 0x6c

    if-ne v8, v6, :cond_20

    aget-char v6, v3, v4

    if-ne v6, v9, :cond_26

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v3, v6

    if-ne v6, v10, :cond_26

    add-int/lit8 v6, v4, 0x2

    aget-char v6, v3, v6

    if-ne v6, v10, :cond_26

    add-int/lit8 v4, v4, 0x3

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    const/4 v6, 0x5

    iput-byte v6, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    if-ne v4, v5, :cond_1f

    const/16 v8, 0x1a

    goto :goto_16

    :cond_1f
    add-int/lit8 v6, v4, 0x1

    aget-char v4, v3, v4

    move v8, v4

    move v4, v6

    :goto_16
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v18, 0x1

    goto/16 :goto_1a

    :cond_20
    const/16 v6, 0x74

    const/4 v12, 0x4

    if-ne v8, v6, :cond_22

    aget-char v6, v3, v4

    const/16 v13, 0x72

    if-ne v6, v13, :cond_22

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v3, v6

    if-ne v6, v9, :cond_22

    add-int/lit8 v6, v4, 0x2

    aget-char v6, v3, v6

    if-ne v6, v7, :cond_22

    add-int/lit8 v4, v4, 0x3

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    iput-byte v12, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    if-ne v4, v5, :cond_21

    const/16 v8, 0x1a

    goto :goto_17

    :cond_21
    add-int/lit8 v7, v4, 0x1

    aget-char v4, v3, v4

    move v8, v4

    move v4, v7

    :goto_17
    move/from16 v18, v6

    :goto_18
    const/4 v7, 0x0

    goto :goto_1a

    :cond_22
    const/4 v6, 0x1

    const/16 v9, 0x66

    if-ne v8, v9, :cond_24

    aget-char v9, v3, v4

    const/16 v13, 0x61

    if-ne v9, v13, :cond_24

    add-int/lit8 v9, v4, 0x1

    aget-char v9, v3, v9

    if-ne v9, v10, :cond_24

    add-int/lit8 v9, v4, 0x2

    aget-char v9, v3, v9

    const/16 v10, 0x73

    if-ne v9, v10, :cond_24

    add-int/lit8 v9, v4, 0x3

    aget-char v9, v3, v9

    if-ne v9, v7, :cond_24

    add-int/lit8 v4, v4, 0x4

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    iput-byte v12, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    if-ne v4, v5, :cond_23

    const/16 v8, 0x1a

    goto :goto_19

    :cond_23
    add-int/lit8 v8, v4, 0x1

    aget-char v4, v3, v4

    move/from16 v19, v8

    move v8, v4

    move/from16 v4, v19

    :goto_19
    move/from16 v18, v6

    goto :goto_1a

    :cond_24
    const/4 v7, 0x0

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_25

    if-nez v1, :cond_25

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v8, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    return-void

    :cond_25
    const/16 v9, 0x5b

    if-ne v8, v9, :cond_27

    if-nez v1, :cond_27

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v8, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    const/4 v1, 0x7

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    return-void

    :cond_26
    const/4 v6, 0x1

    goto :goto_18

    :cond_27
    :goto_1a
    if-eqz v1, :cond_2a

    if-eq v8, v1, :cond_28

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->m0()V

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    return-void

    :cond_28
    if-ne v4, v5, :cond_29

    const/16 v8, 0x1a

    goto :goto_1b

    :cond_29
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    move v4, v1

    move v8, v2

    :cond_2a
    :goto_1b
    const/16 v1, 0x46

    const/16 v2, 0x4c

    if-eq v8, v2, :cond_2b

    if-eq v8, v1, :cond_2b

    const/16 v9, 0x44

    if-eq v8, v9, :cond_2b

    const/16 v9, 0x42

    if-eq v8, v9, :cond_2b

    const/16 v9, 0x53

    if-ne v8, v9, :cond_33

    :cond_2b
    if-nez v11, :cond_31

    const/16 v9, 0x42

    if-eq v8, v9, :cond_30

    const/16 v9, 0x44

    if-eq v8, v9, :cond_2f

    if-eq v8, v1, :cond_2e

    if-eq v8, v2, :cond_2d

    const/16 v1, 0x53

    if-eq v8, v1, :cond_2c

    goto :goto_1c

    :cond_2c
    const/16 v1, 0xa

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    goto :goto_1c

    :cond_2d
    const/16 v1, 0xb

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    goto :goto_1c

    :cond_2e
    const/16 v1, 0xc

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    goto :goto_1c

    :cond_2f
    const/16 v1, 0xd

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    goto :goto_1c

    :cond_30
    const/16 v1, 0x9

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    :cond_31
    :goto_1c
    if-ne v4, v5, :cond_32

    :goto_1d
    const/16 v8, 0x1a

    goto :goto_1f

    :cond_32
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    :goto_1e
    move v4, v1

    move v8, v2

    :cond_33
    :goto_1f
    const/16 v1, 0x20

    if-gt v8, v1, :cond_35

    const-wide/16 v1, 0x1

    shl-long v9, v1, v8

    const-wide v1, 0x100003700L

    and-long/2addr v9, v1

    const-wide/16 v1, 0x0

    cmp-long v9, v9, v1

    if-eqz v9, :cond_35

    if-ne v4, v5, :cond_34

    goto :goto_1d

    :cond_34
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    goto :goto_1e

    :cond_35
    const/16 v1, 0x2c

    if-ne v8, v1, :cond_36

    move v1, v6

    goto :goto_20

    :cond_36
    move v1, v7

    :goto_20
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_39

    if-ne v4, v5, :cond_37

    const/16 v2, 0x1a

    goto :goto_21

    :cond_37
    add-int/lit8 v1, v4, 0x1

    aget-char v2, v3, v4

    move v4, v1

    :goto_21
    move v8, v2

    const/16 v1, 0x20

    :goto_22
    if-gt v8, v1, :cond_39

    const-wide/16 v6, 0x1

    shl-long v9, v6, v8

    const-wide v11, 0x100003700L

    and-long/2addr v9, v11

    const-wide/16 v13, 0x0

    cmp-long v2, v9, v13

    if-eqz v2, :cond_39

    if-ne v4, v5, :cond_38

    const/16 v8, 0x1a

    goto :goto_22

    :cond_38
    add-int/lit8 v2, v4, 0x1

    aget-char v4, v3, v4

    move v8, v4

    move v4, v2

    goto :goto_22

    :cond_39
    if-eqz v18, :cond_3a

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v8, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-void

    :cond_3a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alibaba/fastjson2/h;->w:[C

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    const/16 v5, 0x27

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v1

    goto/16 :goto_b

    :cond_1
    :goto_0
    iget-object v5, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-boolean v5, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->b:Z

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->c:Z

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->e:Z

    if-nez v5, :cond_2

    iget-boolean v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->h:Z

    if-eqz v3, :cond_0

    :cond_2
    add-int/lit8 v3, v2, 0x13

    array-length v5, v0

    if-ge v3, v5, :cond_0

    iget v5, v1, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v2, 0x4

    aget-char v5, v0, v5

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_0

    add-int/lit8 v5, v2, 0x7

    aget-char v5, v0, v5

    if-ne v5, v7, :cond_0

    add-int/lit8 v5, v2, 0xa

    aget-char v5, v0, v5

    const/16 v7, 0x20

    if-eq v5, v7, :cond_3

    const/16 v7, 0x54

    if-ne v5, v7, :cond_0

    :cond_3
    add-int/lit8 v5, v2, 0xd

    aget-char v5, v0, v5

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_0

    add-int/lit8 v5, v2, 0x10

    aget-char v5, v0, v5

    if-ne v5, v7, :cond_0

    aget-char v5, v0, v2

    add-int/lit8 v7, v2, 0x1

    aget-char v7, v0, v7

    add-int/lit8 v8, v2, 0x2

    aget-char v8, v0, v8

    add-int/lit8 v9, v2, 0x3

    aget-char v9, v0, v9

    add-int/lit8 v10, v2, 0x5

    aget-char v10, v0, v10

    add-int/lit8 v11, v2, 0x6

    aget-char v11, v0, v11

    add-int/lit8 v12, v2, 0x8

    aget-char v12, v0, v12

    add-int/lit8 v13, v2, 0x9

    aget-char v13, v0, v13

    add-int/lit8 v14, v2, 0xb

    aget-char v14, v0, v14

    add-int/lit8 v15, v2, 0xc

    aget-char v15, v0, v15

    add-int/lit8 v16, v2, 0xe

    aget-char v6, v0, v16

    add-int/lit8 v16, v2, 0xf

    move/from16 v17, v3

    aget-char v3, v0, v16

    add-int/lit8 v16, v2, 0x11

    move/from16 v18, v4

    aget-char v4, v0, v16

    add-int/lit8 v16, v2, 0x12

    aget-char v1, v0, v16

    move-object/from16 v16, v0

    const/16 v0, 0x30

    if-lt v5, v0, :cond_16

    move/from16 v19, v2

    const/16 v2, 0x39

    if-gt v5, v2, :cond_16

    if-lt v7, v0, :cond_16

    if-gt v7, v2, :cond_16

    if-lt v8, v0, :cond_16

    if-gt v8, v2, :cond_16

    if-lt v9, v0, :cond_16

    if-gt v9, v2, :cond_16

    sub-int/2addr v5, v0

    mul-int/lit16 v5, v5, 0x3e8

    sub-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v5, v7

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v5, v8

    sub-int/2addr v9, v0

    add-int/2addr v5, v9

    if-lt v10, v0, :cond_14

    if-gt v10, v2, :cond_14

    if-lt v11, v0, :cond_14

    if-gt v11, v2, :cond_14

    sub-int/2addr v10, v0

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v0

    add-int/2addr v10, v11

    if-lt v12, v0, :cond_12

    if-gt v12, v2, :cond_12

    if-lt v13, v0, :cond_12

    if-gt v13, v2, :cond_12

    sub-int/2addr v12, v0

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v0

    add-int/2addr v12, v13

    if-lt v14, v0, :cond_10

    if-gt v14, v2, :cond_10

    if-lt v15, v0, :cond_10

    if-gt v15, v2, :cond_10

    sub-int/2addr v14, v0

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v15, v0

    add-int/2addr v14, v15

    if-lt v6, v0, :cond_e

    if-gt v6, v2, :cond_e

    if-lt v3, v0, :cond_e

    if-gt v3, v2, :cond_e

    sub-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v3, v0

    add-int/2addr v6, v3

    if-lt v4, v0, :cond_c

    if-gt v4, v2, :cond_c

    if-lt v1, v0, :cond_c

    if-gt v1, v2, :cond_c

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v1, v0

    add-int/2addr v4, v1

    if-nez v5, :cond_4

    if-nez v10, :cond_4

    if-nez v12, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-static {v5, v10, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v19, 0x1f

    move/from16 v1, v17

    :goto_2
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v8, p0

    if-ge v1, v2, :cond_6

    iget v9, v8, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v1, v9, :cond_6

    move-object/from16 v9, v16

    array-length v10, v9

    if-ge v1, v10, :cond_7

    aget-char v10, v9, v1

    move/from16 v11, v18

    if-ne v10, v11, :cond_5

    add-int/lit8 v10, v1, -0x1

    aget-char v10, v9, v10

    const/16 v12, 0x5a

    if-ne v10, v12, :cond_5

    sub-int v2, v1, v17

    add-int/lit8 v2, v2, -0x2

    sub-int v1, v1, v19

    add-int/2addr v1, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v16, v9

    move/from16 v18, v11

    goto :goto_2

    :cond_6
    move-object/from16 v9, v16

    :cond_7
    move v2, v3

    move v1, v5

    :goto_3
    if-ne v2, v3, :cond_8

    const/16 v3, 0x15

    if-ne v1, v3, :cond_18

    :cond_8
    if-gtz v2, :cond_9

    move v2, v5

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v19, 0x14

    invoke-static {v9, v2, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->readNanos([CII)I

    move-result v2

    :goto_4
    invoke-static {v14, v6, v4, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    iget v2, v8, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v1

    iput v2, v8, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, v8, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_a

    move v5, v7

    :cond_a
    iput-boolean v5, v8, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_b
    return-object v0

    :catch_0
    move-exception v0

    move-object/from16 v8, p0

    move-object v1, v0

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "read date error"

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v6, 0x0

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v6

    :goto_5
    return-object v6

    :cond_e
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v6, 0x0

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v6

    :goto_6
    return-object v6

    :cond_10
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v6, 0x0

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v6

    :goto_7
    return-object v6

    :cond_12
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v6, 0x0

    goto :goto_8

    :cond_13
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v6

    :goto_8
    return-object v6

    :cond_14
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v6, 0x0

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v6

    :goto_9
    return-object v6

    :cond_16
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 v6, 0x0

    goto :goto_a

    :cond_17
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v6

    :goto_a
    return-object v6

    :cond_18
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 v6, 0x0

    goto :goto_c

    :cond_19
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v6

    :goto_c
    return-object v6
.end method

.method public final readOffsetTime()Ljava/time/OffsetTime;
    .locals 15

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x22

    const-string v5, "illegal offsetTime"

    if-eq v3, v4, :cond_0

    const/16 v4, 0x27

    if-ne v3, v4, :cond_c

    :cond_0
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->a:Ljava/lang/String;

    if-nez v2, :cond_c

    add-int/lit8 v2, v1, 0x8

    array-length v4, v0

    if-ge v2, v4, :cond_c

    iget v4, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v2, v4, :cond_c

    add-int/lit8 v4, v1, 0x2

    aget-char v4, v0, v4

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_c

    add-int/lit8 v4, v1, 0x5

    aget-char v4, v0, v4

    if-ne v4, v6, :cond_c

    aget-char v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x6

    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x7

    aget-char v10, v0, v10

    const/16 v11, 0x30

    if-lt v4, v11, :cond_b

    const/16 v12, 0x39

    if-gt v4, v12, :cond_b

    if-lt v6, v11, :cond_b

    if-gt v6, v12, :cond_b

    sub-int/2addr v4, v11

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v6, v11

    add-int/2addr v4, v6

    if-lt v7, v11, :cond_a

    if-gt v7, v12, :cond_a

    if-lt v8, v11, :cond_a

    if-gt v8, v12, :cond_a

    sub-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v11

    add-int/2addr v7, v8

    if-lt v9, v11, :cond_9

    if-gt v9, v12, :cond_9

    if-lt v10, v11, :cond_9

    if-gt v10, v12, :cond_9

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    add-int/lit8 v5, v1, 0x19

    const/4 v6, -0x1

    move v8, v2

    move v10, v6

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v8, v5, :cond_4

    iget v13, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v8, v13, :cond_4

    array-length v13, v0

    if-ge v8, v13, :cond_4

    aget-char v13, v0, v8

    if-ne v10, v6, :cond_2

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_1

    const/16 v14, 0x2b

    if-eq v13, v14, :cond_1

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_2

    :cond_1
    sub-int v10, v8, v2

    sub-int/2addr v10, v12

    :cond_2
    if-ne v13, v3, :cond_3

    sub-int/2addr v8, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move v8, v11

    :goto_1
    if-gtz v10, :cond_5

    move v2, v11

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v1, 0x9

    invoke-static {v0, v10, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->readNanos([CII)I

    move-result v2

    :goto_2
    add-int/lit8 v3, v8, -0x9

    sub-int/2addr v3, v10

    if-gt v3, v12, :cond_6

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v1, v10

    invoke-direct {v5, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v5}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v0

    :goto_3
    invoke-static {v4, v7, v9, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_7

    move v11, v12

    :cond_7
    iput-boolean v11, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readPattern()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_9

    iget-object v1, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    move v4, v3

    :goto_0
    iget v5, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v4, v5, :cond_1

    aget-char v5, v1, v4

    if-ne v5, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/String;

    sub-int v5, v4, v3

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    const/4 v3, 0x1

    add-int/2addr v4, v3

    iget v5, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v6, 0x1a

    if-ne v4, v5, :cond_2

    move v5, v4

    :goto_2
    move v4, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    aget-char v4, v1, v4

    :goto_3
    const-wide/16 v7, 0x0

    const-wide v9, 0x100003700L

    const-wide/16 v11, 0x1

    const/16 v13, 0x20

    if-gt v4, v13, :cond_4

    shl-long v14, v11, v4

    and-long/2addr v14, v9

    cmp-long v14, v14, v7

    if-eqz v14, :cond_4

    iget v4, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v5, 0x1

    aget-char v5, v1, v5

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    goto :goto_3

    :cond_4
    const/16 v14, 0x2c

    if-ne v4, v14, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v3, :cond_8

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v3, :cond_6

    :goto_5
    move v4, v6

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v5, 0x1

    aget-char v4, v1, v5

    :goto_6
    move v5, v3

    :goto_7
    if-gt v4, v13, :cond_8

    shl-long v14, v11, v4

    and-long/2addr v14, v9

    cmp-long v3, v14, v7

    if-eqz v3, :cond_8

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v5, 0x1

    aget-char v4, v1, v5

    goto :goto_6

    :cond_8
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-object v2

    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "illegal pattern"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readReference()Ljava/lang/String;
    .locals 15

    iget v0, p0, Lcom/alibaba/fastjson2/h;->Z:I

    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/h;->w:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-char v0, v1, v0

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->readString()Ljava/lang/String;

    move-result-object v0

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :goto_0
    const-wide/16 v4, 0x0

    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v10, 0x20

    const/16 v11, 0x1a

    if-gt v2, v10, :cond_2

    shl-long v12, v8, v2

    and-long/2addr v12, v6

    cmp-long v12, v12, v4

    if-eqz v12, :cond_2

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_1

    move v2, v11

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_0

    :cond_2
    const/16 v12, 0x7d

    if-ne v2, v12, :cond_a

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_3

    move v2, v3

    :goto_1
    move v3, v11

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    :goto_2
    if-gt v3, v10, :cond_5

    shl-long v12, v8, v3

    and-long/2addr v12, v6

    cmp-long v12, v12, v4

    if-eqz v12, :cond_5

    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    move v14, v3

    move v3, v2

    move v2, v14

    goto :goto_2

    :cond_5
    const/16 v12, 0x2c

    if-ne v3, v12, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    iput-boolean v12, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v12, :cond_9

    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_7

    move v3, v2

    move v2, v11

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    :goto_4
    move v14, v3

    move v3, v2

    move v2, v14

    :goto_5
    if-gt v3, v10, :cond_9

    shl-long v12, v8, v3

    and-long/2addr v12, v6

    cmp-long v12, v12, v4

    if-eqz v12, :cond_9

    iget v3, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_8

    move v3, v11

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    goto :goto_4

    :cond_9
    iput-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_a
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "illegal reference : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v4, 0x27

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->readStringNotMatch()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v5, 0x0

    move v6, v4

    move v7, v5

    move v8, v7

    :goto_1
    iget v9, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v6, v9, :cond_1b

    aget-char v9, v1, v6

    const/16 v10, 0x78

    const/16 v11, 0x75

    const/16 v12, 0x5c

    const/4 v13, 0x1

    if-ne v9, v12, :cond_4

    add-int/lit8 v6, v6, 0x1

    aget-char v8, v1, v6

    if-eq v8, v11, :cond_3

    if-eq v8, v10, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x4

    :goto_2
    add-int/2addr v6, v13

    move v8, v13

    goto/16 :goto_b

    :cond_4
    if-ne v9, v2, :cond_1a

    if-eqz v8, :cond_e

    new-array v7, v7, [C

    move v6, v5

    :goto_3
    aget-char v8, v1, v4

    if-ne v8, v12, :cond_c

    add-int/lit8 v4, v4, 0x1

    aget-char v8, v1, v4

    if-eq v8, v3, :cond_d

    if-eq v8, v12, :cond_d

    const/16 v9, 0x62

    if-eq v8, v9, :cond_b

    const/16 v9, 0x66

    if-eq v8, v9, :cond_a

    const/16 v9, 0x6e

    if-eq v8, v9, :cond_9

    const/16 v9, 0x72

    if-eq v8, v9, :cond_8

    if-eq v8, v10, :cond_7

    const/16 v9, 0x74

    if-eq v8, v9, :cond_6

    if-eq v8, v11, :cond_5

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v8

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v4, 0x1

    aget-char v8, v1, v8

    add-int/lit8 v9, v4, 0x2

    aget-char v9, v1, v9

    add-int/lit8 v14, v4, 0x3

    aget-char v14, v1, v14

    add-int/lit8 v4, v4, 0x4

    aget-char v15, v1, v4

    invoke-static {v8, v9, v14, v15}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v8

    goto :goto_4

    :cond_6
    const/16 v8, 0x9

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v4, 0x1

    aget-char v8, v1, v8

    add-int/lit8 v4, v4, 0x2

    aget-char v9, v1, v4

    invoke-static {v8, v9}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v8

    goto :goto_4

    :cond_8
    const/16 v8, 0xd

    goto :goto_4

    :cond_9
    const/16 v8, 0xa

    goto :goto_4

    :cond_a
    const/16 v8, 0xc

    goto :goto_4

    :cond_b
    const/16 v8, 0x8

    goto :goto_4

    :cond_c
    if-ne v8, v2, :cond_d

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([C)V

    move v6, v4

    goto :goto_5

    :cond_d
    :goto_4
    aput-char v8, v7, v6

    add-int/2addr v4, v13

    add-int/2addr v6, v13

    goto :goto_3

    :cond_e
    iget-object v2, v0, Lcom/alibaba/fastjson2/h;->v:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_f
    new-instance v2, Ljava/lang/String;

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sub-int v4, v6, v3

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    :goto_5
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v9

    cmp-long v3, v3, v7

    if-eqz v3, :cond_11

    const/4 v2, 0x0

    :cond_11
    add-int/2addr v6, v13

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v4, 0x1a

    if-eq v6, v3, :cond_19

    add-int/lit8 v3, v6, 0x1

    aget-char v6, v1, v6

    :goto_6
    const-wide v9, 0x100003700L

    const-wide/16 v11, 0x1

    const/16 v14, 0x20

    if-gt v6, v14, :cond_13

    shl-long v15, v11, v6

    and-long/2addr v15, v9

    cmp-long v15, v15, v7

    if-eqz v15, :cond_13

    iget v6, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v6, :cond_12

    move v6, v3

    goto :goto_a

    :cond_12
    add-int/lit8 v6, v3, 0x1

    aget-char v3, v1, v3

    move/from16 v17, v6

    move v6, v3

    move/from16 v3, v17

    goto :goto_6

    :cond_13
    const/16 v15, 0x2c

    if-ne v6, v15, :cond_14

    move v5, v13

    :cond_14
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v5, :cond_18

    iget v5, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v5, :cond_15

    goto :goto_9

    :cond_15
    add-int/lit8 v5, v3, 0x1

    aget-char v3, v1, v3

    :goto_7
    if-gt v3, v14, :cond_17

    shl-long v15, v11, v3

    and-long/2addr v15, v9

    cmp-long v6, v15, v7

    if-eqz v6, :cond_17

    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v5, v3, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 v3, v5, 0x1

    aget-char v5, v1, v5

    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    goto :goto_7

    :cond_17
    move v4, v3

    :goto_8
    move v3, v5

    goto :goto_9

    :cond_18
    move v4, v6

    :goto_9
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v2

    :cond_19
    :goto_a
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v2

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_1b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "invalid escape character EOI"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readUUID()Ljava/util/UUID;
    .locals 19

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x6e

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readNull()V

    return-object v3

    :cond_0
    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    const/16 v2, 0x27

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "syntax error, can not read uuid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/h;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v4, 0x24

    array-length v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x20

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    if-ge v5, v6, :cond_8

    aget-char v5, v2, v5

    if-ne v5, v1, :cond_8

    add-int/lit8 v5, v4, 0x8

    aget-char v5, v2, v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_8

    add-int/lit8 v5, v4, 0xd

    aget-char v5, v2, v5

    if-ne v5, v6, :cond_8

    add-int/lit8 v5, v4, 0x12

    aget-char v5, v2, v5

    if-ne v5, v6, :cond_8

    add-int/lit8 v5, v4, 0x17

    aget-char v5, v2, v5

    if-ne v5, v6, :cond_8

    move v1, v7

    move-wide v5, v9

    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_3

    shl-long/2addr v5, v11

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    add-int v12, v4, v1

    aget-char v12, v2, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v3, v3, v12

    int-to-long v12, v3

    add-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    :goto_2
    const/16 v3, 0xd

    if-ge v1, v3, :cond_4

    shl-long/2addr v5, v11

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    add-int v12, v4, v1

    aget-char v12, v2, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v3, v3, v12

    int-to-long v12, v3

    add-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v1, 0xe

    :goto_3
    const/16 v3, 0x12

    if-ge v1, v3, :cond_5

    shl-long/2addr v5, v11

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    add-int v12, v4, v1

    aget-char v12, v2, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v3, v3, v12

    int-to-long v12, v3

    add-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/16 v1, 0x13

    move-wide v12, v9

    :goto_4
    const/16 v3, 0x17

    if-ge v1, v3, :cond_6

    shl-long/2addr v12, v11

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    add-int v14, v4, v1

    aget-char v14, v2, v14

    add-int/lit8 v14, v14, -0x30

    aget-byte v3, v3, v14

    int-to-long v14, v3

    add-long/2addr v12, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const/16 v1, 0x18

    :goto_5
    const/16 v3, 0x24

    if-ge v1, v3, :cond_7

    shl-long/2addr v12, v11

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    add-int v14, v4, v1

    aget-char v14, v2, v14

    add-int/lit8 v14, v14, -0x30

    aget-byte v3, v3, v14

    int-to-long v14, v3

    add-long/2addr v12, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x25

    goto :goto_8

    :cond_8
    add-int/lit8 v5, v4, 0x20

    array-length v6, v2

    if-ge v5, v6, :cond_10

    aget-char v5, v2, v5

    if-ne v5, v1, :cond_10

    move v1, v7

    move-wide v5, v9

    :goto_6
    const/16 v3, 0x10

    if-ge v1, v3, :cond_9

    shl-long/2addr v5, v11

    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    add-int v12, v4, v1

    aget-char v12, v2, v12

    add-int/lit8 v12, v12, -0x30

    aget-byte v3, v3, v12

    int-to-long v12, v3

    add-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    move-wide v12, v9

    :goto_7
    if-ge v3, v8, :cond_a

    shl-long/2addr v12, v11

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    add-int v14, v4, v3

    aget-char v14, v2, v14

    add-int/lit8 v14, v14, -0x30

    aget-byte v1, v1, v14

    int-to-long v14, v1

    add-long/2addr v12, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x21

    :goto_8
    iget v1, v0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v3, 0x1a

    if-ne v4, v1, :cond_b

    move v1, v4

    :goto_9
    move v4, v3

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v2, v4

    :goto_a
    if-gt v4, v8, :cond_d

    const-wide/16 v14, 0x1

    shl-long/2addr v14, v4

    const-wide v16, 0x100003700L

    and-long v14, v14, v16

    cmp-long v11, v14, v9

    if-eqz v11, :cond_d

    iget v4, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v1, v4, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v2, v1

    move/from16 v18, v4

    move v4, v1

    move/from16 v1, v18

    goto :goto_a

    :cond_d
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v1, 0x2c

    if-ne v4, v1, :cond_e

    const/4 v7, 0x1

    :cond_e
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v7, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->next()V

    goto :goto_b

    :cond_f
    iput-char v4, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    :goto_b
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v5, v6, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v3

    :cond_11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public readValueHashCode()J
    .locals 23

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    const/16 v3, 0x27

    if-eq v1, v3, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/h;->w:[C

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v5, v0, Lcom/alibaba/fastjson2/h;->J:I

    iget v6, v0, Lcom/alibaba/fastjson2/h;->z:I

    const-wide/16 v7, 0x0

    move v9, v4

    move-wide v10, v7

    :goto_0
    const/16 v12, 0x78

    const/16 v13, 0x75

    const/16 v14, 0x5c

    const/16 v15, 0x20

    const/4 v4, 0x1

    if-ge v5, v6, :cond_8

    aget-char v2, v3, v5

    if-ne v2, v1, :cond_2

    if-nez v9, :cond_1

    iget v5, v0, Lcom/alibaba/fastjson2/h;->J:I

    :goto_1
    move-wide v10, v7

    goto/16 :goto_6

    :cond_1
    iput v9, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v5, v0, Lcom/alibaba/fastjson2/h;->O:I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_2
    if-ne v2, v14, :cond_5

    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v5, v5, 0x1

    aget-char v2, v3, v5

    if-eq v2, v13, :cond_4

    if-eq v2, v12, :cond_3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v5, 0x1

    aget-char v2, v3, v2

    add-int/lit8 v5, v5, 0x2

    aget-char v12, v3, v5

    invoke-static {v2, v12}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v5, 0x1

    aget-char v2, v3, v2

    add-int/lit8 v12, v5, 0x2

    aget-char v12, v3, v12

    add-int/lit8 v19, v5, 0x3

    aget-char v13, v3, v19

    add-int/lit8 v5, v5, 0x4

    aget-char v14, v3, v5

    invoke-static {v2, v12, v13, v14}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v2

    :cond_5
    :goto_2
    const/16 v12, 0xff

    if-gt v2, v12, :cond_7

    const/16 v12, 0x8

    if-ge v9, v12, :cond_7

    if-nez v9, :cond_6

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    packed-switch v9, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    int-to-byte v2, v2

    int-to-long v12, v2

    const/16 v2, 0x38

    shl-long/2addr v12, v2

    const-wide v14, 0xffffffffffffffL

    goto :goto_3

    :pswitch_1
    int-to-byte v2, v2

    int-to-long v12, v2

    const/16 v2, 0x30

    shl-long/2addr v12, v2

    const-wide v14, 0xffffffffffffL

    goto :goto_3

    :pswitch_2
    int-to-byte v2, v2

    int-to-long v12, v2

    const/16 v2, 0x28

    shl-long/2addr v12, v2

    const-wide v14, 0xffffffffffL

    goto :goto_3

    :pswitch_3
    int-to-byte v2, v2

    int-to-long v12, v2

    shl-long/2addr v12, v15

    const-wide v14, 0xffffffffL

    goto :goto_3

    :pswitch_4
    int-to-byte v2, v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v12, v2

    const-wide/32 v14, 0xffffff

    goto :goto_3

    :pswitch_5
    int-to-byte v2, v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v12, v2

    const-wide/32 v14, 0xffff

    goto :goto_3

    :pswitch_6
    int-to-byte v2, v2

    shl-int/2addr v2, v12

    int-to-long v12, v2

    const-wide/16 v14, 0xff

    :goto_3
    and-long/2addr v10, v14

    add-long/2addr v10, v12

    goto :goto_4

    :pswitch_7
    int-to-byte v2, v2

    int-to-long v10, v2

    :goto_4
    add-int/2addr v5, v4

    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0x22

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    :goto_5
    iget v5, v0, Lcom/alibaba/fastjson2/h;->J:I

    goto/16 :goto_1

    :cond_8
    :goto_6
    cmp-long v1, v10, v7

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v10, v1

    const/4 v1, 0x0

    :goto_7
    aget-char v2, v3, v5

    const-wide v12, 0x100000001b3L

    const/16 v9, 0x5c

    if-ne v2, v9, :cond_c

    iput-boolean v4, v0, Lcom/alibaba/fastjson2/JSONReader;->nameEscape:Z

    add-int/lit8 v5, v5, 0x1

    aget-char v2, v3, v5

    const/16 v14, 0x75

    if-eq v2, v14, :cond_b

    const/16 v9, 0x78

    if-eq v2, v9, :cond_a

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->H(I)C

    move-result v2

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v5, 0x1

    aget-char v2, v3, v2

    add-int/lit8 v5, v5, 0x2

    aget-char v9, v3, v5

    invoke-static {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->I(II)C

    move-result v2

    goto :goto_8

    :cond_b
    add-int/lit8 v2, v5, 0x1

    aget-char v2, v3, v2

    add-int/lit8 v9, v5, 0x2

    aget-char v9, v3, v9

    add-int/lit8 v20, v5, 0x3

    aget-char v14, v3, v20

    add-int/lit8 v5, v5, 0x4

    aget-char v7, v3, v5

    invoke-static {v2, v9, v14, v7}, Lcom/alibaba/fastjson2/JSONReader;->M(IIII)C

    move-result v2

    :goto_8
    add-int/2addr v5, v4

    int-to-long v7, v2

    xor-long/2addr v7, v10

    mul-long/2addr v7, v12

    move-wide v10, v7

    const/16 v7, 0x22

    const-wide/16 v21, 0x0

    goto :goto_d

    :cond_c
    const/16 v7, 0x22

    if-ne v2, v7, :cond_13

    iput v1, v0, Lcom/alibaba/fastjson2/h;->Q:I

    iput v5, v0, Lcom/alibaba/fastjson2/h;->O:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    add-int/2addr v5, v4

    :goto_9
    const/16 v1, 0x1a

    if-ne v5, v6, :cond_d

    move v2, v1

    goto :goto_a

    :cond_d
    aget-char v2, v3, v5

    :goto_a
    const-wide v7, 0x100003700L

    const-wide/16 v12, 0x1

    if-gt v2, v15, :cond_e

    shl-long v17, v12, v2

    and-long v17, v17, v7

    const-wide/16 v19, 0x0

    cmp-long v9, v17, v19

    if-eqz v9, :cond_e

    add-int/lit8 v5, v5, 0x1

    aget-char v2, v3, v5

    goto :goto_a

    :cond_e
    const/16 v9, 0x2c

    if-ne v2, v9, :cond_f

    move v9, v4

    goto :goto_b

    :cond_f
    const/4 v9, 0x0

    :goto_b
    iput-boolean v9, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v9, :cond_12

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_10

    goto :goto_c

    :cond_10
    aget-char v1, v3, v5

    :goto_c
    if-gt v1, v15, :cond_11

    shl-long v16, v12, v1

    and-long v16, v16, v7

    const-wide/16 v21, 0x0

    cmp-long v2, v16, v21

    if-eqz v2, :cond_11

    add-int/lit8 v5, v5, 0x1

    aget-char v1, v3, v5

    goto :goto_c

    :cond_11
    move v2, v1

    :cond_12
    add-int/2addr v5, v4

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return-wide v10

    :cond_13
    const-wide/16 v21, 0x0

    add-int/lit8 v5, v5, 0x1

    int-to-long v8, v2

    xor-long/2addr v8, v10

    mul-long/2addr v8, v12

    move-wide v10, v8

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, v21

    goto/16 :goto_7

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

.method public readZonedDateTimeX(I)Ljava/time/ZonedDateTime;
    .locals 5

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "date only support string input"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v0, 0x13

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    return-object v1

    :cond_2
    const/16 v0, 0x1e

    const/16 v2, 0x5a

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v4, v3, 0x1d

    aget-char v4, v0, v4

    if-ne v4, v2, :cond_3

    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime29([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v4, v3, 0x1c

    aget-char v4, v0, v4

    if-ne v4, v2, :cond_4

    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime28([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v4, v3, 0x1b

    aget-char v4, v0, v4

    if-ne v4, v2, :cond_5

    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime27([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v4, v3, 0x1a

    aget-char v4, v0, v4

    if-ne v4, v2, :cond_6

    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime26([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/h;->w:[C

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    invoke-static {v0, v2, p1, v3}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_7

    return-object v1

    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->next()V

    :cond_9
    return-object v0
.end method

.method public skipComment()V
    .locals 12

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lcom/alibaba/fastjson2/h;->w:[C

    aget-char v0, v2, v0

    const/16 v3, 0x2a

    const/4 v4, 0x0

    const/16 v5, 0x2f

    const/4 v6, 0x1

    if-ne v0, v3, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_9

    move v0, v4

    :goto_0
    add-int/lit8 v7, v1, 0x1

    aget-char v1, v2, v1

    :goto_1
    if-eqz v0, :cond_2

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v7, v1, :cond_1

    aget-char v1, v2, v7

    if-ne v1, v5, :cond_1

    add-int/lit8 v7, v7, 0x1

    :goto_2
    move v1, v6

    goto :goto_3

    :cond_1
    move v1, v4

    goto :goto_3

    :cond_2
    const/16 v8, 0xa

    if-ne v1, v8, :cond_1

    goto :goto_2

    :goto_3
    const/16 v8, 0x1a

    if-eqz v1, :cond_6

    iget v0, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v7, v0, :cond_3

    goto :goto_6

    :cond_3
    aget-char v0, v2, v7

    :goto_4
    const/16 v1, 0x20

    if-gt v0, v1, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v0

    const-wide v9, 0x100003700L

    and-long/2addr v3, v9

    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-eqz v1, :cond_5

    add-int/lit8 v7, v7, 0x1

    iget v0, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v7, v0, :cond_4

    goto :goto_5

    :cond_4
    aget-char v0, v2, v7

    goto :goto_4

    :cond_5
    move v8, v0

    :goto_5
    add-int/2addr v7, v6

    goto :goto_6

    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-lt v7, v1, :cond_8

    :goto_6
    iput-char v8, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v7, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-ne v8, v5, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->skipComment()V

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v1, v7, 0x1

    aget-char v7, v2, v7

    move v11, v7

    move v7, v1

    move v1, v11

    goto :goto_1

    :cond_9
    return-void

    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipName()Z
    .locals 15

    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/h;->readFieldNameHashCodeUnquote()J

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->g0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v5, p0, Lcom/alibaba/fastjson2/h;->w:[C

    :goto_0
    add-int/lit8 v6, v1, 0x1

    aget-char v1, v5, v1

    const/16 v7, 0x5c

    if-ne v1, v7, :cond_4

    aget-char v1, v5, v6

    const/16 v7, 0x75

    if-ne v1, v7, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    const/16 v7, 0x78

    if-ne v1, v7, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    add-int/2addr v1, v6

    goto :goto_0

    :cond_4
    if-ne v1, v0, :cond_c

    iget v0, p0, Lcom/alibaba/fastjson2/h;->z:I

    const/16 v1, 0x1a

    if-ne v6, v0, :cond_5

    move v0, v6

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v6, 0x1

    aget-char v6, v5, v6

    :goto_3
    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v6, v11, :cond_7

    shl-long v12, v9, v6

    and-long/2addr v12, v7

    cmp-long v12, v12, v2

    if-eqz v12, :cond_7

    iget v6, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v0, v6, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v0, 0x1

    aget-char v0, v5, v0

    move v14, v6

    move v6, v0

    move v0, v14

    goto :goto_3

    :cond_7
    const/16 v12, 0x3a

    if-ne v6, v12, :cond_b

    iget v6, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v0, v6, :cond_8

    move v6, v0

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v0, 0x1

    aget-char v0, v5, v0

    :goto_5
    if-gt v0, v11, :cond_a

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v2

    if-eqz v12, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v6, v0, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v6, 0x1

    aget-char v6, v5, v6

    move v14, v6

    move v6, v0

    move v0, v14

    goto :goto_5

    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    return v4

    :cond_b
    invoke-static {v6}, Lcom/alibaba/fastjson2/JSONReader;->j0(I)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :cond_c
    move v1, v6

    goto :goto_0
.end method

.method public skipValue()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/h;->w:[C

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v4, 0x7d

    const/16 v5, 0x5d

    const/16 v6, 0x53

    const/16 v7, 0x65

    const/16 v8, 0x2e

    const/16 v9, 0x2d

    const/16 v10, 0x2b

    const/4 v11, 0x0

    const/4 v13, 0x1

    if-eq v2, v10, :cond_15

    const/16 v14, 0x66

    const/16 v15, 0x6c

    if-eq v2, v14, :cond_11

    const/16 v14, 0x6e

    const/16 v12, 0x75

    if-eq v2, v14, :cond_d

    const/16 v14, 0x74

    if-eq v2, v14, :cond_9

    if-eq v2, v9, :cond_15

    if-eq v2, v8, :cond_15

    packed-switch v2, :pswitch_data_0

    const/16 v7, 0x22

    if-eq v2, v7, :cond_8

    const/16 v7, 0x27

    if-ne v2, v7, :cond_0

    goto :goto_3

    :cond_0
    const/16 v7, 0x5b

    if-ne v2, v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->next()V

    move v2, v11

    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v3, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->next()V

    goto :goto_4

    :cond_1
    if-eqz v2, :cond_3

    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReader;->l0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->skipValue()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 v7, 0x7b

    if-ne v2, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->next()V

    :goto_2
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v2, v4, :cond_5

    iput-boolean v11, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->next()V

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->skipName()Z

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->skipValue()V

    goto :goto_2

    :cond_6
    if-ne v2, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->nextIfSet()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->skipValue()V

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->e0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/h;->n0()V

    :goto_4
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto/16 :goto_18

    :cond_9
    add-int/lit8 v6, v3, 0x3

    iget v8, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v6, v8, :cond_c

    aget-char v9, v1, v3

    const/16 v10, 0x72

    if-ne v9, v10, :cond_b

    add-int/lit8 v9, v3, 0x1

    aget-char v9, v1, v9

    if-ne v9, v12, :cond_b

    add-int/lit8 v9, v3, 0x2

    aget-char v9, v1, v9

    if-ne v9, v7, :cond_b

    if-ne v6, v8, :cond_a

    :goto_5
    move v3, v6

    :goto_6
    const/16 v2, 0x1a

    goto/16 :goto_18

    :cond_a
    add-int/lit8 v2, v6, 0x1

    aget-char v3, v1, v6

    :goto_7
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto/16 :goto_18

    :cond_b
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->e0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_c
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->e0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_d
    add-int/lit8 v6, v3, 0x3

    iget v7, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v6, v7, :cond_10

    aget-char v8, v1, v3

    if-ne v8, v12, :cond_f

    add-int/lit8 v8, v3, 0x1

    aget-char v8, v1, v8

    if-ne v8, v15, :cond_f

    add-int/lit8 v8, v3, 0x2

    aget-char v8, v1, v8

    if-ne v8, v15, :cond_f

    if-ne v6, v7, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v2, v6, 0x1

    aget-char v3, v1, v6

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->e0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->e0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_11
    add-int/lit8 v6, v3, 0x4

    iget v8, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-gt v6, v8, :cond_14

    aget-char v9, v1, v3

    const/16 v10, 0x61

    if-ne v9, v10, :cond_13

    add-int/lit8 v9, v3, 0x1

    aget-char v9, v1, v9

    if-ne v9, v15, :cond_13

    add-int/lit8 v9, v3, 0x2

    aget-char v9, v1, v9

    const/16 v10, 0x73

    if-ne v9, v10, :cond_13

    add-int/lit8 v9, v3, 0x3

    aget-char v9, v1, v9

    if-ne v9, v7, :cond_13

    if-ne v6, v8, :cond_12

    goto :goto_5

    :cond_12
    add-int/lit8 v2, v6, 0x1

    aget-char v3, v1, v6

    goto :goto_7

    :cond_13
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->e0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->e0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_15
    :pswitch_0
    if-eq v2, v9, :cond_17

    if-ne v2, v10, :cond_16

    goto :goto_8

    :cond_16
    move v12, v11

    goto :goto_9

    :cond_17
    :goto_8
    move v12, v13

    :goto_9
    if-eqz v12, :cond_19

    iget v12, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v3, v12, :cond_18

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_a

    :cond_18
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->i0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_19
    :goto_a
    if-ne v2, v8, :cond_1a

    move v12, v13

    goto :goto_b

    :cond_1a
    move v12, v11

    :goto_b
    const/16 v14, 0x39

    const/16 v15, 0x30

    if-nez v12, :cond_1e

    if-lt v2, v15, :cond_1e

    if-gt v2, v14, :cond_1e

    :cond_1b
    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_1c

    const/16 v2, 0x1a

    goto :goto_c

    :cond_1c
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :goto_c
    if-lt v2, v15, :cond_1d

    if-le v2, v14, :cond_1b

    :cond_1d
    move v12, v13

    goto :goto_d

    :cond_1e
    move v12, v11

    :goto_d
    const/16 v11, 0x46

    const/16 v5, 0x4c

    if-eqz v12, :cond_20

    if-eq v2, v5, :cond_1f

    if-eq v2, v11, :cond_1f

    const/16 v4, 0x44

    if-eq v2, v4, :cond_1f

    const/16 v4, 0x42

    if-eq v2, v4, :cond_1f

    if-ne v2, v6, :cond_20

    :cond_1f
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :cond_20
    if-ne v2, v8, :cond_25

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_21

    const/16 v2, 0x1a

    goto :goto_e

    :cond_21
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :goto_e
    if-lt v2, v15, :cond_24

    if-gt v2, v14, :cond_24

    :cond_22
    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_23

    const/16 v2, 0x1a

    goto :goto_f

    :cond_23
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :goto_f
    if-lt v2, v15, :cond_24

    if-le v2, v14, :cond_22

    :cond_24
    move v4, v13

    goto :goto_10

    :cond_25
    const/4 v4, 0x0

    :goto_10
    if-nez v12, :cond_27

    if-eqz v4, :cond_26

    goto :goto_11

    :cond_26
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->i0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_27
    :goto_11
    if-eq v2, v7, :cond_28

    const/16 v4, 0x45

    if-ne v2, v4, :cond_2e

    :cond_28
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    if-eq v3, v10, :cond_2a

    if-ne v3, v9, :cond_29

    goto :goto_12

    :cond_29
    const/16 v16, 0x0

    goto :goto_13

    :cond_2a
    :goto_12
    iget v4, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ge v2, v4, :cond_3a

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    move/from16 v16, v13

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :goto_13
    if-lt v3, v15, :cond_2d

    if-gt v3, v14, :cond_2d

    :goto_14
    iget v3, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v2, v3, :cond_2b

    move v3, v2

    const/16 v2, 0x1a

    goto :goto_15

    :cond_2b
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v1, v2

    :goto_15
    if-lt v2, v15, :cond_2e

    if-le v2, v14, :cond_2c

    goto :goto_16

    :cond_2c
    move v2, v3

    goto :goto_14

    :cond_2d
    if-nez v16, :cond_39

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :cond_2e
    :goto_16
    if-eq v2, v5, :cond_2f

    if-eq v2, v11, :cond_2f

    const/16 v4, 0x44

    if-eq v2, v4, :cond_2f

    const/16 v4, 0x42

    if-eq v2, v4, :cond_2f

    if-ne v2, v6, :cond_31

    :cond_2f
    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_30

    :goto_17
    goto/16 :goto_6

    :cond_30
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    goto/16 :goto_7

    :cond_31
    :goto_18
    const-wide/16 v4, 0x0

    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v10, 0x20

    if-gt v2, v10, :cond_33

    shl-long v11, v8, v2

    and-long/2addr v11, v6

    cmp-long v11, v11, v4

    if-eqz v11, :cond_33

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_32

    goto :goto_17

    :cond_32
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    goto/16 :goto_7

    :cond_33
    const/16 v11, 0x2c

    if-ne v2, v11, :cond_36

    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_34

    move v2, v3

    const/16 v3, 0x1a

    goto :goto_19

    :cond_34
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    :goto_19
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :goto_1a
    if-gt v2, v10, :cond_36

    shl-long v11, v8, v2

    and-long/2addr v11, v6

    cmp-long v11, v11, v4

    if-eqz v11, :cond_36

    iget v2, v0, Lcom/alibaba/fastjson2/h;->z:I

    if-ne v3, v2, :cond_35

    const/16 v2, 0x1a

    goto :goto_1a

    :cond_35
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v1, v3

    goto :goto_19

    :cond_36
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-nez v1, :cond_38

    const/16 v1, 0x1a

    if-eq v2, v1, :cond_38

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_38

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_38

    if-ne v2, v1, :cond_37

    goto :goto_1b

    :cond_37
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->e0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_38
    :goto_1b
    int-to-char v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_39
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->i0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_3a
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->i0(II)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
