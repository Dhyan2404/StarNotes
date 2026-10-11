.class public final Lcom/onyx/android/sdk/media/lame/OnyxLame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/media/lame/OnyxLame$Companion;,
        Lcom/onyx/android/sdk/media/lame/OnyxLame$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0017\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 42\u00020\u0001:\u00014B\t\u0008\u0016\u00a2\u0006\u0004\u00081\u00102B\u0011\u0008\u0016\u0012\u0006\u0010+\u001a\u00020*\u00a2\u0006\u0004\u00081\u00103J\t\u0010\u0003\u001a\u00020\u0002H\u0082 J\u009b\u0001\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0082 J)\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0082 J!\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0082 J\u0011\u0010\"\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0082 J\t\u0010#\u001a\u00020\u0002H\u0082 J&\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dJ\u001e\u0010\'\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dJ\u000e\u0010(\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010)\u001a\u00020\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020-H\u0002J\u0010\u00100\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020/H\u0002\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/media/lame/OnyxLame;",
        "",
        "",
        "initializeDefault",
        "",
        "inSamplerate",
        "outChannel",
        "outSamplerate",
        "outBitrate",
        "",
        "scaleInput",
        "mode",
        "vbrMode",
        "quality",
        "vbrQuality",
        "abrMeanBitrate",
        "lowpassFreq",
        "highpassFreq",
        "",
        "id3tagTitle",
        "id3tagArtist",
        "id3tagAlbum",
        "id3tagYear",
        "id3tagComment",
        "initialize",
        "",
        "buffer_l",
        "buffer_r",
        "samples",
        "",
        "mp3buf",
        "lameEncode",
        "pcm",
        "encodeBufferInterleaved",
        "lameFlush",
        "lameClose",
        "bufferL",
        "bufferR",
        "encode",
        "encodeBufferInterLeaved",
        "flush",
        "close",
        "Lcom/onyx/android/sdk/media/lame/LameBuilder;",
        "builder",
        "c",
        "Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;",
        "a",
        "Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;",
        "b",
        "<init>",
        "()V",
        "(Lcom/onyx/android/sdk/media/lame/LameBuilder;)V",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/media/lame/OnyxLame$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/media/lame/OnyxLame$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/media/lame/OnyxLame$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/media/lame/OnyxLame;->Companion:Lcom/onyx/android/sdk/media/lame/OnyxLame$Companion;

    const-string v0, "onyx_lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->initializeDefault()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/media/lame/LameBuilder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/lame/LameBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->c(Lcom/onyx/android/sdk/media/lame/LameBuilder;)V

    return-void
.end method

.method private final native encodeBufferInterleaved([SI[B)I
.end method

.method private final native initialize(IIIIFIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native initializeDefault()V
.end method

.method private final native lameClose()V
.end method

.method private final native lameEncode([S[SI[B)I
.end method

.method private final native lameFlush([B)I
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;)I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/media/lame/OnyxLame$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method public final b(Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;)I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/media/lame/OnyxLame$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method public final c(Lcom/onyx/android/sdk/media/lame/LameBuilder;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getInSampleRate()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getOutChannel()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getOutSampleRate()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getOutBitrate()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getScaleInput()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getMode()Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->a(Lcom/onyx/android/sdk/media/lame/LameBuilder$Mode;)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getVbrMode()Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->b(Lcom/onyx/android/sdk/media/lame/LameBuilder$VbrMode;)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getQuality()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getVbrQuality()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getAbrMeanBitrate()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getLowpassFreq()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getHighpassFreq()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getId3tagTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getId3tagArtist()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getId3tagAlbum()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getId3tagYear()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/media/lame/LameBuilder;->getId3tagComment()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v0 .. v17}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->initialize(IIIIFIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->lameClose()V

    return-void
.end method

.method public final encode([S[SI[B)I
    .locals 1
    .param p1    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bufferL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferR"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mp3buf"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->lameEncode([S[SI[B)I

    move-result p0

    return p0
.end method

.method public final encodeBufferInterLeaved([SI[B)I
    .locals 1
    .param p1    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pcm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mp3buf"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->encodeBufferInterleaved([SI[B)I

    move-result p0

    return p0
.end method

.method public final flush([B)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mp3buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/media/lame/OnyxLame;->lameFlush([B)I

    move-result p0

    return p0
.end method
