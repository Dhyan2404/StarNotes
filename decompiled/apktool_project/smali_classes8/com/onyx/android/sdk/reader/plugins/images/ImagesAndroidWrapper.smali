.class public final Lcom/onyx/android/sdk/reader/plugins/images/ImagesAndroidWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/plugins/images/ImagesWrapper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/images/ImagesAndroidWrapper;",
        "Lcom/onyx/android/sdk/reader/plugins/images/ImagesWrapper;",
        "",
        "path",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "imageSize",
        "imagePath",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "drawArgs",
        "",
        "drawImage",
        "",
        "closeAll",
        "Lcom/onyx/android/sdk/base/utils/ImageSizeManager;",
        "a",
        "Lcom/onyx/android/sdk/base/utils/ImageSizeManager;",
        "imageSizeManager",
        "<init>",
        "()V",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/base/utils/ImageSizeManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/utils/ImageSizeManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/ImageSizeManager;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/images/ImagesAndroidWrapper;->a:Lcom/onyx/android/sdk/base/utils/ImageSizeManager;

    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/images/ImagesAndroidWrapper;->a:Lcom/onyx/android/sdk/base/utils/ImageSizeManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ImageSizeManager;->clear()V

    return-void
.end method

.method public drawImage(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "imagePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "drawArgs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getScale()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/onyx/android/sdk/base/utils/ImageRender;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/utils/ImageRender;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/ImageRender;->drawImage(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public imageSize(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/Size;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/images/ImagesAndroidWrapper;->a:Lcom/onyx/android/sdk/base/utils/ImageSizeManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ImageSizeManager;->loadImageSize(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    return-object p0
.end method
