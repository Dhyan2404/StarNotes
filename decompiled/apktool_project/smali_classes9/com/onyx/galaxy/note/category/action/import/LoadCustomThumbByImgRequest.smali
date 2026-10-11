.class public final Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002R\u0017\u0010\n\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR$\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "execute",
        "Landroid/graphics/Bitmap;",
        "a",
        "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "args",
        "b",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "bitmap",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->a:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->a:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->a:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->a:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->a:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->a:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->a:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadCustomThumbByImgRequest;->b:Landroid/graphics/Bitmap;

    return-void
.end method
