.class public final Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u000e\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u0015\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "reader",
        "Landroid/graphics/Bitmap;",
        "f",
        "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "args",
        "g",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "bitmap",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f(Lcom/onyx/android/sdk/reader/Reader;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/reader/Reader;)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v2

    iget-object v3, v0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getPageIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v4

    const-class v5, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "size is empty"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v8, "createBitmap(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getClearBitmap()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    invoke-static {v4, v7, v8, v6}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clear$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v11

    iget-object v3, v0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v11}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->safeGetPageOriginSize(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "pageOriginSize is empty"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_3
    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v16

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v12

    new-instance v0, Lcom/onyx/android/sdk/reader/api/DrawArgs;

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x784

    const/16 v23, 0x0

    move-object v10, v0

    move-object/from16 v15, v16

    move-object/from16 v17, v4

    invoke-direct/range {v10 .. v23}, Lcom/onyx/android/sdk/reader/api/DrawArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;FILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->safeRender(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z

    return-object v4
.end method

.method public final getArgs()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->g:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->g:Landroid/graphics/Bitmap;

    return-void
.end method
