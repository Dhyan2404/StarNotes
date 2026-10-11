.class public final Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JB\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\u0006\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;",
        "",
        "()V",
        "MEDIA_TYPE_AUDIO",
        "",
        "MEDIA_TYPE_NONE",
        "addToList",
        "",
        "list",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;",
        "mediaType",
        "objId",
        "",
        "fileName",
        "rect",
        "",
        "data",
        "",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addToList(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;[F[B)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[F[B)V"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rect"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;-><init>()V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->access$setMediaType$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;I)V

    invoke-static {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->access$setObjId$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;Ljava/lang/String;)V

    invoke-static {p0, p4}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->access$setName$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/RectF;

    const/4 p3, 0x0

    aget p3, p5, p3

    const/4 p4, 0x1

    aget p4, p5, p4

    const/4 v0, 0x2

    aget v0, p5, v0

    const/4 v1, 0x3

    aget p5, p5, v1

    invoke-direct {p2, p3, p4, v0, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->access$setRect$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;Landroid/graphics/RectF;)V

    invoke-static {p0, p6}, Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;->access$setData$p(Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;[B)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
