.class public final Lcom/alibaba/fastjson2/g;
.super Lcom/alibaba/fastjson2/JSONReader;
.source "SourceFile"


# static fields
.field public static A0:Ljava/nio/charset/Charset;

.field public static final B0:[B

.field public static final y0:J

.field public static final z0:[B


# instance fields
.field public J:B

.field public O:I

.field public Q:[B

.field public Z:[C

.field public final k0:Lcom/alibaba/fastjson2/JSONFactory$b;

.field public final q0:Lcom/alibaba/fastjson2/SymbolTable;

.field public t0:J

.field public u0:I

.field public final v:[B

.field public v0:I

.field public final w:I

.field public w0:B

.field public final x:I

.field public x0:[J

.field public y:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/alibaba/fastjson2/g;->y0:J

    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/g;->z0:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson2/g;->B0:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x5t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x5t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x2t
        0x9t
        0x5t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->A:[Lcom/alibaba/fastjson2/JSONFactory$b;

    array-length v3, v2

    sub-int/2addr v3, v0

    and-int v0, v1, v3

    .line 3
    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/g;->k0:Lcom/alibaba/fastjson2/JSONFactory$b;

    .line 4
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->D:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 5
    iget v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    new-array v0, v0, [B

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p2, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 7
    iput-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    .line 8
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    iput v2, p0, Lcom/alibaba/fastjson2/g;->w:I

    .line 10
    iput v2, p0, Lcom/alibaba/fastjson2/g;->x:I

    .line 11
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    iput-object p1, p0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    return-void

    :cond_2
    add-int/2addr v2, v3

    .line 12
    :try_start_1
    array-length v3, v0

    if-ne v2, v3, :cond_1

    .line 13
    array-length v3, v0

    iget v4, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->m:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "read error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V

    .line 16
    iput-object p2, p0, Lcom/alibaba/fastjson2/g;->v:[B

    .line 17
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 18
    iput p4, p0, Lcom/alibaba/fastjson2/g;->w:I

    add-int/2addr p3, p4

    .line 19
    iput p3, p0, Lcom/alibaba/fastjson2/g;->x:I

    .line 20
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    iput-object p1, p0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    .line 21
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->A:[Lcom/alibaba/fastjson2/JSONFactory$b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    array-length p3, p1

    sub-int/2addr p3, v0

    and-int/2addr p2, p3

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/alibaba/fastjson2/g;->k0:Lcom/alibaba/fastjson2/JSONFactory$b;

    return-void
.end method

.method public static Q0(I)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type ref not found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static o0([BII)I
    .locals 1

    add-int/lit8 p2, p2, -0x44

    shl-int/lit8 p2, p2, 0x10

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p2, p0

    return p2
.end method

.method public static t0(B)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name not support input : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final A0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    sget-object p0, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    const-string p0, "GB18030"

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    sput-object p0, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final B0([BB)I
    .locals 5

    const/16 v0, -0x28

    if-lt p2, v0, :cond_0

    const/16 v1, -0x11

    if-gt p2, v1, :cond_0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x8

    return p2

    :cond_0
    const/16 v0, -0x38

    if-lt p2, v0, :cond_1

    const/16 v0, -0x29

    if-gt p2, v0, :cond_1

    add-int/lit8 p2, p2, 0x30

    shl-int/lit8 p2, p2, 0x8

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p2, p0

    return p2

    :cond_1
    const/16 v0, -0x40

    if-lt p2, v0, :cond_2

    const/16 v0, -0x39

    if-gt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x3c

    shl-int/lit8 p2, p2, 0x10

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p2, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, p1, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p2, p0

    return p2

    :cond_2
    const/16 v0, -0x54

    if-eq p2, v0, :cond_f

    const/16 v0, -0x53

    if-eq p2, v0, :cond_f

    const/16 v0, -0x47

    if-eq p2, v0, :cond_d

    const/16 v0, 0x7c

    const/4 v1, -0x1

    const/16 v2, 0x2e

    if-eq p2, v0, :cond_b

    const/16 v0, 0x79

    if-eq p2, v0, :cond_9

    const/16 v0, 0x7a

    if-eq p2, v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const/16 v0, 0x49

    if-lt p2, v0, :cond_4

    const/16 v3, 0x78

    if-gt p2, v3, :cond_4

    sub-int/2addr p2, v0

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_3

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInt32Value not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", offset "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_0
    long-to-int p0, p1

    return p0

    :pswitch_1
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, p1, p2

    return p0

    :pswitch_2
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v0

    :pswitch_3
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-float p0, p0

    float-to-int p0, p0

    return p0

    :pswitch_5
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readDoubleValue()D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :pswitch_7
    return v3

    :pswitch_8
    return v0

    :pswitch_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_6

    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v0

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "int value not support input null"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p2

    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_8

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_8
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_a

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_a
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p2

    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_c

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    if-nez p1, :cond_e

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_e
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    :cond_f
    :pswitch_a
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final C0(B)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInt32Value not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", offset "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final D0([BB)J
    .locals 5

    const/16 v0, 0x30

    if-lt p2, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x38

    shl-int/lit8 p2, p2, 0x8

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p2, p0

    int-to-long p0, p2

    return-wide p0

    :cond_0
    const/16 v0, -0x10

    if-lt p2, v0, :cond_1

    const/16 v0, 0x2f

    if-gt p2, v0, :cond_1

    int-to-long p0, p2

    return-wide p0

    :cond_1
    const/16 v0, 0x40

    if-lt p2, v0, :cond_2

    const/16 v0, 0x47

    if-gt p2, v0, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, p1

    return-wide p0

    :cond_2
    const/16 v0, -0x47

    if-eq p2, v0, :cond_10

    const/16 v0, 0x48

    if-eq p2, v0, :cond_f

    const/16 v0, 0x7c

    const/4 v1, -0x1

    const/16 v2, 0x2e

    if-eq p2, v0, :cond_d

    const/16 v0, -0x44

    if-eq p2, v0, :cond_c

    const/16 v0, -0x43

    if-eq p2, v0, :cond_b

    const/16 v0, 0x79

    if-eq p2, v0, :cond_9

    const/16 v0, 0x7a

    if-eq p2, v0, :cond_7

    const-wide/16 v3, 0x3e8

    packed-switch p2, :pswitch_data_0

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_1

    const/16 v0, 0x49

    if-lt p2, v0, :cond_4

    const/16 v3, 0x78

    if-gt p2, v3, :cond_4

    sub-int/2addr p2, v0

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_3

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInt64Value not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", offset "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-long p0, p0

    return-wide p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-float p0, p0

    float-to-long p0, p0

    return-wide p0

    :pswitch_2
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readDoubleValue()D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide p0

    long-to-double p0, p0

    double-to-long p0, p0

    return-wide p0

    :pswitch_4
    const-wide/16 p0, 0x1

    return-wide p0

    :pswitch_5
    return-wide v3

    :pswitch_6
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v1

    cmp-long p1, p1, v3

    if-nez p1, :cond_5

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-wide v3

    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "long value not support input null"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    int-to-long p1, p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const-wide/16 v0, 0x3c

    mul-long/2addr p1, v0

    :goto_0
    mul-long/2addr p1, v3

    return-wide p1

    :pswitch_8
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    int-to-long p1, p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_0

    :pswitch_9
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_1
    return-wide p1

    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p2

    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_8

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_8
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_a

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_a
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_b
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, p1, p2

    int-to-long p0, p0

    return-wide p0

    :cond_c
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, v0

    return-wide p0

    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p2

    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_e

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_f
    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    iget p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, p1

    return-wide p0

    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    if-nez p1, :cond_11

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_2

    :cond_11
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x51
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final E0(B)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInt64Value not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", offset "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public F0()I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    return v1

    :cond_0
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    return v1

    :cond_1
    const/16 v3, 0x40

    if-lt v1, v3, :cond_2

    const/16 v3, 0x47

    if-gt v1, v3, :cond_2

    invoke-static {v0, v2, v1}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v0

    :cond_2
    const/16 v3, 0x48

    if-ne v1, v3, :cond_4

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/high16 p0, 0x10000000

    if-gt v0, p0, :cond_3

    return v0

    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input length overflow"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0
.end method

.method public final G0(I)Ljava/time/LocalDate;
    .locals 3

    const/16 v0, 0x49

    if-lt p1, v0, :cond_0

    const/16 v0, 0x78

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getStringLength()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x7a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x79

    if-ne p1, v0, :cond_2

    :cond_1
    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/alibaba/fastjson2/g;->J:B

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson2/g;->z:I

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final H0(I)Ljava/time/LocalDateTime;
    .locals 3

    const/16 v0, -0x56

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x49

    if-lt p1, v0, :cond_7

    const/16 v0, 0x78

    if-gt p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getStringLength()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/g;->readLocalDateTimeX(I)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/g;->readZonedDateTimeX(I)Ljava/time/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDateTime20()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDateTime19()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDateTime18()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDateTime17()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDateTime16()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate11()Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate10()Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate9()Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalDate8()Ljava/time/LocalDate;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_6
    :goto_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte p1, p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final I0()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string value not support input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/alibaba/fastjson2/g;->y:B

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J0()Ljava/lang/String;
    .locals 8

    iget-byte v0, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v1, 0x7a

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v0, v1

    const/16 v4, -0x10

    if-lt v3, v4, :cond_0

    const/16 v4, 0x2f

    if-gt v3, v4, :cond_0

    iput v3, p0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_0

    :cond_0
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x3f

    if-gt v3, v4, :cond_1

    add-int/lit8 v3, v3, -0x38

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x1

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    iput v3, p0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_2
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    :goto_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_3
    const/16 v1, 0x7c

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->O0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_4
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->N0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_6
    const/16 v1, 0x7e

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->A0()Ljava/lang/String;

    sget-object v0, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    goto :goto_1

    :goto_2
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v5

    cmp-long p0, v1, v3

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0

    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-gez v0, :cond_9

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v7, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-direct {v5, v6, v7, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v6

    cmp-long v0, v0, v3

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v6

    cmp-long p0, v0, v3

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    move-object v2, v5

    :goto_3
    return-object v2

    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->K0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final K0()Ljava/lang/String;
    .locals 8

    iget-byte v0, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v1, -0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    const/16 v1, 0x47

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v1, v2, v0}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, -0x28

    if-lt v0, v1, :cond_3

    const/16 v2, -0x11

    if-gt v0, v2, :cond_3

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v1, -0x38

    if-lt v0, v1, :cond_4

    const/16 v1, -0x29

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x30

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v1, -0x40

    if-lt v0, v1, :cond_5

    const/16 v1, -0x39

    if-gt v0, v1, :cond_5

    add-int/lit8 v0, v0, 0x3c

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v1, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v1, -0x6e

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, -0x51

    if-eq v0, v1, :cond_c

    const/16 v1, 0x48

    if-eq v0, v1, :cond_b

    const/16 v1, -0x42

    if-eq v0, v1, :cond_9

    const/16 v1, -0x41

    if-eq v0, v1, :cond_b

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->s0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    if-nez v0, :cond_6

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const-string p0, "1.0"

    return-object p0

    :pswitch_8
    const-string p0, "0.0"

    return-object p0

    :pswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v4, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    mul-long/2addr v4, v1

    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v4, v5, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v4, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    mul-long/2addr v4, v1

    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v4, v5, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_2
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v0, v1, v3, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v2, :cond_a

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :cond_a
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    return-object v2

    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_3

    :cond_e
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteThrowableClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    filled-new-array {v0}, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final L0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, -0x10

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, p0, Lcom/alibaba/fastjson2/g;->z:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x38

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/g;->z:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public M0()J
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v1, v2

    iput-byte v3, v0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v4, 0x7f

    const/16 v5, 0x48

    const/16 v6, 0x2f

    const/16 v7, -0x10

    const/16 v8, 0x20

    const-wide/16 v9, 0x0

    const/16 v11, 0x8

    if-ne v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v1, v2

    iput-byte v3, v0, Lcom/alibaba/fastjson2/g;->J:B

    if-lt v3, v7, :cond_5

    if-gt v3, v5, :cond_5

    if-gt v3, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v3

    :goto_0
    if-gez v3, :cond_1

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-nez v3, :cond_3

    iget-byte v1, v0, Lcom/alibaba/fastjson2/g;->w0:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/g;->J:B

    iget v1, v0, Lcom/alibaba/fastjson2/g;->v0:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v1, v0, Lcom/alibaba/fastjson2/g;->u0:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    iget-wide v1, v0, Lcom/alibaba/fastjson2/g;->t0:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->q0()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/fastjson2/g;->t0:J

    :cond_2
    iget-wide v0, v0, Lcom/alibaba/fastjson2/g;->t0:J

    return-wide v0

    :cond_3
    mul-int/lit8 v3, v3, 0x2

    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    add-int/lit8 v2, v3, 0x1

    aget-wide v4, v1, v2

    long-to-int v2, v4

    int-to-byte v6, v2

    iput-byte v6, v0, Lcom/alibaba/fastjson2/g;->J:B

    shr-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    shr-long/2addr v4, v8

    long-to-int v2, v4

    iput v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    aget-wide v1, v1, v3

    cmp-long v4, v1, v9

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->q0()J

    move-result-wide v1

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    aput-wide v1, v0, v3

    :cond_4
    return-wide v1

    :cond_5
    const/16 v2, 0x3f

    if-lt v3, v7, :cond_d

    if-gt v3, v5, :cond_d

    if-gt v3, v6, :cond_6

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    move v4, v3

    goto :goto_1

    :cond_6
    if-gt v3, v2, :cond_7

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v3, -0x38

    shl-int/2addr v4, v11

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v4, v1

    goto :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v4

    :goto_1
    if-nez v4, :cond_9

    iget-byte v1, v0, Lcom/alibaba/fastjson2/g;->w0:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/g;->J:B

    iget v1, v0, Lcom/alibaba/fastjson2/g;->v0:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v1, v0, Lcom/alibaba/fastjson2/g;->u0:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    iget-wide v1, v0, Lcom/alibaba/fastjson2/g;->t0:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/fastjson2/g;->t0:J

    :cond_8
    iget-wide v0, v0, Lcom/alibaba/fastjson2/g;->t0:J

    goto :goto_2

    :cond_9
    if-gez v4, :cond_a

    iput v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v0

    goto :goto_2

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    mul-int/lit8 v2, v4, 0x2

    aget-wide v5, v1, v2

    cmp-long v3, v5, v9

    if-nez v3, :cond_b

    add-int/lit8 v2, v2, 0x1

    aget-wide v1, v1, v2

    long-to-int v3, v1

    int-to-byte v5, v3

    iput-byte v5, v0, Lcom/alibaba/fastjson2/g;->J:B

    shr-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    shr-long/2addr v1, v8

    long-to-int v1, v1

    iput v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    :cond_b
    move-wide v0, v5

    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    return-wide v0

    :cond_c
    invoke-static {v4}, Lcom/alibaba/fastjson2/g;->Q0(I)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_d
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v4, v0, Lcom/alibaba/fastjson2/g;->O:I

    const/16 v5, 0x7d

    const/16 v12, 0x7c

    const/16 v13, 0x7b

    const/16 v14, 0x30

    const/16 v15, 0x7a

    const/16 v9, 0x49

    const/16 v10, 0x38

    if-lt v3, v9, :cond_e

    const/16 v9, 0x78

    if-gt v3, v9, :cond_e

    add-int/lit8 v2, v3, -0x49

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    goto :goto_5

    :cond_e
    const/16 v9, 0x79

    if-eq v3, v9, :cond_10

    if-eq v3, v15, :cond_10

    if-eq v3, v13, :cond_10

    if-eq v3, v12, :cond_10

    if-ne v3, v5, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->I0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_10
    :goto_3
    aget-byte v9, v1, v4

    if-lt v9, v7, :cond_11

    if-gt v9, v6, :cond_11

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v9, v0, Lcom/alibaba/fastjson2/g;->z:I

    goto :goto_4

    :cond_11
    if-lt v9, v14, :cond_12

    if-gt v9, v2, :cond_12

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v9, v10

    shl-int/lit8 v2, v9, 0x8

    add-int/lit8 v9, v4, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    goto :goto_4

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    :goto_4
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    :goto_5
    iget v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-gez v2, :cond_13

    iget-object v4, v0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v2, v2

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v4

    goto/16 :goto_11

    :cond_13
    const-wide v18, 0x100000001b3L

    const-wide v20, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    if-ne v3, v15, :cond_16

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v4, v2

    :goto_6
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-ge v2, v4, :cond_15

    aget-byte v5, v1, v2

    if-ltz v5, :cond_14

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_7

    :cond_14
    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v9, v5, 0x4

    packed-switch v9, :pswitch_data_0

    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed input around byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v1, v9

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, v1, v10

    invoke-static {v5, v9, v10, v2}, Lcom/alibaba/fastjson2/i;->n0(IIII)I

    move-result v5

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_7

    :pswitch_1
    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v1, v9

    invoke-static {v5, v9, v2}, Lcom/alibaba/fastjson2/i;->m0(III)I

    move-result v5

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :goto_7
    int-to-long v9, v5

    xor-long v9, v20, v9

    mul-long v20, v9, v18

    goto :goto_6

    :cond_15
    move-wide/from16 v4, v20

    goto/16 :goto_11

    :cond_16
    const/4 v4, 0x0

    if-eq v3, v13, :cond_1e

    if-ne v3, v5, :cond_17

    goto/16 :goto_10

    :cond_17
    if-ne v3, v12, :cond_18

    :goto_8
    iget v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v4, v2, :cond_15

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int v5, v2, v4

    aget-byte v5, v1, v5

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v11

    or-int/2addr v2, v5

    int-to-char v2, v2

    int-to-long v9, v2

    xor-long v9, v20, v9

    mul-long v20, v9, v18

    add-int/lit8 v4, v4, 0x2

    goto :goto_8

    :cond_18
    if-gt v2, v11, :cond_1c

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    move v5, v4

    const-wide/16 v12, 0x0

    :goto_9
    iget v9, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v5, v9, :cond_1b

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v15, v1, v9

    if-ltz v15, :cond_1a

    if-nez v15, :cond_19

    aget-byte v22, v1, v2

    if-nez v22, :cond_19

    goto :goto_c

    :cond_19
    packed-switch v5, :pswitch_data_1

    goto :goto_b

    :pswitch_2
    int-to-long v6, v15

    shl-long/2addr v6, v10

    const-wide v23, 0xffffffffffffffL

    goto :goto_a

    :pswitch_3
    int-to-long v6, v15

    shl-long/2addr v6, v14

    const-wide v23, 0xffffffffffffL

    goto :goto_a

    :pswitch_4
    int-to-long v6, v15

    const/16 v15, 0x28

    shl-long/2addr v6, v15

    const-wide v23, 0xffffffffffL

    goto :goto_a

    :pswitch_5
    int-to-long v6, v15

    shl-long/2addr v6, v8

    const-wide v23, 0xffffffffL

    goto :goto_a

    :pswitch_6
    shl-int/lit8 v6, v15, 0x18

    int-to-long v6, v6

    const-wide/32 v23, 0xffffff

    goto :goto_a

    :pswitch_7
    shl-int/lit8 v6, v15, 0x10

    int-to-long v6, v6

    const-wide/32 v23, 0xffff

    goto :goto_a

    :pswitch_8
    shl-int/lit8 v6, v15, 0x8

    int-to-long v6, v6

    const-wide/16 v23, 0xff

    :goto_a
    and-long v12, v12, v23

    add-long/2addr v12, v6

    goto :goto_b

    :pswitch_9
    int-to-long v12, v15

    :goto_b
    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x2f

    const/16 v7, -0x10

    goto :goto_9

    :cond_1a
    :goto_c
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_d

    :cond_1b
    move-wide/from16 v16, v12

    const-wide/16 v5, 0x0

    goto :goto_e

    :cond_1c
    :goto_d
    const-wide/16 v5, 0x0

    const-wide/16 v16, 0x0

    :goto_e
    cmp-long v2, v16, v5

    if-eqz v2, :cond_1d

    move-wide/from16 v4, v16

    goto :goto_11

    :cond_1d
    :goto_f
    iget v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v4, v2, :cond_15

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v1, v2

    int-to-long v5, v2

    xor-long v5, v20, v5

    mul-long v20, v5, v18

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1e
    :goto_10
    iget v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v4, v2, :cond_15

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int v5, v2, v4

    aget-byte v5, v1, v5

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v11

    or-int/2addr v2, v5

    int-to-char v2, v2

    int-to-long v5, v2

    xor-long v5, v20, v5

    mul-long v20, v5, v18

    add-int/lit8 v4, v4, 0x2

    goto :goto_10

    :goto_11
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v6, -0x10

    if-lt v1, v6, :cond_1f

    const/16 v6, 0x2f

    if-gt v1, v6, :cond_1f

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_12

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    :goto_12
    if-nez v1, :cond_20

    iget v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->u0:I

    iget v1, v0, Lcom/alibaba/fastjson2/g;->z:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->v0:I

    iput-byte v3, v0, Lcom/alibaba/fastjson2/g;->w0:B

    iput-wide v4, v0, Lcom/alibaba/fastjson2/g;->t0:J

    goto :goto_14

    :cond_20
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, 0x2

    iget-object v6, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    if-nez v6, :cond_21

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    goto :goto_13

    :cond_21
    array-length v7, v6

    if-ge v7, v2, :cond_22

    add-int/lit8 v2, v2, 0x10

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    :cond_22
    :goto_13
    iget v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    int-to-long v6, v2

    shl-long/2addr v6, v8

    iget v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    int-to-long v8, v2

    shl-long/2addr v8, v11

    add-long/2addr v6, v8

    int-to-long v2, v3

    add-long/2addr v6, v2

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    add-int/lit8 v1, v1, 0x1

    aput-wide v6, v0, v1

    :goto_14
    return-wide v4

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final N0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final O0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, -0x10

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, p0, Lcom/alibaba/fastjson2/g;->z:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x38

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/g;->z:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    iget p0, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final P0(I)Ljava/time/ZonedDateTime;
    .locals 10

    const/16 v0, -0x58

    if-eq p1, v0, :cond_4

    const/16 v0, -0x57

    if-eq p1, v0, :cond_3

    const/16 v0, -0x42

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x49

    if-lt p1, v0, :cond_0

    const/16 v1, 0x78

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/g;->readZonedDateTimeX(I)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type not support : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte p1, p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    int-to-long v0, p1

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const-wide/16 p0, 0x3c

    mul-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p0

    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    int-to-long v0, p1

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p0

    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_1
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, p1, v1

    invoke-static {v0, v2, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    sget-object p1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int v3, v0, v1

    add-int/lit8 v0, v2, 0x1

    aget-byte v4, p1, v2

    add-int/lit8 v1, v0, 0x1

    aget-byte v5, p1, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v6, p1, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v7, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v8, p1, v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v9

    invoke-static/range {v3 .. v9}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p0

    sget-object p1, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v1, v2

    const/16 v3, -0x6e

    const/4 v10, 0x0

    if-ne v1, v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readTypeHashCode()J

    move-result-wide v11

    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v13, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    cmp-long v2, p2, v11

    if-nez v2, :cond_0

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_0

    invoke-virtual {v13, v11, v12, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(JLcom/alibaba/fastjson2/reader/ObjectReader;)V

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v14, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v14, :cond_2

    move-object v1, v14

    move-wide v2, v11

    move-object/from16 v4, p1

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1, v7, v8, v9}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v1, v8

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    return-object v10

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->m0()V

    :cond_4
    invoke-virtual {v13, v11, v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eq v5, v6, :cond_5

    invoke-virtual {p0, v3, v4, v6}, Lcom/alibaba/fastjson2/g;->r0(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3, v7, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->m0()V

    :cond_6
    move-object v10, v1

    goto :goto_0

    :cond_7
    move-object v10, v3

    :goto_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/alibaba/fastjson2/g;->y:B

    :cond_8
    return-object v10
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->Q:[B

    const/high16 v1, 0x100000

    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v2, v1, :cond_0

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->D:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v3, p0, Lcom/alibaba/fastjson2/g;->k0:Lcom/alibaba/fastjson2/JSONFactory$b;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, v1, :cond_1

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->k0:Lcom/alibaba/fastjson2/JSONFactory$b;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameHashCodeLCase()J
    .locals 15

    iget v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson2/g;->z:I

    const/16 v8, 0x2d

    const/16 v9, 0x5a

    const/16 v10, 0x5f

    const/16 v11, 0x41

    const/16 v12, 0x20

    if-ge v4, v7, :cond_5

    iget-object v7, p0, Lcom/alibaba/fastjson2/g;->v:[B

    aget-byte v13, v7, v0

    if-ltz v13, :cond_4

    const/16 v14, 0x8

    if-ge v4, v14, :cond_4

    if-nez v4, :cond_0

    iget v14, p0, Lcom/alibaba/fastjson2/g;->O:I

    aget-byte v14, v7, v14

    if-nez v14, :cond_0

    goto :goto_4

    :cond_0
    if-eq v13, v10, :cond_1

    if-eq v13, v8, :cond_1

    if-ne v13, v12, :cond_2

    :cond_1
    add-int/lit8 v8, v0, 0x1

    aget-byte v7, v7, v8

    if-eq v7, v13, :cond_2

    goto :goto_3

    :cond_2
    if-lt v13, v11, :cond_3

    if-gt v13, v9, :cond_3

    add-int/lit8 v13, v13, 0x20

    int-to-byte v13, v13

    :cond_3
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    int-to-long v7, v13

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffffffL

    goto :goto_1

    :pswitch_1
    int-to-long v7, v13

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffffL

    goto :goto_1

    :pswitch_2
    int-to-long v7, v13

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffL

    goto :goto_1

    :pswitch_3
    int-to-long v7, v13

    shl-long/2addr v7, v12

    const-wide v9, 0xffffffffL

    goto :goto_1

    :pswitch_4
    shl-int/lit8 v7, v13, 0x18

    int-to-long v7, v7

    const-wide/32 v9, 0xffffff

    goto :goto_1

    :pswitch_5
    shl-int/lit8 v7, v13, 0x10

    int-to-long v7, v7

    const-wide/32 v9, 0xffff

    goto :goto_1

    :pswitch_6
    shl-int/lit8 v7, v13, 0x8

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    :goto_1
    and-long/2addr v5, v9

    add-long/2addr v7, v5

    move-wide v5, v7

    goto :goto_2

    :pswitch_7
    int-to-long v5, v13

    :goto_2
    add-int/lit8 v4, v4, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    iget v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    move-wide v5, v1

    :cond_5
    cmp-long v1, v5, v1

    if-eqz v1, :cond_6

    return-wide v5

    :cond_6
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_5
    iget v4, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Lcom/alibaba/fastjson2/g;->v:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    if-lt v0, v11, :cond_7

    if-gt v0, v9, :cond_7

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    :cond_7
    if-eq v0, v10, :cond_9

    if-eq v0, v8, :cond_9

    if-ne v0, v12, :cond_8

    goto :goto_6

    :cond_8
    int-to-long v6, v0

    xor-long v0, v1, v6

    const-wide v6, 0x100000001b3L

    mul-long/2addr v0, v6

    move-wide v1, v0

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_5

    :cond_a
    return-wide v1

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
    .locals 6

    iget-byte v0, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v1, -0x51

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-gez v1, :cond_1

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x79

    if-eq v0, v3, :cond_7

    const/16 v3, 0x49

    if-lt v0, v3, :cond_2

    const/16 v3, 0x78

    if-gt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x7a

    if-ne v0, v2, :cond_3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_3
    const/16 v2, 0x7b

    if-ne v0, v2, :cond_4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_4
    const/16 v2, 0x7c

    if-ne v0, v2, :cond_5

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_5
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_6

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sget v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_c

    iget v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    if-nez v1, :cond_8

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v3, p0, Lcom/alibaba/fastjson2/g;->k0:Lcom/alibaba/fastjson2/JSONFactory$b;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    :cond_8
    if-eqz v1, :cond_9

    array-length v2, v1

    iget v3, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v2, v3, :cond_a

    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson2/g;->z:I

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    :cond_a
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/alibaba/fastjson2/g;->v:[B

    add-int v5, v0, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_c
    :goto_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget p0, p0, Lcom/alibaba/fastjson2/g;->O:I

    invoke-direct {v2, v3, p0, v1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public final getStringLength()I
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v1, 0x49

    if-lt v0, v1, :cond_0

    const/16 v2, 0x78

    if-ge v0, v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-byte p0, p0, Lcom/alibaba/fastjson2/g;->y:B

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, p0

    return p0
.end method

.method public isArray()Z
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v1, p0

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte p0, p0, v0

    const/16 v0, -0x6c

    if-lt p0, v0, :cond_1

    const/16 v0, -0x5c

    if-gt p0, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isBinary()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, p0

    const/16 v0, -0x6f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnd()Z
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget p0, p0, Lcom/alibaba/fastjson2/g;->x:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInt()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, p0

    const/16 v0, -0x46

    if-lt p0, v0, :cond_0

    const/16 v0, 0x48

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, -0x54

    if-eq p0, v0, :cond_2

    const/16 v0, -0x53

    if-eq p0, v0, :cond_2

    const/16 v0, -0x55

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNull()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, p0

    const/16 v0, -0x51

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, p0

    const/16 v0, -0x4e

    if-lt p0, v0, :cond_0

    const/16 v0, 0x48

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isObject()Z
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v1, p0, Lcom/alibaba/fastjson2/g;->x:I

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    aget-byte p0, p0, v0

    const/16 v0, -0x5a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReference()Z
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte p0, p0, v0

    const/16 v0, -0x6d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isString()Z
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v0, v1, v0

    iput-byte v0, p0, Lcom/alibaba/fastjson2/g;->y:B

    const/16 p0, 0x49

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m0()V
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auotype not support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark()Lcom/alibaba/fastjson2/JSONReader$SavePoint;
    .locals 2

    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$SavePoint;

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-byte p0, p0, Lcom/alibaba/fastjson2/g;->y:B

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONReader$SavePoint;-><init>(II)V

    return-object v0
.end method

.method public n0(B)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->isString()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :cond_1
    const-string p1, ", offset "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()V
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void
.end method

.method public nextIfArrayEnd()Z
    .locals 1

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextIfArrayStart()Z
    .locals 1

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextIfComma()Z
    .locals 1

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextIfInfinity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public nextIfMatch(B)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 3
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public nextIfMatch(C)Z
    .locals 0

    .line 1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextIfMatchIdent(CCC)Z
    .locals 0

    .line 1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextIfMatchIdent(CCCC)Z
    .locals 0

    .line 2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextIfMatchIdent(CCCCC)Z
    .locals 0

    .line 3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextIfMatchIdent(CCCCCC)Z
    .locals 0

    .line 4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "UnsupportedOperation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextIfMatchTypedAny()Z
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x6e

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public nextIfNull()Z
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x51

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public nextIfNullOrEmptyString()Z
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x51

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v3

    :cond_0
    const/16 v2, 0x49

    if-eq v0, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v3
.end method

.method public nextIfObjectEnd()Z
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x5b

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v0
.end method

.method public nextIfObjectStart()Z
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x5a

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v0
.end method

.method public nextIfSet()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public p0(II)Ljava/lang/String;
    .locals 5

    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->k0:Lcom/alibaba/fastjson2/JSONFactory$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    :cond_1
    if-eqz v0, :cond_2

    array-length v1, v0

    if-ge v1, p2, :cond_3

    :cond_2
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    iget-object v3, p0, Lcom/alibaba/fastjson2/g;->v:[B

    add-int v4, p1, v2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public final q0()J
    .locals 11

    iget v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v4, v7, :cond_2

    iget-object v7, p0, Lcom/alibaba/fastjson2/g;->v:[B

    aget-byte v8, v7, v0

    if-ltz v8, :cond_1

    const/16 v9, 0x8

    if-ge v4, v9, :cond_1

    if-nez v4, :cond_0

    iget v9, p0, Lcom/alibaba/fastjson2/g;->O:I

    aget-byte v7, v7, v9

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    int-to-long v7, v8

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffffffL

    goto :goto_1

    :pswitch_1
    int-to-long v7, v8

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffffL

    goto :goto_1

    :pswitch_2
    int-to-long v7, v8

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffffL

    goto :goto_1

    :pswitch_3
    int-to-long v7, v8

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    const-wide v9, 0xffffffffL

    goto :goto_1

    :pswitch_4
    shl-int/lit8 v7, v8, 0x18

    int-to-long v7, v7

    const-wide/32 v9, 0xffffff

    goto :goto_1

    :pswitch_5
    shl-int/lit8 v7, v8, 0x10

    int-to-long v7, v7

    const-wide/32 v9, 0xffff

    goto :goto_1

    :pswitch_6
    shl-int/lit8 v7, v8, 0x8

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    :goto_1
    and-long/2addr v5, v9

    add-long/2addr v5, v7

    goto :goto_2

    :pswitch_7
    int-to-long v5, v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    move-wide v5, v1

    :cond_2
    cmp-long v1, v5, v1

    if-eqz v1, :cond_3

    return-wide v5

    :cond_3
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_4
    iget v4, p0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/fastjson2/g;->v:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    int-to-long v6, v0

    xor-long v0, v1, v6

    const-wide v6, 0x100000001b3L

    mul-long v1, v0, v6

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_4

    :cond_4
    return-wide v1

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

.method public final r0(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Class;Ljava/lang/ClassLoader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    if-nez p3, :cond_0

    :try_start_0
    const-class p3, Lcom/alibaba/fastjson2/JSON;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public read(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 6
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public read(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 3
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public read(Ljava/util/Map;J)V
    .locals 5

    .line 7
    iget-object p2, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p2, p2, p3

    const/16 v0, -0x5a

    if-ne p2, v0, :cond_a

    add-int/lit8 p3, p3, 0x1

    .line 8
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p2, p2, p3

    const/16 v1, -0x5b

    if-ne p2, v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 10
    iput p3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_0
    const/16 p3, 0x49

    if-lt p2, p3, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readFieldName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object p2

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->isReference()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readReference()Ljava/lang/String;

    move-result-object p3

    const-string v1, ".."

    .line 15
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {p1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    const/4 p3, 0x0

    .line 18
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v1, v2

    if-lt v1, p3, :cond_4

    const/16 p3, 0x7e

    if-gt v1, p3, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    const/16 p3, -0x10

    if-lt v1, p3, :cond_5

    const/16 p3, 0x2f

    if-gt v1, p3, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 21
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    :cond_5
    const/16 p3, -0x4f

    if-ne v1, p3, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 23
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 24
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    const/16 p3, -0x50

    if-ne v1, p3, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 25
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 26
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_7
    if-ne v1, v0, :cond_8

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readObject()Ljava/util/Map;

    move-result-object p3

    goto :goto_2

    .line 28
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object p3

    :goto_2
    if-nez p3, :cond_9

    .line 29
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    goto/16 :goto_0

    .line 30
    :cond_9
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 31
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "object not support input "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p3, p0, Lcom/alibaba/fastjson2/g;->y:B

    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/g;->n0(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAny()Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v2, v1, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v3, v2

    const-string v4, "/"

    if-ge v0, v3, :cond_41

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v2, v0

    iput-byte v0, v1, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v5, 0x48

    if-eq v0, v5, :cond_40

    const-string v5, ", offset "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v11, ".."

    const/16 v12, 0x2f

    const/16 v13, -0x10

    const-wide/16 v14, 0x3e8

    const/16 v10, 0x49

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    if-lt v0, v13, :cond_0

    if-gt v0, v12, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v4, 0x30

    if-lt v0, v4, :cond_1

    const/16 v4, 0x3f

    if-gt v0, v4, :cond_1

    add-int/lit8 v0, v0, -0x38

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v2, v3

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v4, 0x40

    if-lt v0, v4, :cond_2

    const/16 v4, 0x47

    if-gt v0, v4, :cond_2

    invoke-static {v2, v3, v0}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v0

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v4, -0x28

    if-lt v0, v4, :cond_3

    const/16 v5, -0x11

    if-gt v0, v5, :cond_3

    sub-int/2addr v0, v4

    int-to-long v0, v0

    const-wide/16 v2, -0x8

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v4, -0x38

    if-lt v0, v4, :cond_4

    const/16 v4, -0x29

    if-gt v0, v4, :cond_4

    add-int/lit8 v0, v0, 0x30

    shl-int/lit8 v0, v0, 0x8

    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v2, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v4, -0x40

    if-lt v0, v4, :cond_5

    const/16 v4, -0x39

    if-gt v0, v4, :cond_5

    add-int/lit8 v0, v0, 0x3c

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v2, v4

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v2, -0x6c

    if-lt v0, v2, :cond_e

    const/16 v3, -0x5c

    if-gt v0, v3, :cond_e

    if-ne v0, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v2

    :goto_0
    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v8

    if-eqz v1, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_7
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    return-object v0

    :cond_9
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_a
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :goto_1
    if-ge v6, v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->isReference()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readReference()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v3

    invoke-virtual {v1, v2, v6, v3}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_d
    return-object v2

    :cond_e
    if-lt v0, v10, :cond_13

    const/16 v2, 0x79

    if-gt v0, v2, :cond_13

    if-ne v0, v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    goto :goto_3

    :cond_f
    sub-int/2addr v0, v10

    :goto_3
    iput v0, v1, Lcom/alibaba/fastjson2/g;->z:I

    if-gez v0, :cond_10

    iget-object v1, v1, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/g;->z:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_11
    iget v2, v1, Lcom/alibaba/fastjson2/g;->z:I

    if-nez v2, :cond_12

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v8

    if-eqz v1, :cond_12

    goto :goto_4

    :cond_12
    move-object v7, v0

    :goto_4
    return-object v7

    :cond_13
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iput v0, v1, Lcom/alibaba/fastjson2/g;->z:I

    if-gez v0, :cond_14

    iget-object v1, v1, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support symbol : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/alibaba/fastjson2/g;->z:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Lcom/alibaba/fastjson2/g;->y:B

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/g;->n0(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    if-nez v0, :cond_16

    const-string v0, "GB18030"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    if-nez v0, :cond_17

    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v8

    if-eqz v3, :cond_17

    goto :goto_5

    :cond_17
    move-object v7, v2

    :goto_5
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v7

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    if-nez v0, :cond_18

    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v8

    if-eqz v3, :cond_18

    goto :goto_6

    :cond_18
    move-object v7, v2

    :goto_6
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v7

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    if-nez v0, :cond_19

    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v8

    if-eqz v3, :cond_19

    goto :goto_7

    :cond_19
    move-object v7, v2

    :goto_7
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v7

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    if-nez v0, :cond_1a

    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v8

    if-eqz v3, :cond_1a

    goto :goto_8

    :cond_1a
    move-object v7, v2

    :goto_8
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v7

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    if-nez v0, :cond_1b

    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v8

    if-eqz v3, :cond_1b

    goto :goto_9

    :cond_1b
    move-object v7, v2

    :goto_9
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v7

    :pswitch_5
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v1, Ljava/lang/Long;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    :pswitch_6
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1c

    goto :goto_a

    :cond_1c
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_7
    add-int/lit8 v0, v3, 0x1

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v2, v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_8
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    int-to-short v0, v3

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    new-array v2, v0, [B

    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v3, v4, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v0, :cond_1d

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_b

    :cond_1d
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v2

    :goto_b
    return-object v0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_f
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1e

    goto :goto_c

    :cond_1e
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_c
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_11
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_15
    return-object v7

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_17
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v2, v0

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    mul-long/2addr v2, v14

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :pswitch_18
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v2, v0

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v0, Ljava/util/Date;

    mul-long/2addr v2, v14

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :pswitch_19
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v0, Ljava/util/Date;

    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_1f

    goto :goto_d

    :cond_1f
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_d
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :pswitch_1a
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int v7, v3, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v8, v2, v4

    add-int/lit8 v3, v0, 0x1

    aget-byte v9, v2, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v10, v2, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v11, v2, v0

    add-int/lit8 v0, v3, 0x1

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v12, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v13

    sget-object v0, Lcom/alibaba/fastjson2/g;->z0:[B

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    array-length v3, v0

    add-int/2addr v2, v3

    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v3, v3

    if-ge v2, v3, :cond_22

    move v2, v6

    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_21

    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v4, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_20

    goto :goto_f

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    const/4 v6, 0x1

    :cond_22
    :goto_f
    if-eqz v6, :cond_23

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    array-length v0, v0

    add-int/2addr v2, v0

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_10

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v0

    :goto_10
    invoke-static/range {v7 .. v13}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :pswitch_1b
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, v2, v4

    add-int/lit8 v5, v0, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v2, v0

    invoke-static {v3, v4, v0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    :pswitch_1c
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int v5, v3, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v6, v2, v4

    add-int/lit8 v3, v0, 0x1

    aget-byte v7, v2, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v8, v2, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v9, v2, v0

    add-int/lit8 v0, v3, 0x1

    iput v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v10, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v11

    invoke-static/range {v5 .. v11}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :pswitch_1d
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    invoke-static {v3, v0, v2, v1}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_1e
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v14

    cmp-long v0, v2, v8

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_11

    :cond_24
    move v0, v6

    :goto_11
    move-object v2, v7

    :goto_12
    iget-object v3, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v14, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v3, v14

    const/16 v15, -0x5b

    if-ne v3, v15, :cond_27

    const/4 v15, 0x1

    add-int/2addr v14, v15

    iput v14, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-nez v2, :cond_26

    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_25

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_13

    :cond_25
    new-instance v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    :cond_26
    :goto_13
    return-object v2

    :cond_27
    if-eqz v0, :cond_2b

    if-nez v6, :cond_2b

    if-lt v3, v10, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readFieldNameHashCode()J

    move-result-wide v14

    const-wide v16, 0x6570797440L

    cmp-long v3, v14, v16

    if-nez v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readValueHashCode()J

    move-result-wide v2

    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v2, v0, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object v0, v2

    goto :goto_14

    :cond_28
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auotype not support : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    :goto_14
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/alibaba/fastjson2/JSONReader;->typeRedirect:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2a
    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_2b
    const/4 v14, 0x1

    if-lt v3, v10, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readFieldName()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object v3

    :goto_15
    if-nez v2, :cond_2f

    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v14, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    move-object/from16 v17, v11

    iget-wide v10, v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v14

    cmp-long v10, v10, v8

    if-eqz v10, :cond_2d

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_16

    :cond_2d
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    if-eqz v2, :cond_2e

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_16

    :cond_2e
    new-instance v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    goto :goto_16

    :cond_2f
    move-object/from16 v17, v11

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->isReference()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readReference()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v17

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    invoke-interface {v2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    :cond_30
    invoke-static {v10}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v10

    invoke-virtual {v1, v2, v3, v10}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_31
    move-object/from16 v11, v17

    iget-object v10, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v12, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v10, v10, v12

    const/16 v14, 0x49

    if-lt v10, v14, :cond_32

    const/16 v15, 0x7e

    if-gt v10, v15, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x2f

    goto :goto_17

    :cond_32
    const/16 v15, 0x2f

    if-lt v10, v13, :cond_33

    if-gt v10, v15, :cond_33

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_17

    :cond_33
    const/16 v13, -0x4f

    if-ne v10, v13, :cond_34

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_17

    :cond_34
    const/16 v13, -0x50

    if-ne v10, v13, :cond_35

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_17

    :cond_35
    const/16 v12, -0x5a

    if-ne v10, v12, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readObject()Ljava/util/Map;

    move-result-object v10

    goto :goto_17

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object v10

    :goto_17
    if-nez v10, :cond_37

    iget-object v12, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v12, v12, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v14, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v14, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v12, v14

    cmp-long v12, v12, v8

    if-eqz v12, :cond_37

    goto :goto_18

    :cond_37
    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x49

    const/16 v12, 0x2f

    const/16 v13, -0x10

    goto/16 :goto_12

    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readTypeHashCode()J

    move-result-wide v2

    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-eqz v10, :cond_39

    const/16 v21, 0x0

    iget-wide v11, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    move-object/from16 v18, v10

    move-wide/from16 v19, v2

    move-wide/from16 v22, v11

    invoke-interface/range {v18 .. v23}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v11, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->t:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    iget-wide v12, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    invoke-interface {v11, v0, v7, v12, v13}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    :cond_38
    if-eqz v0, :cond_39

    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_39
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v12

    cmp-long v8, v10, v8

    if-eqz v8, :cond_3a

    const/4 v6, 0x1

    :cond_3a
    if-nez v6, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->isObject()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readObject()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readArray()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3c
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auoType not support , offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-nez v0, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v2, v0, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_3e

    move-object v0, v2

    goto :goto_19

    :cond_3e
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auoType not support : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3f
    :goto_19
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iget-object v2, v1, Lcom/alibaba/fastjson2/g;->v:[B

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int v4, v3, v0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v2

    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_40
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    :cond_41
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAny overflow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/alibaba/fastjson2/g;->v:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x70
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5a
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readArray()Ljava/util/List;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->startArray()I

    move-result v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_17

    .line 3
    iget-object v4, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v6, v4, v5

    const/16 v7, 0x7e

    const/16 v8, 0x49

    if-lt v6, v8, :cond_0

    if-gt v6, v7, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_0
    const/16 v9, -0x10

    if-lt v6, v9, :cond_1

    const/16 v9, 0x2f

    if-gt v6, v9, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 5
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_8

    :cond_1
    const/16 v9, -0x4f

    if-ne v6, v9, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 7
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 8
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_8

    :cond_2
    const/16 v9, -0x50

    if-ne v6, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 9
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 10
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_8

    :cond_3
    const/16 v9, -0x5a

    if-ne v6, v9, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readObject()Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_8

    :cond_4
    const/16 v10, -0x42

    if-ne v6, v10, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 12
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 13
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, v5

    add-long/2addr v7, v9

    invoke-virtual {v6, v4, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 14
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 15
    sget-boolean v6, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_8

    :cond_6
    const-string v10, ".."

    const/16 v11, -0x6c

    if-lt v6, v11, :cond_10

    const/16 v11, -0x5c

    if-gt v6, v11, :cond_10

    add-int/lit8 v5, v5, 0x1

    .line 16
    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-ne v6, v11, :cond_7

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v4

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v6, 0x6c

    :goto_2
    const-wide/16 v5, 0x0

    if-nez v4, :cond_a

    .line 18
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v7, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v5, v7, v5

    if-eqz v5, :cond_8

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_8

    .line 20
    :cond_8
    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    if-eqz v4, :cond_9

    .line 21
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_8

    .line 22
    :cond_9
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto/16 :goto_8

    .line 23
    :cond_a
    iget-object v11, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v13, v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v11, v13

    cmp-long v5, v11, v5

    if-eqz v5, :cond_b

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_3

    .line 25
    :cond_b
    new-instance v5, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :goto_3
    move v6, v2

    :goto_4
    if-ge v6, v4, :cond_13

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->isReference()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readReference()Ljava/lang/String;

    move-result-object v11

    .line 28
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 29
    invoke-interface {v5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    .line 30
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v11}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v11

    invoke-virtual {p0, v5, v6, v11}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_6

    .line 32
    :cond_d
    iget-object v11, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v12, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v11, v11, v12

    if-lt v11, v8, :cond_e

    if-gt v11, v7, :cond_e

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_e
    if-ne v11, v9, :cond_f

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readObject()Ljava/util/Map;

    move-result-object v11

    goto :goto_5

    .line 35
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object v11

    .line 36
    :goto_5
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_10
    const/16 v7, 0x30

    if-lt v6, v7, :cond_11

    const/16 v7, 0x3f

    if-gt v6, v7, :cond_11

    add-int/lit8 v6, v6, -0x38

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    .line 37
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 38
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_8

    :cond_11
    const/16 v7, 0x40

    if-lt v6, v7, :cond_12

    const/16 v7, 0x47

    if-gt v6, v7, :cond_12

    add-int/lit8 v5, v5, 0x1

    .line 39
    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v4

    .line 40
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 41
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_7

    :cond_12
    const/16 v7, 0x48

    if-ne v6, v7, :cond_14

    add-int/lit8 v5, v5, 0x1

    .line 42
    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v4

    .line 43
    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 44
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    :cond_13
    :goto_7
    move-object v4, v5

    goto :goto_8

    :cond_14
    const/16 v4, -0x6d

    if-ne v6, v4, :cond_16

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readReference()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object v4, v1

    goto :goto_8

    .line 47
    :cond_15
    invoke-static {v4}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_9

    .line 48
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object v4

    .line 49
    :goto_8
    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_17
    return-object v1
.end method

.method public readArray(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object p0

    .line 53
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 54
    check-cast p0, Ljava/util/List;

    return-object p0

    .line 55
    :cond_1
    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_2

    .line 56
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 57
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->startArray()I

    move-result v0

    .line 59
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 60
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/g;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public readBigDecimal()Ljava/math/BigDecimal;
    .locals 8

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    const/16 v2, -0x47

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v0, v2

    const/16 v4, -0x46

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/16 v4, 0x48

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_1

    :cond_1
    const/16 v4, -0x42

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v0, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    if-nez v1, :cond_4

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    :goto_1
    move-object p0, v0

    goto :goto_2

    :cond_5
    const/16 v0, -0x48

    if-ne v1, v0, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/g;->w0(B)Ljava/math/BigDecimal;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x46

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v1, -0x45

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/g;->u0(B)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public readBinary()[B
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x6f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0
.end method

.method public readBool()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v1, -0x4f

    if-ne v0, v1, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const/16 v1, -0x50

    if-ne v0, v1, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/g;->v0(B)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public readBoolValue()Z
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v1, v2

    const/16 v2, -0x4f

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v2, -0x50

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/g;->v0(B)Z

    move-result p0

    return p0
.end method

.method public readCharValue()C
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, -0x70

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    :goto_0
    int-to-char p0, p0

    return p0

    :cond_0
    const/16 v3, 0x49

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v4

    :cond_1
    if-le v2, v3, :cond_2

    const/16 v3, 0x78

    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v4
.end method

.method public readDoubleValue()D
    .locals 9

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, -0x4b

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x8

    aget-byte v2, v0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x7

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x6

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    aget-byte v0, v0, v4

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->x0()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFieldName()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v1, v2

    iput-byte v3, v0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v4, -0x51

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v5

    :cond_0
    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    const/16 v7, 0x8

    if-eqz v3, :cond_5

    aget-byte v8, v1, v2

    iput-byte v8, v0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v9, -0x10

    if-lt v8, v9, :cond_4

    const/16 v9, 0x48

    if-gt v8, v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    if-gez v1, :cond_2

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v1, :cond_3

    iget-byte v1, v0, Lcom/alibaba/fastjson2/g;->w0:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/g;->J:B

    iget v1, v0, Lcom/alibaba/fastjson2/g;->v0:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v1, v0, Lcom/alibaba/fastjson2/g;->u0:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    iget-object v2, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    aget-wide v1, v2, v1

    long-to-int v3, v1

    int-to-byte v5, v3

    iput-byte v5, v0, Lcom/alibaba/fastjson2/g;->J:B

    shr-int/2addr v3, v7

    iput v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    shr-long/2addr v1, v4

    long-to-int v1, v1

    iput v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :cond_5
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    iget-byte v8, v0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v9, 0x49

    const/16 v10, 0x38

    const/16 v11, 0x30

    const/16 v12, 0x10

    if-lt v8, v9, :cond_c

    const/16 v9, 0x79

    if-gt v8, v9, :cond_c

    const/16 v9, 0x79

    if-ne v8, v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    goto/16 :goto_9

    :cond_6
    add-int/lit8 v8, v8, -0x49

    iput v8, v0, Lcom/alibaba/fastjson2/g;->z:I

    sget-boolean v9, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    const/16 v15, 0x28

    const-wide/16 v16, 0xff

    if-eqz v9, :cond_7

    const-wide v9, 0xffffffffL

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v9, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v13, v2

    add-long/2addr v13, v9

    invoke-virtual {v8, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v5, v2

    add-long/2addr v9, v5

    const-wide/16 v5, 0x8

    add-long/2addr v9, v5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v5, v2, 0x6

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v11

    add-int/lit8 v8, v2, 0x5

    aget-byte v8, v1, v8

    int-to-long v13, v8

    and-long v13, v13, v16

    shl-long/2addr v13, v15

    add-long/2addr v5, v13

    add-int/lit8 v8, v2, 0x4

    aget-byte v8, v1, v8

    int-to-long v13, v8

    and-long v13, v13, v16

    shl-long/2addr v13, v4

    add-long/2addr v5, v13

    sget-object v8, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v13, Lcom/alibaba/fastjson2/g;->y0:J

    move-wide v15, v5

    int-to-long v4, v2

    add-long/2addr v4, v13

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    int-to-long v4, v2

    and-long/2addr v4, v9

    add-long/2addr v4, v15

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v9, v2

    add-long/2addr v13, v9

    const-wide/16 v9, 0x7

    add-long/2addr v13, v9

    invoke-virtual {v8, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    goto :goto_1

    :pswitch_2
    add-int/lit8 v4, v2, 0x5

    aget-byte v4, v1, v4

    int-to-long v4, v4

    shl-long/2addr v4, v15

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    int-to-long v13, v6

    and-long v13, v13, v16

    const/16 v6, 0x20

    shl-long/2addr v13, v6

    add-long/2addr v4, v13

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v13, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v7, v2

    add-long/2addr v7, v13

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    int-to-long v7, v2

    and-long/2addr v7, v9

    add-long/2addr v4, v7

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v7, v2

    add-long/2addr v13, v7

    const-wide/16 v7, 0x6

    add-long/2addr v13, v7

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-wide v8, v6

    :goto_1
    move-wide v6, v4

    goto/16 :goto_b

    :pswitch_3
    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v13, v2

    add-long/2addr v13, v7

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    int-to-long v13, v2

    and-long/2addr v9, v13

    add-long v13, v4, v9

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v4, v2

    add-long/2addr v7, v4

    const-wide/16 v4, 0x5

    add-long/2addr v7, v4

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_4

    :pswitch_4
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v7, v2

    add-long/2addr v7, v5

    invoke-virtual {v4, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    int-to-long v13, v2

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_4

    :pswitch_5
    aget-byte v4, v1, v2

    shl-int/2addr v4, v12

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    add-long v13, v4, v6

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v7, 0x3

    add-long/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_4

    :pswitch_6
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v7, v2

    add-long/2addr v7, v5

    invoke-virtual {v4, v1, v7, v8}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v2

    int-to-long v13, v2

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2

    add-long/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_4

    :pswitch_7
    aget-byte v4, v1, v2

    int-to-long v13, v4

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_4

    :pswitch_8
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    goto/16 :goto_8

    :pswitch_9
    add-int/lit8 v4, v2, 0x6

    aget-byte v4, v1, v4

    int-to-long v4, v4

    shl-long/2addr v4, v11

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    shl-long/2addr v6, v15

    add-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v13, v2

    add-long/2addr v7, v13

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_a
    add-int/lit8 v4, v2, 0x5

    aget-byte v4, v1, v4

    int-to-long v4, v4

    shl-long/2addr v4, v15

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v13, v2

    add-long/2addr v7, v13

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_b
    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v13, v2

    add-long/2addr v7, v13

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_2
    int-to-long v6, v2

    and-long/2addr v6, v9

    goto/16 :goto_7

    :pswitch_c
    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {v4, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    int-to-long v13, v2

    goto/16 :goto_8

    :pswitch_d
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte v2, v1, v2

    goto/16 :goto_6

    :pswitch_e
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long v4, v4, v16

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    aget-byte v2, v1, v2

    goto/16 :goto_6

    :pswitch_f
    aget-byte v2, v1, v2

    int-to-long v4, v2

    and-long v13, v4, v16

    goto/16 :goto_8

    :cond_7
    const/16 v4, 0x18

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_10
    add-int/lit8 v5, v2, 0x7

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0x6

    aget-byte v7, v1, v7

    shl-int/2addr v7, v11

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long v13, v5, v7

    add-int/lit8 v5, v2, 0xf

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0xe

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xd

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xc

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xb

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0xa

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x9

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/2addr v2, v4

    aget-byte v2, v1, v2

    goto/16 :goto_3

    :pswitch_11
    add-int/lit8 v5, v2, 0x6

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v11

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long v13, v5, v7

    add-int/lit8 v5, v2, 0xe

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0xd

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xc

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xb

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xa

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x9

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x7

    aget-byte v2, v1, v2

    goto/16 :goto_3

    :pswitch_12
    add-int/lit8 v5, v2, 0x5

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v15

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long v13, v5, v7

    add-int/lit8 v5, v2, 0xd

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0xc

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xb

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xa

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x9

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x7

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x6

    aget-byte v2, v1, v2

    goto/16 :goto_3

    :pswitch_13
    add-int/lit8 v5, v2, 0x4

    aget-byte v5, v1, v5

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long v13, v5, v7

    add-int/lit8 v5, v2, 0xc

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0xb

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0xa

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x9

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x8

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x7

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x5

    aget-byte v2, v1, v2

    goto/16 :goto_3

    :pswitch_14
    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    int-to-long v5, v5

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long v13, v5, v7

    add-int/lit8 v5, v2, 0xb

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0xa

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x9

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x8

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x7

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, v1, v2

    goto/16 :goto_3

    :pswitch_15
    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    int-to-long v5, v5

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long v13, v5, v7

    add-int/lit8 v5, v2, 0xa

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0x9

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x8

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x7

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x6

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v1, v2

    goto/16 :goto_3

    :pswitch_16
    const/16 v9, 0x8

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    shl-int/2addr v5, v9

    int-to-long v5, v5

    aget-byte v7, v1, v2

    int-to-long v7, v7

    and-long v7, v7, v16

    add-long v13, v5, v7

    add-int/lit8 v5, v2, 0x9

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0x8

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x7

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x6

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v1, v2

    goto :goto_3

    :pswitch_17
    aget-byte v5, v1, v2

    int-to-long v13, v5

    add-int/lit8 v5, v2, 0x8

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0x7

    aget-byte v7, v1, v7

    shl-int/2addr v7, v11

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x6

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget-byte v2, v1, v2

    :goto_3
    int-to-long v7, v2

    and-long v7, v7, v16

    add-long/2addr v5, v7

    :goto_4
    move-wide v8, v5

    move-wide v6, v13

    goto/16 :goto_b

    :pswitch_18
    add-int/lit8 v5, v2, 0x7

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v10

    add-int/lit8 v7, v2, 0x6

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    aget-byte v2, v1, v2

    goto/16 :goto_5

    :pswitch_19
    add-int/lit8 v5, v2, 0x6

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v11

    add-int/lit8 v7, v2, 0x5

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v15

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    aget-byte v2, v1, v2

    goto :goto_5

    :pswitch_1a
    add-int/lit8 v5, v2, 0x5

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v15

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    aget-byte v2, v1, v2

    goto :goto_5

    :pswitch_1b
    add-int/lit8 v5, v2, 0x4

    aget-byte v5, v1, v5

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    shl-long/2addr v7, v12

    add-long/2addr v5, v7

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v7, v7, v16

    const/16 v4, 0x8

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    aget-byte v2, v1, v2

    :goto_5
    int-to-long v7, v2

    and-long v7, v7, v16

    add-long v13, v5, v7

    goto :goto_8

    :pswitch_1c
    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    shl-int/lit8 v4, v5, 0x18

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    shl-long/2addr v6, v12

    add-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte v2, v1, v2

    goto :goto_6

    :pswitch_1d
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long v6, v6, v16

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte v2, v1, v2

    :goto_6
    int-to-long v6, v2

    and-long v6, v6, v16

    :goto_7
    add-long v13, v4, v6

    :goto_8
    move-wide v6, v13

    goto :goto_a

    :goto_9
    const-wide/16 v6, -0x1

    :goto_a
    const-wide/16 v8, -0x1

    :goto_b
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/g;->z:I

    add-int v5, v2, v4

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    aget-byte v5, v1, v5

    if-lez v5, :cond_b

    const-wide/16 v10, -0x1

    cmp-long v5, v6, v10

    if-eqz v5, :cond_b

    cmp-long v5, v8, v10

    if-eqz v5, :cond_9

    xor-long v10, v6, v8

    const/16 v5, 0x20

    ushr-long v13, v10, v5

    xor-long/2addr v10, v13

    long-to-int v5, v10

    sget-object v10, Lcom/alibaba/fastjson2/JSONFactory;->j:[Lcom/alibaba/fastjson2/JSONFactory$e;

    array-length v11, v10

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    and-int/2addr v11, v5

    aget-object v5, v10, v11

    if-nez v5, :cond_8

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/alibaba/fastjson2/JSONFactory$e;

    move-object v4, v13

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/fastjson2/JSONFactory$e;-><init>(Ljava/lang/String;JJ)V

    aput-object v13, v10, v11

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v5, v0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_c

    :cond_8
    iget-wide v10, v5, Lcom/alibaba/fastjson2/JSONFactory$e;->b:J

    cmp-long v6, v10, v6

    if-nez v6, :cond_b

    iget-wide v6, v5, Lcom/alibaba/fastjson2/JSONFactory$e;->c:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v2, v5, Lcom/alibaba/fastjson2/JSONFactory$e;->a:Ljava/lang/String;

    goto :goto_c

    :cond_9
    const/16 v5, 0x20

    ushr-long v8, v6, v5

    xor-long/2addr v8, v6

    long-to-int v5, v8

    sget-object v8, Lcom/alibaba/fastjson2/JSONFactory;->i:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    array-length v9, v8

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    and-int/2addr v5, v9

    aget-object v9, v8, v5

    if-nez v9, :cond_a

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/alibaba/fastjson2/util/NameCacheEntry;

    invoke-direct {v4, v2, v6, v7}, Lcom/alibaba/fastjson2/util/NameCacheEntry;-><init>(Ljava/lang/String;J)V

    aput-object v4, v8, v5

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v5, v0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_c

    :cond_a
    iget-wide v10, v9, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    cmp-long v5, v10, v6

    if-nez v5, :cond_b

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v2, v9, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto/16 :goto_f

    :cond_c
    const/16 v4, 0x7a

    if-ne v8, v4, :cond_10

    aget-byte v4, v1, v2

    const/16 v5, -0x10

    if-lt v4, v5, :cond_d

    const/16 v5, 0x2f

    if-gt v4, v5, :cond_d

    iput v4, v0, Lcom/alibaba/fastjson2/g;->z:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_d

    :cond_d
    if-lt v4, v11, :cond_e

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_e

    sub-int/2addr v4, v10

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_d

    :cond_e
    const/16 v5, 0x40

    if-lt v4, v5, :cond_f

    const/16 v5, 0x47

    if-gt v4, v5, :cond_f

    const/4 v5, 0x1

    add-int/2addr v2, v5

    invoke-static {v1, v2, v4}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v2

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_d

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    :goto_d
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_e

    :cond_10
    const/16 v2, 0x7b

    if-ne v8, v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    :goto_e
    const/4 v2, 0x0

    goto :goto_f

    :cond_11
    const/16 v2, 0x7c

    if-ne v8, v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_e

    :cond_12
    const/16 v2, 0x7d

    if-ne v8, v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v2, v0, Lcom/alibaba/fastjson2/g;->O:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_e

    :cond_13
    const/16 v2, 0x7e

    if-ne v8, v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    iput v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    sget-object v2, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    if-nez v2, :cond_14

    const-string v2, "GB18030"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    :cond_14
    sget-object v4, Lcom/alibaba/fastjson2/g;->A0:Ljava/nio/charset/Charset;

    goto :goto_e

    :cond_15
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_e

    :goto_f
    iget v5, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-gez v5, :cond_16

    iget-object v2, v0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v5, v5

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v2

    :cond_16
    if-nez v2, :cond_1d

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne v4, v5, :cond_1b

    sget v5, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    const/16 v6, 0x22

    if-ge v5, v6, :cond_1b

    iget-object v2, v0, Lcom/alibaba/fastjson2/g;->Z:[C

    iget v5, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-nez v2, :cond_17

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v6, v0, Lcom/alibaba/fastjson2/g;->k0:Lcom/alibaba/fastjson2/JSONFactory$b;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, v0, Lcom/alibaba/fastjson2/g;->Z:[C

    :cond_17
    if-eqz v2, :cond_18

    array-length v6, v2

    if-ge v6, v5, :cond_19

    :cond_18
    new-array v2, v5, [C

    iput-object v2, v0, Lcom/alibaba/fastjson2/g;->Z:[C

    :cond_19
    const/4 v6, 0x0

    :goto_10
    if-ge v6, v5, :cond_1a

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v7, v6

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    aput-char v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1a
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v6

    :cond_1b
    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/String;

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v6, v0, Lcom/alibaba/fastjson2/g;->z:I

    invoke-direct {v2, v1, v5, v6, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :cond_1c
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :cond_1d
    if-eqz v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    if-nez v1, :cond_1e

    iget v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->u0:I

    iget v1, v0, Lcom/alibaba/fastjson2/g;->z:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->v0:I

    iget-byte v1, v0, Lcom/alibaba/fastjson2/g;->J:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/g;->w0:B

    goto :goto_12

    :cond_1e
    iget-object v3, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    if-nez v3, :cond_20

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v6, v3, 0x2

    const/16 v3, 0x20

    if-ge v6, v3, :cond_1f

    const/16 v6, 0x20

    :cond_1f
    new-array v3, v6, [J

    iput-object v3, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    goto :goto_11

    :cond_20
    array-length v4, v3

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_21

    array-length v4, v3

    add-int/2addr v4, v12

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    :cond_21
    :goto_11
    iget v3, v0, Lcom/alibaba/fastjson2/g;->O:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, v0, Lcom/alibaba/fastjson2/g;->z:I

    int-to-long v5, v5

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    iget-byte v5, v0, Lcom/alibaba/fastjson2/g;->J:B

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    mul-int/lit8 v1, v1, 0x2

    const/4 v5, 0x1

    add-int/2addr v1, v5

    aput-wide v3, v0, v1

    :cond_22
    :goto_12
    return-object v2

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

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public readFieldNameHashCode()J
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v1, v2

    iput-byte v2, v0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v4, 0x7f

    const/4 v6, 0x1

    if-ne v2, v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0x2f

    const/16 v8, -0x10

    const/16 v9, 0x8

    const-wide/16 v10, 0x0

    const/16 v12, 0x20

    if-eqz v4, :cond_7

    aget-byte v2, v1, v3

    iput-byte v2, v0, Lcom/alibaba/fastjson2/g;->J:B

    if-lt v2, v8, :cond_6

    const/16 v13, 0x48

    if-gt v2, v13, :cond_6

    if-gt v2, v7, :cond_1

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v2

    :goto_1
    if-gez v2, :cond_2

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v0

    return-wide v0

    :cond_2
    if-nez v2, :cond_4

    iget-byte v1, v0, Lcom/alibaba/fastjson2/g;->w0:B

    iput-byte v1, v0, Lcom/alibaba/fastjson2/g;->J:B

    iget v1, v0, Lcom/alibaba/fastjson2/g;->v0:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v1, v0, Lcom/alibaba/fastjson2/g;->u0:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    iget-wide v1, v0, Lcom/alibaba/fastjson2/g;->t0:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->q0()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/fastjson2/g;->t0:J

    :cond_3
    iget-wide v0, v0, Lcom/alibaba/fastjson2/g;->t0:J

    return-wide v0

    :cond_4
    mul-int/lit8 v2, v2, 0x2

    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    add-int/lit8 v3, v2, 0x1

    aget-wide v3, v1, v3

    long-to-int v5, v3

    int-to-byte v6, v5

    iput-byte v6, v0, Lcom/alibaba/fastjson2/g;->J:B

    shr-int/2addr v5, v9

    iput v5, v0, Lcom/alibaba/fastjson2/g;->z:I

    shr-long/2addr v3, v12

    long-to-int v3, v3

    iput v3, v0, Lcom/alibaba/fastjson2/g;->O:I

    aget-wide v3, v1, v2

    cmp-long v1, v3, v10

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->q0()J

    move-result-wide v3

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    aput-wide v3, v0, v2

    :cond_5
    return-wide v3

    :cond_6
    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :cond_7
    const/16 v3, 0x49

    if-lt v2, v3, :cond_8

    const/16 v3, 0x78

    if-gt v2, v3, :cond_8

    add-int/lit8 v3, v2, -0x49

    goto :goto_3

    :cond_8
    const/16 v3, 0x79

    if-eq v2, v3, :cond_a

    const/16 v3, 0x7a

    if-ne v2, v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->y0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v3

    :goto_3
    iput v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v13, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v13, v0, Lcom/alibaba/fastjson2/g;->O:I

    if-gez v3, :cond_b

    iget-object v5, v0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v10, v3

    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v10

    goto/16 :goto_8

    :cond_b
    if-gt v3, v9, :cond_c

    add-int v14, v13, v3

    array-length v15, v1

    if-gt v14, v15, :cond_c

    const-wide/32 v14, 0xffff

    const-wide v16, 0xffffffffL

    packed-switch v3, :pswitch_data_0

    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v8, v13

    add-long/2addr v6, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v14, v13, 0x6

    aget-byte v14, v1, v14

    int-to-long v14, v14

    const/16 v18, 0x30

    shl-long v14, v14, v18

    add-int/lit8 v18, v13, 0x5

    aget-byte v5, v1, v18

    int-to-long v6, v5

    const-wide/16 v19, 0xff

    and-long v5, v6, v19

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    add-long/2addr v14, v5

    add-int/lit8 v5, v13, 0x4

    aget-byte v5, v1, v5

    int-to-long v5, v5

    and-long v5, v5, v19

    shl-long/2addr v5, v12

    add-long/2addr v14, v5

    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v8, v13

    add-long/2addr v6, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    and-long v5, v5, v16

    add-long/2addr v14, v5

    move-wide v5, v14

    goto :goto_6

    :pswitch_1
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v8, v13

    add-long v13, v6, v8

    const-wide/16 v21, 0x4

    add-long v13, v13, v21

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v13

    int-to-long v13, v13

    shl-long/2addr v13, v12

    add-long/2addr v6, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    and-long v5, v5, v16

    add-long/2addr v13, v5

    move-wide v5, v13

    goto :goto_6

    :pswitch_2
    add-int/lit8 v5, v13, 0x4

    aget-byte v5, v1, v5

    int-to-long v5, v5

    shl-long/2addr v5, v12

    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v13, v13

    add-long/2addr v8, v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    int-to-long v7, v7

    and-long v7, v7, v16

    goto :goto_4

    :pswitch_3
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v8, v13

    add-long/2addr v6, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    goto :goto_5

    :pswitch_4
    add-int/lit8 v5, v13, 0x2

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    sget-object v7, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v8, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v12, v13

    add-long/2addr v8, v12

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v14

    :goto_4
    add-long/2addr v5, v7

    goto :goto_6

    :pswitch_5
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/g;->y0:J

    int-to-long v8, v13

    add-long/2addr v6, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v14

    goto :goto_6

    :pswitch_6
    aget-byte v5, v1, v13

    :goto_5
    int-to-long v5, v5

    goto :goto_6

    :cond_c
    move-wide v5, v10

    :goto_6
    cmp-long v7, v5, v10

    if-eqz v7, :cond_d

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v7, v3

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    move-wide v10, v5

    goto :goto_8

    :cond_d
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v10, v5

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_e

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v6, v1, v6

    int-to-long v6, v6

    xor-long/2addr v6, v10

    const-wide v8, 0x100000001b3L

    mul-long v10, v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    if-eqz v4, :cond_13

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v1, v4

    const/16 v5, -0x10

    if-lt v1, v5, :cond_f

    const/16 v5, 0x2f

    if-gt v1, v5, :cond_f

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_9

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    :goto_9
    if-nez v1, :cond_10

    iget v1, v0, Lcom/alibaba/fastjson2/g;->O:I

    iput v1, v0, Lcom/alibaba/fastjson2/g;->u0:I

    iput v3, v0, Lcom/alibaba/fastjson2/g;->v0:I

    iput-byte v2, v0, Lcom/alibaba/fastjson2/g;->w0:B

    iput-wide v10, v0, Lcom/alibaba/fastjson2/g;->t0:J

    goto :goto_b

    :cond_10
    const/4 v4, 0x1

    shl-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x2

    iget-object v5, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    if-nez v5, :cond_11

    const/16 v6, 0x20

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    goto :goto_a

    :cond_11
    array-length v6, v5

    if-ge v6, v4, :cond_12

    add-int/lit8 v4, v4, 0x10

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    :cond_12
    :goto_a
    iget-object v4, v0, Lcom/alibaba/fastjson2/g;->x0:[J

    aput-wide v10, v4, v1

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iget v0, v0, Lcom/alibaba/fastjson2/g;->O:I

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    int-to-long v7, v3

    const/16 v0, 0x8

    shl-long/2addr v7, v0

    add-long/2addr v5, v7

    int-to-long v2, v2

    add-long/2addr v5, v2

    aput-wide v5, v4, v1

    :cond_13
    :goto_b
    return-wide v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readFieldNameHashCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloatValue()F
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, -0x49

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->z0()F

    move-result p0

    return p0
.end method

.method public readHex()[B
    .locals 9

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    const/16 v6, 0x37

    const/16 v7, 0x39

    if-gt v4, v7, :cond_0

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v6

    :goto_1
    sub-int/2addr v4, v8

    if-gt v3, v7, :cond_1

    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    sub-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public readIfNull()Z
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x51

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public readInstant()Ljava/time/Instant;
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x42

    if-eq v1, v3, :cond_0

    const-wide/16 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const-wide/16 v5, 0x3c

    mul-long/2addr v0, v5

    invoke-static {v0, v1, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :cond_0
    :pswitch_3
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readInt32()Ljava/lang/Integer;
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    const/16 v3, -0x51

    if-ne v1, v3, :cond_0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v3, -0x10

    if-lt v1, v3, :cond_1

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x40

    if-lt v1, v3, :cond_3

    const/16 v3, 0x47

    if-gt v1, v3, :cond_3

    add-int/lit8 v1, v1, -0x44

    shl-int/lit8 v1, v1, 0x10

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    const/16 v3, 0x48

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :cond_4
    move v1, v0

    add-int/lit8 v2, v2, 0x4

    :goto_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/g;->B0([BB)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public readInt32Value()I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x40

    if-lt v1, v3, :cond_2

    const/16 v3, 0x47

    if-gt v1, v3, :cond_2

    invoke-static {v0, v2, v1}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const/16 v3, 0x48

    if-ne v1, v3, :cond_3

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v1

    add-int/lit8 v2, v2, 0x4

    :goto_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v1

    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/g;->B0([BB)I

    move-result p0

    return p0
.end method

.method public readInt64()Ljava/lang/Long;
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    const/16 v3, -0x51

    if-ne v1, v3, :cond_0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v3, -0x28

    if-lt v1, v3, :cond_1

    const/16 v4, -0x11

    if-gt v1, v4, :cond_1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x8

    int-to-long v0, v1

    goto :goto_1

    :cond_1
    const/16 v3, -0x38

    if-lt v1, v3, :cond_2

    const/16 v3, -0x29

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x30

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, -0x40

    if-lt v1, v3, :cond_3

    const/16 v3, -0x39

    if-gt v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x3c

    shl-int/lit8 v1, v1, 0x10

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/16 v3, -0x41

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_5
    const/16 v3, -0x42

    if-ne v1, v3, :cond_7

    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :cond_6
    add-int/lit8 v2, v2, 0x8

    :goto_1
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_7
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/g;->D0([BB)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public readInt64Value()J
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    const/16 v3, -0x28

    if-lt v1, v3, :cond_0

    const/16 v4, -0x11

    if-gt v1, v4, :cond_0

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x8

    int-to-long v0, v1

    goto :goto_0

    :cond_0
    const/16 v3, -0x38

    if-lt v1, v3, :cond_1

    const/16 v3, -0x29

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x30

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, -0x40

    if-lt v1, v3, :cond_2

    const/16 v3, -0x39

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x3c

    shl-int/lit8 v1, v1, 0x10

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const/16 v3, -0x41

    if-ne v1, v3, :cond_3

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_3
    const/16 v3, -0x42

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    sget-boolean v3, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v3, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :cond_4
    add-int/lit8 v2, v2, 0x8

    :goto_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-wide v0

    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/g;->D0([BB)J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64ValueArray()[J
    .locals 5

    const/16 v0, -0x6e

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/g;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readTypeHashCode()J

    move-result-wide v0

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64Array;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->HASH_TYPE:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->HASH_TYPE:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->startArray()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public readList([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->startArray()I

    move-result v0

    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/g;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readLocalDate()Ljava/time/LocalDate;
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, -0x57

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    invoke-static {v1, v3, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, -0x51

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/g;->G0(I)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public final readLocalDate10()Ljava/time/LocalDate;
    .locals 4

    iget-byte v0, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x53

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate10([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalDate11()Ljava/time/LocalDate;
    .locals 4

    iget-byte v0, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x54

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate11([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readLocalDate8()Ljava/time/LocalDate;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x51

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate8([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readLocalDate9()Ljava/time/LocalDate;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x52

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDate9([BI)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readLocalDateTime()Ljava/time/LocalDateTime;
    .locals 11

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, -0x58

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v4, v1, v2

    add-int/lit8 v1, v3, 0x1

    aget-byte v5, v0, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v7, v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v8, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v9, v0, v2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v10

    invoke-static/range {v4 .. v10}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, -0x51

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/g;->H0(I)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public final readLocalDateTime12()Ljava/time/LocalDateTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime12([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalDateTime14()Ljava/time/LocalDateTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x57

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime14([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalDateTime16()Ljava/time/LocalDateTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x59

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime16([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x11

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalDateTime17()Ljava/time/LocalDateTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime17([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalDateTime18()Ljava/time/LocalDateTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime18([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalDateTime19()Ljava/time/LocalDateTime;
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    iput-byte v2, p0, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v3, 0x5c

    const-string v4, "date only support string input"

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime19([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalDateTime20()Ljava/time/LocalDateTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTime20([BI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalDateTimeX(I)Ljava/time/LocalDateTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    iput-byte v2, p0, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v3, 0x49

    if-lt v2, v3, :cond_1

    const/16 v3, 0x78

    if-gt v2, v3, :cond_1

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    const/16 v2, 0x1d

    if-gt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalDateTimeX([BII)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal LocalDateTime string : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "date only support string input"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readLocalTime()Ljava/time/LocalTime;
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, -0x59

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    invoke-static {v1, v2, v0, p0}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x49

    if-lt v2, v0, :cond_4

    const/16 v0, 0x78

    if-gt v2, v0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getStringLength()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalTime12()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalTime11()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalTime10()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalTime18()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalTime8()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readLocalTime5()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readLocalTime10()Ljava/time/LocalTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime10([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalTime11()Ljava/time/LocalTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x54

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime11([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalTime12()Ljava/time/LocalTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime12([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalTime18()Ljava/time/LocalTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime18([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalTime5()Ljava/time/LocalTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime5([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readLocalTime8()Ljava/time/LocalTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x51

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readLocalTime9()Ljava/time/LocalTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x51

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseLocalTime8([BI)Ljava/time/LocalTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readMillis19()J
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19([BILjava/time/ZoneId;)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-wide v0

    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "date only support string input"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readNull()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null not match, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/alibaba/fastjson2/g;->y:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readNullOrNewDate()Ljava/util/Date;
    .locals 1

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readNumber()Ljava/lang/Number;
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x40

    if-lt v1, v3, :cond_2

    const/16 v3, 0x47

    if-gt v1, v3, :cond_2

    invoke-static {v0, v2, v1}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v3, -0x28

    if-lt v1, v3, :cond_3

    const/16 v4, -0x11

    if-gt v1, v4, :cond_3

    sub-int/2addr v1, v3

    int-to-long v0, v1

    const-wide/16 v2, -0x8

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v3, -0x38

    if-lt v1, v3, :cond_4

    const/16 v3, -0x29

    if-gt v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x30

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v3, -0x40

    if-lt v1, v3, :cond_5

    const/16 v3, -0x39

    if-gt v1, v3, :cond_5

    add-int/lit8 v1, v1, 0x3c

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v3, -0x6e

    if-eq v1, v3, :cond_d

    const/16 v3, 0x48

    if-eq v1, v3, :cond_c

    const/16 v3, 0x79

    if-eq v1, v3, :cond_b

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_a

    packed-switch v1, :pswitch_data_0

    const/16 v0, 0x49

    if-lt v1, v0, :cond_6

    const/16 v3, 0x78

    if-gt v1, v3, :cond_6

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_3
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-short p0, v1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    if-nez v0, :cond_8

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_8
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1

    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_d
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_e
    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "not support input type : "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public readNumber0()V
    .locals 1

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readObject()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/alibaba/fastjson2/g;->v:[B

    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    iget v4, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v4, v0, v4

    iput-byte v4, v6, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v5, -0x51

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    return-object v7

    :cond_0
    const/16 v5, -0x5a

    if-lt v4, v5, :cond_20

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v8, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->r:Ljava/util/function/Supplier;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    :goto_0
    iget v4, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v8, v0, v4

    const/16 v9, -0x5b

    if-ne v8, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v1

    :cond_3
    const/16 v4, 0x49

    if-lt v8, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readFieldName()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object v8

    :goto_1
    iget v9, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v12, v0, v9

    const-string v13, ".."

    const/16 v14, -0x6d

    if-ne v12, v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readReference()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v4

    invoke-virtual {v6, v1, v8, v4}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    :goto_2
    move v14, v5

    goto/16 :goto_e

    :cond_6
    const/16 v15, 0x7e

    if-lt v12, v4, :cond_7

    if-gt v12, v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move v14, v5

    goto/16 :goto_d

    :cond_7
    const/16 v15, 0x2f

    const/16 v4, -0x10

    if-lt v12, v4, :cond_8

    if-gt v12, v15, :cond_8

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_8
    const/16 v7, -0x4f

    if-ne v12, v7, :cond_9

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    const/16 v7, -0x50

    if-ne v12, v7, :cond_a

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    if-ne v12, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readObject()Ljava/util/Map;

    move-result-object v4

    goto :goto_3

    :cond_b
    const/16 v7, -0x42

    if-ne v12, v7, :cond_d

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v12, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v14, v9

    add-long/2addr v12, v14

    invoke-virtual {v4, v0, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    iget v4, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v4, v4, 0x8

    iput v4, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean v4, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_c
    invoke-static {v12, v13}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v12

    :goto_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_3

    :cond_d
    const/16 v7, 0x3f

    const/16 v5, 0x30

    const/16 v14, -0x6c

    if-lt v12, v14, :cond_1b

    const/16 v14, -0x5c

    if-gt v12, v14, :cond_1b

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-ne v12, v14, :cond_10

    aget-byte v12, v0, v9

    if-lt v12, v4, :cond_e

    if-gt v12, v15, :cond_e

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_5

    :cond_e
    if-lt v12, v5, :cond_f

    if-gt v12, v7, :cond_f

    add-int/lit8 v12, v12, -0x38

    shl-int/lit8 v4, v12, 0x8

    add-int/lit8 v5, v9, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int v12, v4, v5

    add-int/lit8 v9, v9, 0x2

    iput v9, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v12

    goto :goto_5

    :cond_10
    add-int/lit8 v12, v12, 0x6c

    :goto_5
    if-nez v12, :cond_14

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v2

    cmp-long v4, v4, v10

    if-eqz v4, :cond_12

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    :goto_6
    const/16 v14, -0x5a

    goto/16 :goto_d

    :cond_12
    iget-object v4, v6, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    if-eqz v4, :cond_13

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    :cond_13
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_6

    :cond_14
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v2

    cmp-long v4, v4, v10

    if-eqz v4, :cond_15

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_7

    :cond_15
    iget-object v4, v6, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->s:Ljava/util/function/Supplier;

    if-eqz v4, :cond_16

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_7

    :cond_16
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v4, v12}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :goto_7
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v12, :cond_11

    iget v7, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v7, v0, v7

    const/16 v9, -0x6d

    if-ne v7, v9, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readReference()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v7}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    :goto_9
    const/16 v9, 0x7e

    const/16 v14, -0x5a

    const/16 v15, 0x49

    goto :goto_b

    :cond_18
    const/4 v14, 0x0

    const/16 v15, 0x49

    const/16 v9, 0x7e

    if-lt v7, v15, :cond_19

    if-gt v7, v9, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v7

    const/16 v14, -0x5a

    goto :goto_a

    :cond_19
    const/16 v14, -0x5a

    if-ne v7, v14, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readObject()Ljava/util/Map;

    move-result-object v7

    goto :goto_a

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object v7

    :goto_a
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_1b
    const/16 v14, -0x5a

    if-lt v12, v5, :cond_1c

    if-gt v12, v7, :cond_1c

    add-int/lit8 v12, v12, -0x38

    shl-int/lit8 v4, v12, 0x8

    add-int/lit8 v9, v9, 0x1

    aget-byte v5, v0, v9

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x2

    iput v5, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_d

    :cond_1c
    const/16 v4, 0x40

    if-lt v12, v4, :cond_1d

    const/16 v4, 0x47

    if-gt v12, v4, :cond_1d

    add-int/lit8 v9, v9, 0x1

    invoke-static {v0, v9, v12}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v4

    iget v5, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x3

    iput v5, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_c

    :cond_1d
    const/16 v4, 0x48

    if-ne v12, v4, :cond_1e

    add-int/lit8 v9, v9, 0x1

    invoke-static {v0, v9}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v4

    iget v5, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v5, v5, 0x5

    iput v5, v6, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    :goto_c
    move-object v4, v5

    goto :goto_d

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->readAny()Ljava/lang/Object;

    move-result-object v4

    :goto_d
    if-nez v4, :cond_1f

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v12, v2

    cmp-long v5, v12, v10

    if-eqz v5, :cond_1f

    goto :goto_e

    :cond_1f
    invoke-interface {v1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    move v5, v14

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_20
    const/16 v0, -0x6e

    if-ne v4, v0, :cond_21

    const-class v1, Ljava/util/Map;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/g;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_21
    invoke-static {v4}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public readOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public readOffsetTime()Ljava/time/OffsetTime;
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toOffsetTime()Ljava/time/OffsetTime;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public readPattern()Ljava/lang/String;
    .locals 1

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readReference()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x6d

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->isString()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reference not support input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/alibaba/fastjson2/g;->y:B

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/g;->n0(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v3, -0x51

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    return-object v4

    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/g;->O:I

    const/16 v3, 0x49

    if-lt v1, v3, :cond_d

    const/16 v5, 0x79

    if-gt v1, v5, :cond_d

    if-ne v1, v5, :cond_4

    aget-byte v1, v0, v2

    const/16 v3, -0x10

    if-lt v1, v3, :cond_1

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_0

    :cond_2
    const/16 v3, 0x40

    if-lt v1, v3, :cond_3

    const/16 v3, 0x47

    if-gt v1, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v1

    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/g;->O:I

    goto :goto_1

    :cond_4
    sub-int/2addr v1, v3

    :goto_1
    if-gez v1, :cond_5

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iput v1, p0, Lcom/alibaba/fastjson2/g;->z:I

    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    const/16 v2, 0x22

    if-ge v0, v2, :cond_a

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    if-nez v0, :cond_6

    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->C:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/g;->k0:Lcom/alibaba/fastjson2/JSONFactory$b;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    :cond_6
    if-eqz v0, :cond_7

    array-length v2, v0

    if-ge v2, v1, :cond_8

    :cond_7
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/alibaba/fastjson2/g;->Z:[C

    :cond_8
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_9

    iget-object v5, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_a
    new-instance v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_b
    if-nez v1, :cond_c

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v5

    cmp-long p0, v0, v7

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    move-object v4, v3

    :goto_4
    return-object v4

    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->J0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readStringArray()[Ljava/lang/String;
    .locals 4

    const/16 v0, -0x6e

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/g;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readTypeHashCode()J

    move-result-wide v0

    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;->HASH_TYPE:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->startArray()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public readTypeHashCode()J
    .locals 14

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    iput-byte v2, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v3, 0x79

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, v0, v1

    const/16 v4, 0x8

    if-le v3, v4, :cond_5

    const/16 v5, 0x3f

    if-gt v3, v5, :cond_5

    const/16 v5, 0x2f

    if-gt v3, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, -0x38

    shl-int/2addr v3, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x2

    :goto_0
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v8, 0x0

    move v9, v1

    :goto_1
    if-ge v8, v3, :cond_1

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v0, v9

    int-to-long v11, v9

    xor-long/2addr v6, v11

    const-wide v11, 0x100000001b3L

    mul-long/2addr v6, v11

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto :goto_1

    :cond_1
    aget-byte v0, v0, v9

    if-ltz v0, :cond_5

    if-gt v0, v5, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-nez v0, :cond_2

    iput v1, p0, Lcom/alibaba/fastjson2/g;->u0:I

    iput v3, p0, Lcom/alibaba/fastjson2/g;->v0:I

    iput-byte v2, p0, Lcom/alibaba/fastjson2/g;->w0:B

    iput-wide v6, p0, Lcom/alibaba/fastjson2/g;->t0:J

    goto :goto_3

    :cond_2
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v5, v0, 0x2

    iget-object v8, p0, Lcom/alibaba/fastjson2/g;->x0:[J

    const/16 v10, 0x20

    if-nez v8, :cond_3

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/alibaba/fastjson2/g;->x0:[J

    goto :goto_2

    :cond_3
    array-length v11, v8

    if-ge v11, v5, :cond_4

    add-int/lit8 v5, v5, 0x10

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/g;->x0:[J

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/alibaba/fastjson2/g;->x0:[J

    add-int/lit8 v0, v0, 0x1

    int-to-long v11, v1

    shl-long v10, v11, v10

    int-to-long v12, v3

    shl-long/2addr v12, v4

    add-long/2addr v10, v12

    int-to-long v12, v2

    add-long/2addr v10, v12

    aput-wide v10, v5, v0

    :goto_3
    iput v1, p0, Lcom/alibaba/fastjson2/g;->O:I

    iput v3, p0, Lcom/alibaba/fastjson2/g;->z:I

    iput v9, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-wide v6

    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->M0()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUUID()Ljava/util/UUID;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v1, v2

    const/16 v4, -0x6f

    const/16 v5, 0x10

    if-eq v2, v4, :cond_17

    const/16 v4, -0x51

    if-eq v2, v4, :cond_16

    const/16 v4, 0x69

    const/16 v7, 0x20

    const/4 v8, 0x4

    if-eq v2, v4, :cond_13

    const/16 v4, 0x6d

    const-string v15, "Invalid UUID string:  "

    const/16 v6, 0x17

    const/16 v9, 0x12

    const/16 v10, 0xd

    const/16 v11, 0x8

    const/16 v12, 0x24

    const/16 v13, 0x2d

    if-eq v2, v4, :cond_c

    const/16 v3, 0x79

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7a

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    if-ne v2, v7, :cond_4

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    shl-long/2addr v2, v8

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v9, v6

    aget-byte v9, v1, v9

    add-int/lit8 v9, v9, -0x30

    aget-byte v4, v4, v9

    int-to-long v9, v4

    add-long/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v9, 0x0

    :goto_2
    if-ge v5, v7, :cond_3

    shl-long/2addr v9, v8

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v6, v5

    aget-byte v6, v1, v6

    add-int/lit8 v6, v6, -0x30

    aget-byte v4, v4, v6

    int-to-long v11, v4

    add-long/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto/16 :goto_12

    :cond_4
    if-ne v2, v12, :cond_b

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x8

    aget-byte v3, v1, v3

    add-int/lit8 v4, v2, 0xd

    aget-byte v4, v1, v4

    add-int/lit8 v5, v2, 0x12

    aget-byte v5, v1, v5

    add-int/2addr v2, v6

    aget-byte v2, v1, v2

    if-ne v3, v13, :cond_a

    if-ne v4, v13, :cond_a

    if-ne v5, v13, :cond_a

    if-ne v2, v13, :cond_a

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_3
    if-ge v2, v11, :cond_5

    shl-long/2addr v3, v8

    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v7, v2

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, -0x30

    aget-byte v5, v5, v7

    int-to-long v14, v5

    add-long/2addr v3, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/16 v14, 0x9

    :goto_4
    if-ge v14, v10, :cond_6

    shl-long v2, v3, v8

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v5, v14

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    aget-byte v4, v4, v5

    int-to-long v4, v4

    add-long v3, v2, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_6
    const/16 v13, 0xe

    :goto_5
    if-ge v13, v9, :cond_7

    shl-long v2, v3, v8

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v5, v13

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    aget-byte v4, v4, v5

    int-to-long v4, v4

    add-long v3, v2, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_7
    const/16 v2, 0x13

    const-wide/16 v9, 0x0

    :goto_6
    if-ge v2, v6, :cond_8

    shl-long/2addr v9, v8

    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v7, v2

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, -0x30

    aget-byte v5, v5, v7

    int-to-long v13, v5

    add-long/2addr v9, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const/16 v11, 0x18

    :goto_7
    if-ge v11, v12, :cond_9

    shl-long v5, v9, v8

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v7, v11

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, -0x30

    aget-byte v2, v2, v7

    int-to-long v9, v2

    add-long/2addr v9, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    move-wide/from16 v16, v9

    move-wide v9, v3

    goto :goto_8

    :cond_a
    const-wide/16 v9, 0x0

    const-wide/16 v16, 0x0

    :goto_8
    move-wide v2, v9

    move-wide/from16 v9, v16

    goto/16 :goto_12

    :cond_b
    new-instance v3, Ljava/lang/String;

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    add-int/lit8 v2, v3, 0x8

    aget-byte v2, v1, v2

    add-int/lit8 v4, v3, 0xd

    aget-byte v4, v1, v4

    add-int/lit8 v5, v3, 0x12

    aget-byte v5, v1, v5

    add-int/2addr v3, v6

    aget-byte v3, v1, v3

    if-ne v2, v13, :cond_12

    if-ne v4, v13, :cond_12

    if-ne v5, v13, :cond_12

    if-ne v3, v13, :cond_12

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_9
    if-ge v2, v11, :cond_d

    shl-long/2addr v3, v8

    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v7, v2

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, -0x30

    aget-byte v5, v5, v7

    int-to-long v13, v5

    add-long/2addr v3, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    const/16 v14, 0x9

    :goto_a
    if-ge v14, v10, :cond_e

    shl-long v2, v3, v8

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v5, v14

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    aget-byte v4, v4, v5

    int-to-long v4, v4

    add-long v3, v2, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_e
    move-wide v2, v3

    const/16 v13, 0xe

    :goto_b
    if-ge v13, v9, :cond_f

    shl-long/2addr v2, v8

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v5, v13

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    aget-byte v4, v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_f
    const/16 v4, 0x13

    const-wide/16 v9, 0x0

    :goto_c
    if-ge v4, v6, :cond_10

    shl-long/2addr v9, v8

    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v7, v4

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, -0x30

    aget-byte v5, v5, v7

    int-to-long v13, v5

    add-long/2addr v9, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    const/16 v11, 0x18

    :goto_d
    if-ge v11, v12, :cond_11

    shl-long v4, v9, v8

    sget-object v6, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v7, v11

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, -0x30

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long v9, v4, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_11
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto/16 :goto_12

    :cond_12
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget v0, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v0, v12, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_14

    shl-long/2addr v2, v8

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v9, v6

    aget-byte v9, v1, v9

    add-int/lit8 v9, v9, -0x30

    aget-byte v4, v4, v9

    int-to-long v9, v4

    add-long/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_14
    const-wide/16 v9, 0x0

    :goto_f
    if-ge v5, v7, :cond_15

    shl-long/2addr v9, v8

    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->H:[B

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v6, v5

    aget-byte v6, v1, v6

    add-int/lit8 v6, v6, -0x30

    aget-byte v4, v4, v6

    int-to-long v11, v4

    add-long/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_15
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_12

    :cond_16
    const/4 v0, 0x0

    return-object v0

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v2

    if-ne v2, v5, :cond_1a

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v6, v6

    add-long/2addr v6, v3

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v8, v8

    add-long/2addr v3, v8

    const-wide/16 v8, 0x8

    add-long/2addr v3, v8

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_18

    move-wide v3, v6

    goto :goto_10

    :cond_18
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v3

    :goto_10
    if-eqz v0, :cond_19

    move-wide v9, v1

    goto :goto_11

    :cond_19
    invoke-static {v1, v2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    move-wide v9, v0

    :goto_11
    move-wide v2, v3

    :goto_12
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v2, v3, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0

    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuid not support "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readValueHashCode()J
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v1, v2

    iput-byte v2, v0, Lcom/alibaba/fastjson2/g;->J:B

    iput v3, v0, Lcom/alibaba/fastjson2/g;->O:I

    const/16 v3, 0x49

    const/16 v4, 0x7f

    if-lt v2, v3, :cond_0

    const/16 v3, 0x78

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x49

    iput v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    goto :goto_1

    :cond_0
    const/16 v3, 0x79

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v3

    iput v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v3, v0, Lcom/alibaba/fastjson2/g;->O:I

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->I0()Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v3

    iput v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iput v3, v0, Lcom/alibaba/fastjson2/g;->O:I

    :goto_1
    iget v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-gez v3, :cond_4

    iget-object v0, v0, Lcom/alibaba/fastjson2/g;->q0:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getHashCode(I)J

    move-result-wide v0

    goto/16 :goto_1a

    :cond_4
    const/16 v5, 0x7a

    const-wide v8, 0x100000001b3L

    const/4 v10, 0x2

    if-ne v2, v5, :cond_7

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v3

    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_2
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-ge v3, v2, :cond_6

    aget-byte v4, v1, v3

    if-ltz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_3

    :cond_5
    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v4, 0x4

    packed-switch v5, :pswitch_data_0

    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed input around byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    add-int/lit8 v11, v3, 0x2

    aget-byte v11, v1, v11

    invoke-static {v4, v5, v11, v3}, Lcom/alibaba/fastjson2/i;->n0(IIII)I

    move-result v4

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_3

    :pswitch_1
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson2/i;->m0(III)I

    move-result v4

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v3, v10

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :goto_3
    int-to-long v3, v4

    xor-long/2addr v3, v6

    mul-long v6, v3, v8

    goto :goto_2

    :cond_6
    move-wide v0, v6

    goto/16 :goto_1a

    :cond_7
    const/16 v5, 0x7b

    const-wide v11, 0xffffffffffffffL

    const/16 v13, 0x38

    const-wide v14, 0xffffffffffffL

    const/16 v16, 0x30

    const-wide v17, 0xffffffffffL

    const/16 v19, 0x28

    const-wide v20, 0xffffffffL

    const/16 v22, 0x20

    const-wide/32 v23, 0xffffff

    const-wide/32 v25, 0xffff

    const-wide/16 v27, 0xff

    const/16 v29, 0x0

    const/16 v6, 0x10

    const-wide/16 v32, 0x0

    const/16 v7, 0x8

    if-ne v2, v5, :cond_e

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v5, v1, v2

    const/4 v10, -0x2

    if-ne v5, v10, :cond_c

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, v1, v10

    const/4 v8, -0x1

    if-ne v10, v8, :cond_c

    if-gt v3, v6, :cond_b

    move-wide/from16 v5, v32

    const/4 v3, 0x2

    :goto_4
    iget v8, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v8, :cond_a

    add-int v8, v2, v3

    aget-byte v9, v1, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v7

    or-int/2addr v8, v9

    int-to-char v8, v8

    if-gt v8, v4, :cond_9

    if-nez v3, :cond_8

    if-nez v8, :cond_8

    goto :goto_7

    :cond_8
    int-to-byte v8, v8

    add-int/lit8 v9, v3, -0x2

    shr-int/lit8 v9, v9, 0x1

    packed-switch v9, :pswitch_data_1

    goto :goto_6

    :pswitch_2
    int-to-long v8, v8

    shl-long/2addr v8, v13

    and-long/2addr v5, v11

    goto :goto_5

    :pswitch_3
    int-to-long v8, v8

    shl-long v8, v8, v16

    and-long/2addr v5, v14

    goto :goto_5

    :pswitch_4
    int-to-long v8, v8

    shl-long v8, v8, v19

    and-long v5, v5, v17

    goto :goto_5

    :pswitch_5
    int-to-long v8, v8

    shl-long v8, v8, v22

    and-long v5, v5, v20

    goto :goto_5

    :pswitch_6
    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long v5, v5, v23

    goto :goto_5

    :pswitch_7
    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    and-long v5, v5, v25

    goto :goto_5

    :pswitch_8
    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    and-long v5, v5, v27

    :goto_5
    add-long/2addr v5, v8

    goto :goto_6

    :pswitch_9
    int-to-long v5, v8

    :goto_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_9
    :goto_7
    move-wide/from16 v5, v32

    :cond_a
    cmp-long v3, v5, v32

    if-eqz v3, :cond_b

    return-wide v5

    :cond_b
    const/4 v10, 0x2

    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_8
    iget v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v10, v3, :cond_1d

    add-int v3, v2, v10

    aget-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v3, v4

    int-to-char v3, v3

    int-to-long v3, v3

    xor-long v3, v30, v3

    const-wide v5, 0x100000001b3L

    mul-long v30, v3, v5

    add-int/lit8 v10, v10, 0x2

    goto :goto_8

    :cond_c
    const/4 v3, -0x1

    if-ne v5, v3, :cond_d

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_d

    const/4 v10, 0x2

    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_9
    iget v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v10, v3, :cond_1d

    add-int v3, v2, v10

    aget-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    or-int/2addr v3, v4

    int-to-char v3, v3

    int-to-long v3, v3

    xor-long v3, v30, v3

    const-wide v5, 0x100000001b3L

    mul-long v30, v3, v5

    add-int/lit8 v10, v10, 0x2

    goto :goto_9

    :cond_d
    move/from16 v3, v29

    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_a
    iget v4, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v4, :cond_1d

    add-int v4, v2, v3

    aget-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    int-to-char v4, v4

    int-to-long v4, v4

    xor-long v4, v30, v4

    const-wide v8, 0x100000001b3L

    mul-long v30, v4, v8

    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    :cond_e
    const/16 v5, 0x7d

    if-ne v2, v5, :cond_13

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-gt v3, v6, :cond_12

    move/from16 v3, v29

    move-wide/from16 v5, v32

    :goto_b
    iget v8, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v8, :cond_11

    add-int v8, v2, v3

    aget-byte v9, v1, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v7

    or-int/2addr v8, v9

    int-to-char v8, v8

    if-gt v8, v4, :cond_10

    if-nez v3, :cond_f

    if-nez v8, :cond_f

    goto :goto_e

    :cond_f
    int-to-byte v8, v8

    shr-int/lit8 v9, v3, 0x1

    packed-switch v9, :pswitch_data_2

    goto :goto_d

    :pswitch_a
    int-to-long v8, v8

    shl-long/2addr v8, v13

    and-long/2addr v5, v11

    goto :goto_c

    :pswitch_b
    int-to-long v8, v8

    shl-long v8, v8, v16

    and-long/2addr v5, v14

    goto :goto_c

    :pswitch_c
    int-to-long v8, v8

    shl-long v8, v8, v19

    and-long v5, v5, v17

    goto :goto_c

    :pswitch_d
    int-to-long v8, v8

    shl-long v8, v8, v22

    and-long v5, v5, v20

    goto :goto_c

    :pswitch_e
    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long v5, v5, v23

    goto :goto_c

    :pswitch_f
    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    and-long v5, v5, v25

    goto :goto_c

    :pswitch_10
    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    and-long v5, v5, v27

    :goto_c
    add-long/2addr v5, v8

    goto :goto_d

    :pswitch_11
    int-to-long v5, v8

    :goto_d
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    :cond_10
    :goto_e
    move-wide/from16 v5, v32

    :cond_11
    cmp-long v3, v5, v32

    if-eqz v3, :cond_12

    return-wide v5

    :cond_12
    move/from16 v3, v29

    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_f
    iget v4, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v4, :cond_1d

    add-int v4, v2, v3

    aget-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v7

    or-int/2addr v4, v5

    int-to-char v4, v4

    int-to-long v4, v4

    xor-long v4, v30, v4

    const-wide v8, 0x100000001b3L

    mul-long v30, v4, v8

    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    :cond_13
    const/16 v5, 0x7c

    if-ne v2, v5, :cond_18

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-gt v3, v6, :cond_17

    move/from16 v3, v29

    move-wide/from16 v5, v32

    :goto_10
    iget v8, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v8, :cond_16

    add-int v8, v2, v3

    aget-byte v9, v1, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v7

    or-int/2addr v8, v9

    int-to-char v8, v8

    if-gt v8, v4, :cond_15

    if-nez v3, :cond_14

    if-nez v8, :cond_14

    goto :goto_13

    :cond_14
    int-to-byte v8, v8

    shr-int/lit8 v9, v3, 0x1

    packed-switch v9, :pswitch_data_3

    goto :goto_12

    :pswitch_12
    int-to-long v8, v8

    shl-long/2addr v8, v13

    and-long/2addr v5, v11

    goto :goto_11

    :pswitch_13
    int-to-long v8, v8

    shl-long v8, v8, v16

    and-long/2addr v5, v14

    goto :goto_11

    :pswitch_14
    int-to-long v8, v8

    shl-long v8, v8, v19

    and-long v5, v5, v17

    goto :goto_11

    :pswitch_15
    int-to-long v8, v8

    shl-long v8, v8, v22

    and-long v5, v5, v20

    goto :goto_11

    :pswitch_16
    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long v5, v5, v23

    goto :goto_11

    :pswitch_17
    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    and-long v5, v5, v25

    goto :goto_11

    :pswitch_18
    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    and-long v5, v5, v27

    :goto_11
    add-long/2addr v5, v8

    goto :goto_12

    :pswitch_19
    int-to-long v5, v8

    :goto_12
    add-int/lit8 v3, v3, 0x2

    goto :goto_10

    :cond_15
    :goto_13
    move-wide/from16 v5, v32

    :cond_16
    cmp-long v3, v5, v32

    if-eqz v3, :cond_17

    return-wide v5

    :cond_17
    move/from16 v3, v29

    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_14
    iget v4, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v4, :cond_1d

    add-int v4, v2, v3

    aget-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    int-to-char v4, v4

    int-to-long v4, v4

    xor-long v4, v30, v4

    const-wide v8, 0x100000001b3L

    mul-long v30, v4, v8

    add-int/lit8 v3, v3, 0x2

    goto :goto_14

    :cond_18
    if-gt v3, v7, :cond_1c

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    move/from16 v3, v29

    move-wide/from16 v4, v32

    :goto_15
    iget v6, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v3, v6, :cond_1b

    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v7, v1, v6

    if-ltz v7, :cond_1a

    if-nez v7, :cond_19

    aget-byte v8, v1, v2

    if-nez v8, :cond_19

    goto :goto_18

    :cond_19
    packed-switch v3, :pswitch_data_4

    goto :goto_17

    :pswitch_1a
    int-to-long v7, v7

    shl-long/2addr v7, v13

    and-long/2addr v4, v11

    goto :goto_16

    :pswitch_1b
    int-to-long v7, v7

    shl-long v7, v7, v16

    and-long/2addr v4, v14

    goto :goto_16

    :pswitch_1c
    int-to-long v7, v7

    shl-long v7, v7, v19

    and-long v4, v4, v17

    goto :goto_16

    :pswitch_1d
    int-to-long v7, v7

    shl-long v7, v7, v22

    and-long v4, v4, v20

    goto :goto_16

    :pswitch_1e
    shl-int/lit8 v7, v7, 0x18

    int-to-long v7, v7

    and-long v4, v4, v23

    goto :goto_16

    :pswitch_1f
    shl-int/lit8 v7, v7, 0x10

    int-to-long v7, v7

    and-long v4, v4, v25

    goto :goto_16

    :pswitch_20
    shl-int/lit8 v7, v7, 0x8

    int-to-long v7, v7

    and-long v4, v4, v27

    :goto_16
    add-long/2addr v4, v7

    goto :goto_17

    :pswitch_21
    int-to-long v4, v7

    :goto_17
    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_1a
    :goto_18
    iput v2, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    move-wide/from16 v4, v32

    :cond_1b
    cmp-long v2, v4, v32

    if-eqz v2, :cond_1c

    return-wide v4

    :cond_1c
    move/from16 v2, v29

    const-wide v30, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_19
    iget v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ge v2, v3, :cond_1d

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v1, v3

    int-to-long v3, v3

    xor-long v3, v30, v3

    const-wide v5, 0x100000001b3L

    mul-long v30, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_1d
    move-wide/from16 v0, v30

    :goto_1a
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public readZonedDateTime()Ljava/time/ZonedDateTime;
    .locals 11

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x56

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    aget-byte v5, v0, v3

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v7, v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v8, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v9, v0, v2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v10

    invoke-static/range {v4 .. v10}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readValueHashCode()J

    move-result-wide v1

    const-wide v3, -0x42a0403329fb87bfL    # -4.511835427849096E-13

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/alibaba/fastjson2/util/DateUtils;->SHANGHAI_ZONE_ID:Ljava/time/ZoneId;

    invoke-static {v1, p0}, Lcom/alibaba/fastjson2/util/DateUtils;->getZoneId(Ljava/lang/String;Ljava/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/g;->P0(I)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public final readZonedDateTimeX(I)Ljava/time/ZonedDateTime;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v2, v0, v1

    iput-byte v2, p0, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v3, 0x49

    if-lt v2, v3, :cond_1

    const/16 v3, 0x78

    if-gt v2, v3, :cond_1

    const/16 v2, 0x13

    if-lt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->o:Ljava/time/ZoneId;

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime([BIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-object v0

    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal LocalDateTime string : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "date only support string input"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset(Lcom/alibaba/fastjson2/JSONReader$SavePoint;)V
    .locals 1

    iget v0, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget p1, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->current:I

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/alibaba/fastjson2/g;->y:B

    return-void
.end method

.method public final s0()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readString not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/alibaba/fastjson2/g;->J:B

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipComment()V
    .locals 1

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skipName()Z
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/4 v3, 0x1

    const/16 v4, 0x49

    if-lt v1, v4, :cond_0

    const/16 v5, 0x78

    if-gt v1, v5, :cond_0

    sub-int/2addr v1, v4

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v3

    :cond_0
    const/16 v4, 0x79

    if-eq v1, v4, :cond_4

    const/16 v4, 0x7a

    if-eq v1, v4, :cond_4

    const/16 v4, 0x7b

    if-eq v1, v4, :cond_4

    const/16 v4, 0x7c

    if-eq v1, v4, :cond_4

    const/16 v4, 0x7d

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x7f

    if-ne v1, v4, :cond_3

    aget-byte v0, v0, v2

    const/16 v1, -0x10

    if-lt v0, v1, :cond_2

    const/16 v1, 0x48

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    return v3

    :cond_3
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/g;->z:I

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v3
.end method

.method public skipValue()V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_13

    const/16 v1, 0x49

    if-eq v0, v1, :cond_12

    packed-switch v0, :pswitch_data_0

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    const/16 v4, -0x10

    if-lt v0, v4, :cond_0

    const/16 v4, 0x2f

    if-gt v0, v4, :cond_0

    return-void

    :cond_0
    const/16 v4, -0x28

    if-lt v0, v4, :cond_1

    const/16 v4, -0x11

    if-gt v0, v4, :cond_1

    return-void

    :cond_1
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x3f

    if-gt v0, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_2
    const/16 v4, 0x40

    if-lt v0, v4, :cond_3

    const/16 v4, 0x47

    if-gt v0, v4, :cond_3

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_3
    if-lt v0, v1, :cond_4

    const/16 v4, 0x78

    if-gt v0, v4, :cond_4

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_4
    const/16 v1, -0x38

    if-lt v0, v1, :cond_5

    const/16 v1, -0x29

    if-gt v0, v1, :cond_5

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_5
    const/16 v1, -0x40

    if-lt v0, v1, :cond_6

    const/16 v1, -0x39

    if-gt v0, v1, :cond_6

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_6
    const/16 v1, -0x6c

    if-lt v0, v1, :cond_b

    const/16 v2, -0x5c

    if-gt v0, v2, :cond_b

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    goto :goto_0

    :cond_7
    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_a

    sget-object v2, Lcom/alibaba/fastjson2/g;->B0:[B

    iget-object v4, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v2, v4

    if-lez v2, :cond_8

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_2

    :cond_8
    if-ne v2, v3, :cond_9

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v2

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->skipValue()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :pswitch_2
    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    return-void

    :pswitch_7
    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :pswitch_8
    add-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    return-void

    :pswitch_9
    add-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    return-void

    :pswitch_a
    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    return-void

    :goto_3
    :pswitch_b
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x5b

    if-ne v0, v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :cond_c
    sget-object v2, Lcom/alibaba/fastjson2/g;->B0:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    if-lez v0, :cond_d

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_4

    :cond_d
    if-ne v0, v3, :cond_e

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->skipName()Z

    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v2, v0

    if-lez v0, :cond_f

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_3

    :cond_f
    if-ne v0, v3, :cond_10

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->skipValue()V

    goto :goto_3

    :pswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->isString()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->skipName()Z

    return-void

    :cond_11
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readTypeHashCode()J

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->skipValue()V

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :cond_12
    :pswitch_f
    return-void

    :cond_13
    :pswitch_10
    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return-void

    :pswitch_data_0
    .packed-switch -0x6f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5a
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x56
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x51
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x4c
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x79
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startArray()I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/g;->y:B

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v1, -0x6c

    if-lt v0, v1, :cond_1

    const/16 v2, -0x5d

    if-gt v0, v2, :cond_1

    neg-int v2, v0

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    sub-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v1, -0x6f

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    return p0

    :cond_2
    const/16 v1, -0x5c

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    return p0

    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array not support input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/g;->n0(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final u0(B)Ljava/math/BigInteger;
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    const/16 v1, -0x6f

    if-eq p1, v1, :cond_12

    const/16 v1, -0x47

    if-eq p1, v1, :cond_10

    const/16 v1, 0x48

    if-eq p1, v1, :cond_f

    const/16 v1, 0x7c

    const/4 v2, -0x1

    const/16 v3, 0x2e

    if-eq p1, v1, :cond_d

    const/16 v1, 0x79

    if-eq p1, v1, :cond_b

    const/16 v1, 0x7a

    if-eq p1, v1, :cond_9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 v1, -0x10

    if-lt p1, v1, :cond_0

    const/16 v1, 0x2f

    if-gt p1, v1, :cond_0

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x3f

    if-gt p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x38

    shl-int/lit8 p1, p1, 0x8

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x40

    if-lt p1, v1, :cond_2

    const/16 v1, 0x47

    if-gt p1, v1, :cond_2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, -0x28

    if-lt p1, v1, :cond_3

    const/16 v2, -0x11

    if-gt p1, v2, :cond_3

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x8

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v1, -0x38

    if-lt p1, v1, :cond_4

    const/16 v1, -0x29

    if-gt p1, v1, :cond_4

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v1, -0x40

    if-lt p1, v1, :cond_5

    const/16 v1, -0x39

    if-gt p1, v1, :cond_5

    add-int/lit8 p1, p1, 0x3c

    shl-int/lit8 p1, p1, 0x10

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v0, 0x49

    if-lt p1, v0, :cond_6

    const/16 v1, 0x78

    if-gt p1, v1, :cond_6

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_6
    invoke-static {p1}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, p1

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, v1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-float p0, p0

    float-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide p0

    long-to-double p0, p0

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0

    :pswitch_8
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :pswitch_9
    const/4 p0, 0x0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    new-instance v1, Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v2, :cond_a

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_a
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    new-instance v1, Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v2, :cond_c

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_c
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    new-instance v1, Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v2, :cond_e

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_f
    :pswitch_a
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    if-nez p1, :cond_11

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_2

    :cond_11
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, v0

    :goto_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final v0(B)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/alibaba/fastjson2/g;->v:[B

    const/16 v3, -0x51

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_1a

    const/16 v3, 0x4a

    const-string v7, "not support input "

    const/16 v12, 0x75

    const/16 v13, 0x59

    const/16 v6, 0x72

    const/16 v9, 0x66

    const/16 v11, 0x74

    const/16 v15, 0x45

    const/16 v8, 0x4e

    const/16 v10, 0x65

    const/4 v14, 0x4

    if-eq v1, v3, :cond_c

    if-eqz v1, :cond_b

    if-eq v1, v5, :cond_a

    const/16 v3, 0x4d

    if-eq v1, v3, :cond_e

    if-eq v1, v8, :cond_10

    packed-switch v1, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v3

    iput v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    new-array v6, v3, [B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v2, v8, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    const/16 v2, 0x7c

    if-ne v1, v2, :cond_1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move v14, v1

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x7

    goto :goto_2

    :sswitch_1
    const-string v0, "FALSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x6

    goto :goto_2

    :sswitch_2
    const-string v0, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v14, 0x5

    goto :goto_2

    :sswitch_3
    const-string v0, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :sswitch_4
    const-string v0, "Y"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x3

    goto :goto_2

    :sswitch_5
    const-string v0, "N"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v14, 0x2

    goto :goto_2

    :sswitch_6
    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move v14, v5

    goto :goto_2

    :sswitch_7
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    move v14, v4

    :cond_9
    :goto_2
    packed-switch v14, :pswitch_data_1

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return v5

    :pswitch_2
    return v4

    :cond_a
    return v5

    :cond_b
    return v4

    :cond_c
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v2, v1

    const/16 v4, 0x31

    if-eq v3, v4, :cond_19

    if-ne v3, v13, :cond_d

    goto/16 :goto_5

    :cond_d
    const/16 v4, 0x30

    if-eq v3, v4, :cond_18

    if-ne v3, v8, :cond_e

    goto/16 :goto_4

    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v2, v1

    if-ne v3, v11, :cond_f

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    if-ne v4, v6, :cond_f

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v2, v4

    if-ne v4, v12, :cond_f

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v2, v4

    if-ne v4, v10, :cond_f

    add-int/2addr v1, v14

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v5

    :cond_f
    const/16 v4, 0x54

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v2, v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v2, v3

    if-ne v3, v15, :cond_10

    add-int/2addr v1, v14

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v5

    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v3, v2, v1

    if-ne v3, v9, :cond_11

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v9, 0x61

    if-ne v4, v9, :cond_11

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v2, v4

    const/16 v9, 0x6c

    if-ne v4, v9, :cond_11

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v2, v4

    const/16 v9, 0x73

    if-ne v4, v9, :cond_11

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v2, v4

    if-ne v4, v10, :cond_11

    const/4 v4, 0x5

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    :goto_3
    const/4 v0, 0x0

    return v0

    :cond_11
    const/16 v4, 0x46

    if-ne v3, v4, :cond_12

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    const/16 v4, 0x41

    if-ne v3, v4, :cond_12

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v2, v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_12

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v2, v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_12

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, v2, v3

    if-ne v3, v15, :cond_12

    const/4 v3, 0x5

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto :goto_3

    :cond_12
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/g;->F0()I

    move-result v1

    iput v1, v0, Lcom/alibaba/fastjson2/g;->z:I

    if-ne v1, v5, :cond_14

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v4, v2, v3

    if-ne v4, v13, :cond_13

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v5

    :cond_13
    if-ne v4, v8, :cond_17

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v5

    :cond_14
    if-ne v1, v14, :cond_15

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v4, v2, v3

    if-ne v4, v11, :cond_15

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    if-ne v4, v6, :cond_15

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    if-ne v4, v12, :cond_15

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v2, v4

    if-ne v4, v10, :cond_15

    add-int/2addr v3, v14

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v5

    :cond_15
    const/4 v3, 0x5

    if-ne v1, v3, :cond_17

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v4, v2, v3

    const/16 v5, 0x66

    if-ne v4, v5, :cond_16

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x61

    if-ne v5, v6, :cond_16

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_16

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x73

    if-ne v5, v6, :cond_16

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v10, :cond_16

    const/4 v5, 0x5

    add-int/2addr v3, v5

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto/16 :goto_3

    :cond_16
    const/16 v5, 0x46

    if-ne v4, v5, :cond_17

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    const/16 v5, 0x41

    if-ne v4, v5, :cond_17

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_17

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v2, v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_17

    add-int/lit8 v4, v3, 0x4

    aget-byte v4, v2, v4

    if-ne v4, v15, :cond_17

    const/4 v4, 0x5

    add-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto/16 :goto_3

    :cond_17
    new-instance v3, Ljava/lang/String;

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    iget v2, v0, Lcom/alibaba/fastjson2/g;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_4
    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    goto/16 :goto_3

    :cond_19
    :goto_5
    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    return v5

    :cond_1a
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    goto/16 :goto_3

    :cond_1b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "long value not support input null"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_7
        0x31 -> :sswitch_6
        0x4e -> :sswitch_5
        0x59 -> :sswitch_4
        0x276d8e -> :sswitch_3
        0x36758e -> :sswitch_2
        0x3f92103 -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final w0(B)Ljava/math/BigDecimal;
    .locals 5

    const/16 v0, 0x48

    if-eq p1, v0, :cond_c

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_b

    const/16 v0, 0x79

    if-eq p1, v0, :cond_a

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 v0, -0x10

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2f

    if-gt p1, v0, :cond_0

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x38

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x40

    if-lt p1, v0, :cond_2

    const/16 v0, 0x47

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, -0x28

    if-lt p1, v0, :cond_3

    const/16 v1, -0x11

    if-gt p1, v1, :cond_3

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x8

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, -0x38

    if-lt p1, v0, :cond_4

    const/16 v0, -0x29

    if-gt p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v0, -0x40

    if-lt p1, v0, :cond_5

    const/16 v0, -0x39

    if-gt p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x3c

    shl-int/lit8 p1, p1, 0x10

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v0, 0x49

    if-lt p1, v0, :cond_6

    const/16 v1, 0x78

    if-gt p1, v1, :cond_6

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p1}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, p1, v0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, v1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-float p0, p0

    float-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide p0

    long-to-double p0, p0

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object p0

    :pswitch_9
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    :pswitch_a
    const/4 p0, 0x0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_c
    :pswitch_b
    iget-object p1, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result p1

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x45
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public final x0()D
    .locals 8

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x4a

    if-eq v1, v3, :cond_16

    const/16 v3, -0x49

    if-eq v1, v3, :cond_14

    const/16 v3, -0x47

    if-eq v1, v3, :cond_12

    const/16 v3, 0x48

    if-eq v1, v3, :cond_10

    const/16 v3, 0x7c

    const/4 v4, -0x1

    const/16 v5, 0x2e

    if-eq v1, v3, :cond_e

    const/16 v3, 0x79

    if-eq v1, v3, :cond_c

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_a

    const-wide/16 v6, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    int-to-double v0, v1

    return-wide v0

    :cond_0
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-double v0, v1

    return-wide v0

    :cond_1
    const/16 v3, 0x40

    if-lt v1, v3, :cond_2

    const/16 v3, 0x47

    if-gt v1, v3, :cond_2

    invoke-static {v0, v2, v1}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-double v0, v0

    return-wide v0

    :cond_2
    const/16 v3, -0x28

    if-lt v1, v3, :cond_3

    const/16 v6, -0x11

    if-gt v1, v6, :cond_3

    sub-int/2addr v1, v3

    int-to-long v0, v1

    const-wide/16 v2, -0x8

    add-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    :cond_3
    const/16 v3, -0x38

    if-lt v1, v3, :cond_4

    const/16 v3, -0x29

    if-gt v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x30

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-double v0, v1

    return-wide v0

    :cond_4
    const/16 v3, -0x40

    if-lt v1, v3, :cond_5

    const/16 v3, -0x39

    if-gt v1, v3, :cond_5

    add-int/lit8 v1, v1, 0x3c

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-double v0, v1

    return-wide v0

    :cond_5
    const/16 v0, 0x49

    if-lt v1, v0, :cond_7

    const/16 v3, 0x78

    if-gt v1, v3, :cond_7

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v4, :cond_6

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_7
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :pswitch_0
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    long-to-double v0, v0

    return-wide v0

    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    int-to-double v0, p0

    return-wide v0

    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-double v0, v1

    return-wide v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :pswitch_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :pswitch_5
    return-wide v6

    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-wide v6

    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "long value not support input null"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v4, :cond_b

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_b
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v4, :cond_d

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_d
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v4, :cond_f

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_f
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_10
    :pswitch_7
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_11

    int-to-double v0, v0

    goto :goto_1

    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    int-to-double v0, p0

    :goto_1
    return-wide v0

    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    if-nez v0, :cond_13

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_2

    :cond_13
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_14
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_15

    goto :goto_3

    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-double v0, p0

    return-wide v0

    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-float p0, p0

    float-to-double v0, p0

    return-wide v0

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public y0()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fieldName not support input type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/alibaba/fastjson2/g;->J:B

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/alibaba/fastjson2/g;->J:B

    const/16 v2, -0x6d

    if-ne v1, v2, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final z0()F
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->v:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x47

    if-eq v1, v3, :cond_12

    const/16 v3, 0x48

    if-eq v1, v3, :cond_11

    const/16 v3, 0x7c

    const/4 v4, -0x1

    const/16 v5, 0x2e

    if-eq v1, v3, :cond_f

    const/16 v3, 0x79

    if-eq v1, v3, :cond_d

    const/16 v3, 0x7a

    if-eq v1, v3, :cond_b

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    int-to-float p0, v1

    return p0

    :cond_0
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-float p0, v1

    return p0

    :cond_1
    const/16 v3, 0x40

    if-lt v1, v3, :cond_2

    const/16 v3, 0x47

    if-gt v1, v3, :cond_2

    invoke-static {v0, v2, v1}, Lcom/alibaba/fastjson2/g;->o0([BII)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-float p0, v0

    return p0

    :cond_2
    const/16 v3, -0x28

    if-lt v1, v3, :cond_3

    const/16 v6, -0x11

    if-gt v1, v6, :cond_3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x8

    int-to-float p0, v1

    return p0

    :cond_3
    const/16 v3, -0x38

    if-lt v1, v3, :cond_4

    const/16 v3, -0x29

    if-gt v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x30

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-float p0, v1

    return p0

    :cond_4
    const/16 v3, -0x40

    if-lt v1, v3, :cond_5

    const/16 v3, -0x39

    if-gt v1, v3, :cond_5

    add-int/lit8 v1, v1, 0x3c

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    int-to-float p0, v1

    return p0

    :cond_5
    const/16 v0, 0x49

    if-lt v1, v0, :cond_7

    const/16 v3, 0x78

    if-gt v1, v3, :cond_7

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson2/g;->p0(II)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v4, :cond_6

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_7
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->t0(B)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p0

    throw p0

    :pswitch_0
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    long-to-float p0, v0

    return p0

    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    aget-byte p0, v0, v2

    int-to-float p0, p0

    return p0

    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-float p0, v1

    return p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result p0

    int-to-float p0, p0

    return p0

    :pswitch_4
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-boolean p0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt64Value()J

    move-result-wide v0

    long-to-double v0, v0

    double-to-float p0, v0

    return p0

    :pswitch_6
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :pswitch_7
    return v3

    :pswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v3

    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "long value not support input null"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v4, :cond_c

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_c
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v4, :cond_e

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_e
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v4, :cond_10

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_10
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_11
    :pswitch_9
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->getInt([BI)I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    int-to-float p0, v0

    return p0

    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readInt32Value()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    if-nez v0, :cond_13

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_2

    :cond_13
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
