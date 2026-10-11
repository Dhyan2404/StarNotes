.class public final Lcom/onyx/android/sdk/reader/extension/ReaderBundleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004\u001a\n\u0010\u0008\u001a\u00020\t*\u00020\u0002\u00a8\u0006\n"
    }
    d2 = {
        "isValidContentPage",
        "",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "path",
        "",
        "pageIndex",
        "",
        "pageId",
        "viewportRect",
        "Landroid/graphics/RectF;",
        "sdk-reader_overseasRelease"
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
.method public static final isValidContentPage(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;I)Z
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 7
    invoke-static {p0, p1, v2, v0, v2}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;->getPageOriginSize(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static final isValidContentPage(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 2
    invoke-static {p0, p1, v0, v2, v0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v3

    invoke-static {v3, p2, p1, v2, v0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;->getPageOriginSize(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static final viewportRect(Lcom/onyx/android/sdk/reader/ReaderBundle;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method
