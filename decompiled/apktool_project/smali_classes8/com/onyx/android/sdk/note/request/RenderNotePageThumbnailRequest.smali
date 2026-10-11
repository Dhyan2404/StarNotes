.class public final Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderNotePageThumbnailRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageThumbnailRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n344#2,3:148\n766#3:151\n857#3,2:152\n1855#3,2:155\n1#4:154\n*S KotlinDebug\n*F\n+ 1 RenderNotePageThumbnailRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest\n*L\n57#1:148,3\n73#1:151\n73#1:152,2\n107#1:155,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u001a\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u0010\u001a\u00020\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0014\u0010\u0016\u001a\u00020\u0004*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0014H\u0002J$\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "",
        "j",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "l",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapeList",
        "m",
        "Landroid/graphics/Paint;",
        "g",
        "Landroid/graphics/Matrix;",
        "Landroid/graphics/RectF;",
        "displayRectF",
        "n",
        "i",
        "shapes",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;)V",
        "args",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;)V",
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
        "SMAP\nRenderNotePageThumbnailRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageThumbnailRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n344#2,3:148\n766#3:151\n857#3,2:152\n1855#3,2:155\n1#4:154\n*S KotlinDebug\n*F\n+ 1 RenderNotePageThumbnailRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest\n*L\n57#1:148,3\n73#1:151\n73#1:152,2\n107#1:155,2\n*E\n"
    }
.end annotation


# instance fields
.field public g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->j(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    return-void
.end method

.method public final g()Landroid/graphics/Paint;
    .locals 0

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/note/extension/PaintKt;->updateShapeDrawPaintStyle(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getRenderOutOfPageShape()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->filterInPageRectShapeList(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getDisplayRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->i()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getClipRectFOrBitmapBoundingRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g()Landroid/graphics/Paint;

    move-result-object v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getShapeShaderManager()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setClipRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updatePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getRotationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->n(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getShowExcerptIndicator()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShowExcerptIndicator(Z)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->l(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->getRenderShapeList(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getRenderReferenceShape()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v5, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getShowTape()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$render$2;->INSTANCE:Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$render$2;

    new-instance v2, Lcom/sunia/HTREnginev2/nkl;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/nkl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v0, p1, v4, v2, v4}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->ensureInitReferenceShape$default(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v3}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->m(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return v1
.end method

.method public final l(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getRenderPageMarin()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->hasMargin()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->getPageMarginTemplateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;->loadFromFileOrDefault(Ljava/io/File;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->rotate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)Landroid/graphics/Matrix;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->rotate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-object p0, v0

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setContentRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->draw$default(Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;Landroid/graphics/Canvas;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final m(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            ")V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getLayerId()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getLayerId()I

    move-result v1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getLayerId()I

    move-result v1

    if-gez v1, :cond_1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->isLayerVisibleById(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getRenderedShapeIds()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;

    invoke-direct {v2, p2, p0, v1}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;Ljava/lang/String;)V

    invoke-static {v0, v4, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->runCatching(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final n(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getScale()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getScale()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final setArgs(Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    return-void
.end method
