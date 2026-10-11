.class public final Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitTestDocLinkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitTestDocLinkRequest.kt\ncom/onyx/android/sdk/reader/request/HitTestDocLinkRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n378#2,7:38\n*S KotlinDebug\n*F\n+ 1 HitTestDocLinkRequest.kt\ncom/onyx/android/sdk/reader/request/HitTestDocLinkRequest\n*L\n33#1:38,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;",
        "f",
        "Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;",
        "args",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "g",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "getLinkTargetSelection",
        "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "setLinkTargetSelection",
        "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V",
        "linkTargetSelection",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;)V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHitTestDocLinkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitTestDocLinkRequest.kt\ncom/onyx/android/sdk/reader/request/HitTestDocLinkRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n378#2,7:38\n*S KotlinDebug\n*F\n+ 1 HitTestDocLinkRequest.kt\ncom/onyx/android/sdk/reader/request/HitTestDocLinkRequest\n*L\n33#1:38,7\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->f:Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->f:Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->f:Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v3, v2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->f:Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->contentNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->f:Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getLinks(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-interface {v5}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    :goto_0
    if-ltz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    move-object v2, v1

    :cond_6
    check-cast v2, Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->f:Lcom/onyx/android/sdk/reader/data/HitTestDocLinkArgs;

    return-object p0
.end method

.method public final getLinkTargetSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-object p0
.end method

.method public final setLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-void
.end method
