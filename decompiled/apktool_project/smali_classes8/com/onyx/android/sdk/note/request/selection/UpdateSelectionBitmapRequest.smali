.class public final Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateSelectionBitmapRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateSelectionBitmapRequest.kt\ncom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n344#2,3:119\n1855#3,2:122\n*S KotlinDebug\n*F\n+ 1 UpdateSelectionBitmapRequest.kt\ncom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest\n*L\n74#1:119,3\n76#1:122,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0012\u00a2\u0006\u0004\u00088\u00109J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R(\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u00103\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u00107\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010.\u001a\u0004\u00085\u00100\"\u0004\u00086\u00102\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "g",
        "f",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "h",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "",
        "i",
        "Ljava/util/List;",
        "shapeList",
        "",
        "j",
        "getRenderingShapeTypes",
        "()Ljava/util/List;",
        "setRenderingShapeTypes",
        "(Ljava/util/List;)V",
        "renderingShapeTypes",
        "",
        "k",
        "F",
        "getRenderingShapeMinScale",
        "()F",
        "setRenderingShapeMinScale",
        "(F)V",
        "renderingShapeMinScale",
        "Landroid/graphics/Bitmap;",
        "l",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "bitmap",
        "m",
        "Z",
        "getUpdateSelectionBitmap",
        "()Z",
        "setUpdateSelectionBitmap",
        "(Z)V",
        "updateSelectionBitmap",
        "n",
        "getClearRender",
        "setClearRender",
        "clearRender",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V",
        "sdk-note_overseasRelease"
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
        "SMAP\nUpdateSelectionBitmapRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateSelectionBitmapRequest.kt\ncom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n344#2,3:119\n1855#3,2:122\n*S KotlinDebug\n*F\n+ 1 UpdateSelectionBitmapRequest.kt\ncom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest\n*L\n74#1:119,3\n76#1:122,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:F

.field public l:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->i:Ljava/util/List;

    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->j:Ljava/util/List;

    const/high16 p1, 0x40600000    # 3.5f

    iput p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->m:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getBITMAP_SAFE_SIZE()Landroid/util/Size;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->fitSafeRect(Landroid/graphics/RectF;Landroid/util/Size;)F

    move-result v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v4, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v5, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getShapeShaderManager()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShowExcerptIndicator(Z)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->l:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateRect(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->i:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v5

    iget v6, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->k:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->j:Ljava/util/List;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-boolean v5, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->n:Z

    if-eqz v5, :cond_4

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->clearRender()V

    :cond_4
    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->underContent()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->clone(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->g(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->f(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-ne v5, v3, :cond_6

    sget-object v6, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->clone(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v6

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isColorOpaque(I)Z

    move-result v6

    const v7, 0x3f59999a    # 0.85f

    if-eqz v6, :cond_7

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v8

    invoke-virtual {v6, v8, v7, p1}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->getColorWithAlpha(IFZ)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    :cond_7
    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v6

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isColorOpaque(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v8

    invoke-virtual {v6, v8, v7, p1}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->getColorWithAlpha(IFZ)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    :cond_8
    if-eq v5, v3, :cond_9

    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    :cond_9
    invoke-interface {v5, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    goto/16 :goto_1

    :cond_a
    iget-boolean p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->m:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionRenderingShapes(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isColorOpaque(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isColorOpaque(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isMarkerPenShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isMarkerPenShape(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getClearRender()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->n:Z

    return p0
.end method

.method public final getRenderingShapeMinScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->k:F

    return p0
.end method

.method public final getRenderingShapeTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getUpdateSelectionBitmap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->m:Z

    return p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->l:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setClearRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->n:Z

    return-void
.end method

.method public final setRenderingShapeMinScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->k:F

    return-void
.end method

.method public final setRenderingShapeTypes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->j:Ljava/util/List;

    return-void
.end method

.method public final setUpdateSelectionBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->m:Z

    return-void
.end method
