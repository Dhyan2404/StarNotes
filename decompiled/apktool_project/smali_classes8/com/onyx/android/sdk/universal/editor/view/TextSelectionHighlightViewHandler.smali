.class public final Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextSelectionHighlightViewHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextSelectionHighlightViewHandler.kt\ncom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 5 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,238:1\n2634#2:239\n1855#2,2:249\n2634#2:255\n1#3:240\n1#3:256\n121#4,8:241\n92#5,4:251\n*S KotlinDebug\n*F\n+ 1 TextSelectionHighlightViewHandler.kt\ncom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler\n*L\n63#1:239\n75#1:249,2\n109#1:255\n63#1:240\n109#1:256\n66#1:241,8\n87#1:251,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 52\u00020\u0001:\u00015B\u0007\u00a2\u0006\u0004\u00083\u00104J\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J$\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eJ$\u0010\u0014\u001a\u00020\u00132\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0015\u001a\u00020\u0002J&\u0010\u0016\u001a\u00020\u00132\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J0\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0019H\u0002J\u0008\u0010\u001e\u001a\u00020\u0019H\u0002J\u0008\u0010\u001f\u001a\u00020\u0019H\u0002J\u0008\u0010 \u001a\u00020\u0013H\u0002J\u0008\u0010!\u001a\u00020\u0013H\u0002J&\u0010\"\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J&\u0010#\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u001e\u0010$\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u001e\u0010%\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010(\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010*\u001a\u00020)2\u0006\u0010&\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010,\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010-\u001a\u00020)2\u0006\u0010+\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010/R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010/R\u0016\u00102\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010/\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;",
        "",
        "",
        "initPaint",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "selection",
        "drawHighlight",
        "",
        "Landroid/graphics/RectF;",
        "rectangles",
        "",
        "isVertical",
        "currentSelectionRectList",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "",
        "hitTestCursor",
        "onThemeUpdated",
        "n",
        "startHitTestRect",
        "endHitTestRect",
        "",
        "x",
        "y",
        "hitTestPadding",
        "m",
        "i",
        "j",
        "k",
        "l",
        "h",
        "g",
        "e",
        "b",
        "first",
        "lineWidth",
        "f",
        "Landroid/graphics/PointF;",
        "d",
        "last",
        "c",
        "a",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "cursorCirclePaint",
        "cursorLinePaint",
        "fillPaint",
        "<init>",
        "()V",
        "Companion",
        "sdk-universal_overseasRelease"
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
        "SMAP\nTextSelectionHighlightViewHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextSelectionHighlightViewHandler.kt\ncom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 5 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,238:1\n2634#2:239\n1855#2,2:249\n2634#2:255\n1#3:240\n1#3:256\n121#4,8:241\n92#5,4:251\n*S KotlinDebug\n*F\n+ 1 TextSelectionHighlightViewHandler.kt\ncom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler\n*L\n63#1:239\n75#1:249,2\n109#1:255\n63#1:240\n109#1:256\n66#1:241,8\n87#1:251,4\n*E\n"
    }
.end annotation


# static fields
.field public static final BEGIN_CURSOR_INDEX:I = 0x0

.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final END_CURSOR_INDEX:I = 0x1

.field public static final INVALID_INDEX:I = -0x1


# instance fields
.field public a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->Companion:Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;FZ)Landroid/graphics/PointF;
    .locals 1

    const/4 p0, 0x2

    if-eqz p3, :cond_0

    new-instance p3, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    int-to-float p0, p0

    div-float p0, p2, p0

    add-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, p2

    invoke-direct {p3, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/RectF;->right:F

    int-to-float p0, p0

    div-float p0, p2, p0

    add-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, p2

    invoke-direct {p3, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object p3
.end method

.method public final b(Ljava/util/List;Z)Landroid/graphics/RectF;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;Z)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->i()F

    move-result v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v1, p2}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->c(Landroid/graphics/RectF;FZ)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, p1, v1, p2}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->a(Landroid/graphics/RectF;FZ)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/PointFKt;->toRect(Landroid/graphics/PointF;F)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionOrCopy(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroid/graphics/RectF;FZ)Landroid/graphics/RectF;
    .locals 1

    if-eqz p3, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v0

    invoke-direct {p0, p3, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    iget p3, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p3, v0, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    return-object p0
.end method

.method public final d(Landroid/graphics/RectF;FZ)Landroid/graphics/PointF;
    .locals 1

    const/4 p0, 0x2

    if-eqz p3, :cond_0

    new-instance p3, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/RectF;->right:F

    int-to-float p0, p0

    div-float p0, p2, p0

    sub-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p2

    invoke-direct {p3, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    int-to-float p0, p0

    div-float p0, p2, p0

    sub-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p2

    invoke-direct {p3, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object p3
.end method

.method public final drawHighlight(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->getUnRotatedMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 2
    invoke-interface {p3}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 6
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 8
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 9
    :try_start_0
    invoke-interface {p3}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->writingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/reader/api/ReaderWritingModeKt;->isVertical(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->drawHighlight(Landroid/graphics/Canvas;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final drawHighlight(Landroid/graphics/Canvas;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectangles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 14
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->h(Landroid/graphics/Canvas;Ljava/util/List;Z)V

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->g(Landroid/graphics/Canvas;Ljava/util/List;Z)V

    return-void
.end method

.method public final e(Ljava/util/List;Z)Landroid/graphics/RectF;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;Z)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->i()F

    move-result v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v1, p2}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->f(Landroid/graphics/RectF;FZ)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, p1, v1, p2}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->d(Landroid/graphics/RectF;FZ)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/PointFKt;->toRect(Landroid/graphics/PointF;F)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionOrCopy(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final f(Landroid/graphics/RectF;FZ)Landroid/graphics/RectF;
    .locals 1

    if-eqz p3, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float p2, v0, p2

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, p3, p2, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    sub-float p2, p3, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p2, v0, p3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    return-object p0
.end method

.method public final g(Landroid/graphics/Canvas;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->i()F

    move-result v1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v1, p3}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->c(Landroid/graphics/RectF;FZ)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, p2, v1, p3}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->a(Landroid/graphics/RectF;FZ)Landroid/graphics/PointF;

    move-result-object p2

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final h(Landroid/graphics/Canvas;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->i()F

    move-result v1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    invoke-virtual {p0, p2, v1, p3}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->f(Landroid/graphics/RectF;FZ)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, p2, v1, p3}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->d(Landroid/graphics/RectF;FZ)Landroid/graphics/PointF;

    move-result-object p2

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final hitTestCursor(Ljava/util/List;ZLcom/onyx/android/sdk/geometry/data/TouchData;)I
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;Z",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ")I"
        }
    .end annotation

    const-string v0, "currentSelectionRectList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->n(Ljava/util/List;ZLcom/onyx/android/sdk/geometry/data/TouchData;)I

    move-result p1

    sget-object p3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isVertical = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " hitTestCursor = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method public final i()F
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/universal/R$dimen;->text_selection_cursor_line_width:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final initPaint()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->i()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final j()F
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/universal/R$dimen;->text_selection_cursor_radius:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final k()I
    .locals 3

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$fraction;->text_selection_color_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->getColorWithAlpha(IFZ)I

    move-result p0

    return p0
.end method

.method public final l()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    return p0
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)I
    .locals 0

    invoke-static {p1, p3, p4, p5}, Lcom/onyx/android/sdk/base/extension/RectKt;->hitTest(Landroid/graphics/RectF;FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/onyx/android/sdk/base/extension/RectKt;->hitTest(Landroid/graphics/RectF;FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final n(Ljava/util/List;ZLcom/onyx/android/sdk/geometry/data/TouchData;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;Z",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    iput-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p3

    if-eqz p3, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v2, p3}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->contentNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    invoke-static {p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_1
    iput-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p3

    invoke-virtual {p3, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->mapMatrix(Landroid/graphics/Matrix;)V

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_2
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p3

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/universal/R$dimen;->text_selection_cursor_hit_test_padding:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v8

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->e(Ljava/util/List;Z)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->b(Ljava/util/List;Z)Landroid/graphics/RectF;

    move-result-object p2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move-object v4, p2

    move v5, p3

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->m(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)I

    move-result v0

    if-eq v0, v1, :cond_3

    return v0

    :cond_3
    move-object v2, p0

    move-object v3, v9

    move-object v4, p2

    move v5, p3

    move v6, p1

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->m(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)I

    move-result p0

    return p0
.end method

.method public final onThemeUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->initPaint()V

    return-void
.end method
