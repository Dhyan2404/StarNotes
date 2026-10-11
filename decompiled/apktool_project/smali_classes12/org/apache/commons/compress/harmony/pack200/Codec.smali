.class public abstract Lorg/apache/commons/compress/harmony/pack200/Codec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final CHAR3:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final SIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;


# instance fields
.field public lastBandLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v2, 0x100

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v2, 0x3

    const/16 v5, 0x80

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->CHAR3:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v4, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->SIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decode(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public abstract decode(Ljava/io/InputStream;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public decodeInts(ILjava/io/InputStream;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    .line 2
    new-array v1, p1, [I

    move v2, v0

    :goto_0
    if-ge v0, p1, :cond_0

    int-to-long v2, v2

    .line 3
    invoke-virtual {p0, p2, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public decodeInts(ILjava/io/InputStream;I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 4
    new-array v1, p1, [I

    const/4 v2, 0x0

    .line 5
    aput p3, v1, v2

    :goto_0
    if-ge v0, p1, :cond_0

    int-to-long v2, p3

    .line 6
    invoke-virtual {p0, p2, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result p3

    aput p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public abstract encode(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public abstract encode(II)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public encode([I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1
    array-length v0, p1

    new-array v1, v0, [[B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 3
    aget v5, p1, v3

    if-lez v3, :cond_0

    add-int/lit8 v6, v3, -0x1

    aget v6, p1, v6

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/compress/harmony/pack200/Codec;->encode(II)[B

    move-result-object v5

    aput-object v5, v1, v3

    .line 4
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-array p0, v4, [B

    move p1, v2

    move v3, p1

    :goto_2
    if-ge p1, v0, :cond_2

    .line 6
    aget-object v4, v1, p1

    .line 7
    array-length v5, v4

    invoke-static {v4, v2, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method
