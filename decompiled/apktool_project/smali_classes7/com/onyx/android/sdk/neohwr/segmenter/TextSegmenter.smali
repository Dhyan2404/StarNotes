.class public final Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0082 \u00a2\u0006\u0002\u0010\nJ$\u0010\u000b\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0082 \u00a2\u0006\u0002\u0010\rJ!\u0010\u000e\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ!\u0010\u000f\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;",
        "",
        "()V",
        "nativeSegment",
        "",
        "shapes",
        "",
        "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;",
        "result",
        "Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;",
        "([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z",
        "nativeSegmentTextShapes",
        "Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;",
        "([Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z",
        "segment",
        "segmentTextShapes",
        "sdk-neohwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;->INSTANCE:Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;

    const-string v0, "neo_hwr_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native nativeSegment([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z
.end method

.method private final native nativeSegmentTextShapes([Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z
.end method


# virtual methods
.method public final segment([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z
    .locals 1
    .param p1    # [Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;->nativeSegment([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z

    move-result p0

    return p0
.end method

.method public final segmentTextShapes([Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z
    .locals 1
    .param p1    # [Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;->nativeSegmentTextShapes([Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z

    move-result p0

    return p0
.end method
