.class public final Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;",
        "",
        "()V",
        "close",
        "",
        "drawGeoLayout",
        "",
        "drawArgs",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "layout",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "pluginOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "sdk-readercore_overseasRelease"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final drawGeoLayout(Lcom/onyx/android/sdk/reader/api/DrawArgs;Lcom/onyx/android/sdk/genericshape/GeoLayout;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)Z
    .locals 17
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p2

    const-string v1, "drawArgs"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pluginOptions"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getRotation()I

    move-result v1

    int-to-float v1, v1

    neg-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotated$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getRotation()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object v9

    new-instance v8, Landroid/graphics/Canvas;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/onyx/android/sdk/genericshape/DrawContext;

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;->getResDirs()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/api/DrawArgs;->getRotation()I

    move-result v2

    int-to-float v14, v2

    const/16 v15, 0x38

    const/16 v16, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lcom/onyx/android/sdk/genericshape/DrawContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->draw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V

    const/4 v0, 0x1

    return v0
.end method
