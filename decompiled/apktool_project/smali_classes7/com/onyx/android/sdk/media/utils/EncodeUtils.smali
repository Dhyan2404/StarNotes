.class public final Lcom/onyx/android/sdk/media/utils/EncodeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0017\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008!\u0010\"J \u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u000c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u001e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u0016\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0002R\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/utils/EncodeUtils;",
        "",
        "Landroid/media/MediaFormat;",
        "mediaFormat",
        "",
        "data",
        "",
        "length",
        "",
        "addADTStoPacket",
        "sampleRate",
        "audioFormat",
        "getAudioBufferSize",
        "channels",
        "getAudioByteSizePerSec",
        "getBytesPerSample",
        "",
        "sData",
        "size",
        "short2byte",
        "bytes",
        "byte2Short",
        "calculateMaxAmplitude",
        "Lcom/onyx/android/sdk/media/config/FormatConfig;",
        "config",
        "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;",
        "getEncoderByMine",
        "a",
        "",
        "F",
        "BUFFER_SIZE_IN_SECONDS",
        "AAC_PACKET_HEAD_LEN",
        "I",
        "<init>",
        "()V",
        "sdk-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final AAC_PACKET_HEAD_LEN:I = 0x7

.field public static final INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:F = 0.2f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->INSTANCE:Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    const/16 p0, 0xb

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_5
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_6
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_7
    const/4 p0, 0x7

    goto :goto_0

    :sswitch_8
    const/16 p0, 0x8

    goto :goto_0

    :sswitch_9
    const/16 p0, 0x9

    goto :goto_0

    :sswitch_a
    const/16 p0, 0xa

    :goto_0
    :sswitch_b
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_b
        0x2b11 -> :sswitch_a
        0x2ee0 -> :sswitch_9
        0x3e80 -> :sswitch_8
        0x5622 -> :sswitch_7
        0x5dc0 -> :sswitch_6
        0x7d00 -> :sswitch_5
        0xac44 -> :sswitch_4
        0xbb80 -> :sswitch_3
        0xfa00 -> :sswitch_2
        0x15888 -> :sswitch_1
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public final addADTStoPacket(Landroid/media/MediaFormat;[BI)V
    .locals 3
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "aac-profile"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "sample-rate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->a(I)I

    move-result p0

    const-string v1, "channel-count"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, p2, v1

    const/16 v1, -0xf

    const/4 v2, 0x1

    aput-byte v1, p2, v2

    sub-int/2addr v0, v2

    const/4 v1, 0x6

    shl-int/2addr v0, v1

    const/4 v2, 0x2

    shl-int/2addr p0, v2

    add-int/2addr v0, p0

    shr-int/lit8 p0, p1, 0x2

    add-int/2addr v0, p0

    int-to-byte p0, v0

    aput-byte p0, p2, v2

    const/4 p0, 0x3

    and-int/2addr p1, p0

    shl-int/2addr p1, v1

    shr-int/lit8 v0, p3, 0xb

    add-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    and-int/lit16 p1, p3, 0x7ff

    shr-int/lit8 p0, p1, 0x3

    int-to-byte p0, p0

    const/4 p1, 0x4

    aput-byte p0, p2, p1

    and-int/lit8 p0, p3, 0x7

    const/4 p1, 0x5

    shl-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1f

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    const/4 p0, -0x4

    aput-byte p0, p2, v1

    return-void
.end method

.method public final byte2Short([B)[S
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "bytes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    div-int/lit8 p0, p0, 0x2

    new-array p0, p0, [S

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method public final calculateMaxAmplitude([B)I
    .locals 5
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget-byte v3, p1, v2

    mul-int/2addr v3, v3

    int-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p1

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final getAudioBufferSize(II)I
    .locals 1

    int-to-float p1, p1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->getBytesPerSample(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final getAudioByteSizePerSec(III)I
    .locals 0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/media/utils/EncodeUtils;->getBytesPerSample(I)I

    move-result p0

    mul-int/2addr p1, p0

    mul-int/2addr p1, p3

    return p1
.end method

.method public final getBytesPerSample(I)I
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final getEncoderByMine(Lcom/onyx/android/sdk/media/config/FormatConfig;)Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/media/config/FormatConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "config"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/media/config/FormatConfig;->getAudioMime()Ljava/lang/String;

    move-result-object p0

    const-string p1, "audio/mpeg"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final short2byte([SI)[B
    .locals 4
    .param p1    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "sData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    const/4 v0, 0x0

    if-le p2, p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/media/utils/EncodeUtils;

    const-string v2, "short2byte: too long short data array"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    mul-int/lit8 p0, p2, 0x2

    new-array p0, p0, [B

    :goto_0
    if-ge v0, p2, :cond_1

    mul-int/lit8 v1, v0, 0x2

    aget-short v2, p1, v0

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
