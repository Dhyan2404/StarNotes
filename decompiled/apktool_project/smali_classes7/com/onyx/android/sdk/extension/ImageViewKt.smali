.class public final Lcom/onyx/android/sdk/extension/ImageViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "bitmapViewTarget",
        "Lcom/bumptech/glide/request/target/BitmapImageViewTarget;",
        "Landroid/widget/ImageView;",
        "drawableViewTarget",
        "Lcom/bumptech/glide/request/target/DrawableImageViewTarget;",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final bitmapViewTarget(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
    .locals 1
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/extension/ImageViewKt$bitmapViewTarget$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/extension/ImageViewKt$bitmapViewTarget$1;-><init>(Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public static final drawableViewTarget(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
    .locals 1
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/extension/ImageViewKt$drawableViewTarget$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/extension/ImageViewKt$drawableViewTarget$1;-><init>(Landroid/widget/ImageView;)V

    return-object v0
.end method
