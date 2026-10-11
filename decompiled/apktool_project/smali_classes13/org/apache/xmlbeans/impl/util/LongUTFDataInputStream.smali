.class public Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream$IOCall;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic f(Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;I[B[I[I[I)B
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;->lambda$readLongUTF$0(I[B[I[I[I)B

    move-result p0

    return p0
.end method

.method private synthetic lambda$readLongUTF$0(I[B[I[I[I)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p5, v0

    add-int/lit8 v2, v1, 0x1

    if-gt v2, p1, :cond_1

    aget v2, p3, v0

    aget v3, p4, v0

    if-lt v2, v3, :cond_0

    array-length v2, p2

    sub-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aput p1, p4, v0

    invoke-virtual {p0, p2, v0, p1}, Ljava/io/DataInputStream;->readFully([BII)V

    aput v0, p3, v0

    :cond_0
    aget p0, p5, v0

    add-int/lit8 p0, p0, 0x1

    aput p0, p5, v0

    aget p0, p3, v0

    add-int/lit8 p1, p0, 0x1

    aput p1, p3, v0

    aget-byte p0, p2, p0

    return p0

    :cond_1
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "malformed input: partial character at end"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readUnsignedShortOrInt(Ljava/io/DataInputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const v1, 0xfffe

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public readLongUTF()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;->readUnsignedShortOrInt()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Lorg/apache/xmlbeans/impl/util/a;

    invoke-direct {v3, p0, v0, v2}, Lorg/apache/xmlbeans/impl/util/a;-><init>(Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;I[B)V

    const/4 p0, 0x0

    filled-new-array {p0}, [I

    move-result-object v2

    filled-new-array {p0}, [I

    move-result-object v4

    filled-new-array {p0}, [I

    move-result-object v5

    :goto_0
    aget v6, v2, p0

    if-ge v6, v0, :cond_2

    invoke-interface {v3, v4, v5, v2}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream$IOCall;->onebyte([I[I[I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v6, 0x4

    const/16 v8, 0x80

    const-string v9, "malformed input around byte "

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-interface {v3, v4, v5, v2}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream$IOCall;->onebyte([I[I[I)B

    move-result v7

    invoke-interface {v3, v4, v5, v2}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream$IOCall;->onebyte([I[I[I)B

    move-result v10

    and-int/lit16 v11, v7, 0xc0

    if-ne v11, v8, :cond_0

    and-int/lit16 v11, v10, 0xc0

    if-ne v11, v8, :cond_0

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    and-int/lit8 v7, v10, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-interface {v3, v4, v5, v2}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream$IOCall;->onebyte([I[I[I)B

    move-result v7

    and-int/lit16 v10, v7, 0xc0

    if-ne v10, v8, :cond_1

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readUnsignedShortOrInt()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;->readUnsignedShortOrInt(Ljava/io/DataInputStream;)I

    move-result p0

    return p0
.end method
