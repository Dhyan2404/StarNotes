.class public final Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuitTransformRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuitTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/QuitTransformRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n215#2,2:113\n1#3:115\n*S KotlinDebug\n*F\n+ 1 QuitTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/QuitTransformRequest\n*L\n51#1:113,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u00a2\u0006\u0004\u0008/\u00100J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002R\u0017\u0010\u0011\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0017\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R \u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001a\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\t0\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0017\u0010.\u001a\u00020)8\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "g",
        "f",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "getTransformBean",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "transformBean",
        "",
        "Landroid/graphics/Matrix;",
        "i",
        "Ljava/util/Map;",
        "matrixMap",
        "",
        "j",
        "Ljava/util/List;",
        "forceUpdateShapes",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "k",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "getCompositeCommand",
        "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "setCompositeCommand",
        "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V",
        "compositeCommand",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "l",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "getChangedShapeBean",
        "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "changedShapeBean",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V",
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
        "SMAP\nQuitTransformRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuitTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/QuitTransformRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n215#2,2:113\n1#3:115\n*S KotlinDebug\n*F\n+ 1 QuitTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/QuitTransformRequest\n*L\n51#1:113,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
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

.field public k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformBean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->h:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->i:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->j:Ljava/util/List;

    new-instance p1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->l:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->h:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->toPageShapeMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->ensureNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->sortShapeList()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->updateReferenceShapeRect(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->f()V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->clearSelectionRect()V

    return-void
.end method

.method public final f()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->j:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->j:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/TransformCommand;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->i:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/note/common/command/TransformCommand;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    :cond_2
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->h:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getForceUpdateOnQuit()Z

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->h:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapeMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->isEmpty(Landroid/graphics/Matrix;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->validateScaleLimit(Landroid/graphics/Matrix;)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-interface {v2, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->i:Ljava/util/Map;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->h:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getUseAddTransformedMethod()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->addTransformedShapeList(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/Collection;)V

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    move-object v4, p2

    check-cast v4, Ljava/util/Collection;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->addShapeList$default(Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/Collection;IILjava/lang/Object;)V

    :goto_2
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->j:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->l:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-void
.end method

.method public final getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->l:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-object p0
.end method

.method public final getCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->h:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-object p0
.end method

.method public final setCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/QuitTransformRequest;->k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-void
.end method
