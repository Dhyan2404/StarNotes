.class public final Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectOnScreenRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectOnScreenRequest.kt\ncom/onyx/android/sdk/reader/request/SelectOnScreenRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1#2:94\n1855#3,2:95\n1855#3,2:97\n*S KotlinDebug\n*F\n+ 1 SelectOnScreenRequest.kt\ncom/onyx/android/sdk/reader/request/SelectOnScreenRequest\n*L\n71#1:95,2\n74#1:97,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000c\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002R\u0017\u0010\u0011\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "",
        "pageScale",
        "g",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "selection",
        "h",
        "f",
        "Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;",
        "Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;",
        "args",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "getSelection",
        "()Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "setSelection",
        "(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V",
        "Companion",
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
        "SMAP\nSelectOnScreenRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectOnScreenRequest.kt\ncom/onyx/android/sdk/reader/request/SelectOnScreenRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1#2:94\n1855#3,2:95\n1855#3,2:97\n*S KotlinDebug\n*F\n+ 1 SelectOnScreenRequest.kt\ncom/onyx/android/sdk/reader/request/SelectOnScreenRequest\n*L\n71#1:95,2\n74#1:97,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBUG:Z


# instance fields
.field public final f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->Companion:Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 14
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getVirtualPageInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, p1, v3, v4, v3}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2, v4, v3}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    const/4 v9, 0x0

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getVirtualPageInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->contentNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getStartPointFInDocument()Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/PointFKt;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getEndPointFInDocument()Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/PointFKt;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    invoke-static {v2, v6}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    invoke-static {v2, v10}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->g(F)F

    move-result v11

    new-instance v12, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v8

    const/4 v5, 0x0

    move-object v2, v12

    move v3, v1

    move v4, v0

    move v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;-><init>(IFILandroid/graphics/PointF;FLcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    new-instance v13, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v8

    move-object v2, v13

    move v5, v9

    move-object v6, v10

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;-><init>(IFILandroid/graphics/PointF;FLcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->isSelectingWord()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;-><init>(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getHitTestManager()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;

    move-result-object p1

    invoke-interface {p1, v12, v13, v0}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;->selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->h(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    :cond_4
    iget-object p1, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0

    return-void
.end method

.method public final g(F)F
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getEnabledHitTestPadding()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/readercore/R$dimen;->select_text_hit_test_padding:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getArgs()Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    return-object p0
.end method

.method public final getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getVirtualPageInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->f:Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/SelectOnScreenArgs;->getVirtualPageInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->contentRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->charRectList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final setSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/SelectOnScreenRequest;->g:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    return-void
.end method
