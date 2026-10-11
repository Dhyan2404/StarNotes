.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocateLargeMatrixShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocateLargeMatrixShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1855#2:105\n288#2,2:106\n1856#2:108\n1549#2:109\n1620#2,3:110\n288#2,2:113\n288#2,2:115\n1#3:117\n*S KotlinDebug\n*F\n+ 1 LocateLargeMatrixShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction\n*L\n78#1:105\n82#1:106,2\n78#1:108\n87#1:109\n87#1:110,3\n96#1:113,2\n58#1:115,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "m",
        "",
        "h",
        "F",
        "getScale",
        "()F",
        "scale",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;F)V",
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
        "SMAP\nLocateLargeMatrixShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocateLargeMatrixShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1855#2:105\n288#2,2:106\n1856#2:108\n1549#2:109\n1620#2,3:110\n288#2,2:113\n288#2,2:115\n1#3:117\n*S KotlinDebug\n*F\n+ 1 LocateLargeMatrixShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction\n*L\n78#1:105\n82#1:106,2\n78#1:108\n87#1:109\n87#1:110,3\n96#1:113,2\n58#1:115,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:F


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;F)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;->h:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;F)V

    return-void
.end method

.method public static final synthetic access$findLargeMatrixShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;->m()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$locate(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;->o(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->ensureNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    check-cast p2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p2, :cond_3

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, v0

    :goto_2
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p0, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    :cond_5
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p1, :cond_7

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;->h:F

    return p0
.end method

.method public final m()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getLoadedNotePages()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object v7, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v8}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-static {v8}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v8

    iget v9, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;->h:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    if-eqz v8, :cond_1

    move-object v5, v7

    :cond_3
    iput-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getValidShapePageSet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->diff(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v7, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v8

    invoke-static {v8}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "documentUniqueId"

    invoke-virtual {v7, v9, v8}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v3

    const-string v8, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v3

    const-string v8, "pageUniqueId"

    invoke-virtual {v7, v8, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    const-string v3, "matrixValues"

    invoke-virtual {v7, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notNullOrMissing(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v7

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v7

    iget v8, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;->h:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    move v7, v4

    goto :goto_3

    :cond_7
    move v7, v6

    :goto_3
    if-eqz v7, :cond_6

    move-object v5, v3

    :cond_8
    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    if-eqz v5, :cond_9

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {p0, v2, v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->shapeFromModel(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_9
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$d;

    invoke-direct {v2, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$d;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$2;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Lcom/sunia/HTREnginev2/u1j;

    invoke-direct {v3, p0, v0}, Lcom/sunia/HTREnginev2/u1j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$4;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
