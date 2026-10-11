.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawNoteShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawNoteShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,90:1\n1855#2,2:91\n344#3,3:93\n*S KotlinDebug\n*F\n+ 1 DrawNoteShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction\n*L\n56#1:91,2\n77#1:93,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0012\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Landroid/graphics/Bitmap;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "m",
        "Landroid/graphics/Paint;",
        "l",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "h",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Landroid/graphics/RectF;",
        "i",
        "Landroid/graphics/RectF;",
        "bitmapLimitRect",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;)V",
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
        "SMAP\nDrawNoteShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawNoteShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,90:1\n1855#2,2:91\n344#3,3:93\n*S KotlinDebug\n*F\n+ 1 DrawNoteShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction\n*L\n56#1:91,2\n77#1:93,3\n*E\n"
    }
.end annotation


# instance fields
.field public h:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapLimitRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public static final synthetic access$draw(Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->m(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Landroid/graphics/Paint;
    .locals 0

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/note/extension/PaintKt;->updateShapeDrawPaintStyle(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShape(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->resetTransformMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v2, 0x0

    int-to-float v3, v2

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, v3, v1

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5, v1, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->updatePoints()V

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->i:Landroid/graphics/RectF;

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->fitWithinRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->checkBitmapDecodeSize(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "createBitmap(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->l()Landroid/graphics/Paint;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updatePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setClipRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getShapeShaderManager()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    return-object v3
.end method
