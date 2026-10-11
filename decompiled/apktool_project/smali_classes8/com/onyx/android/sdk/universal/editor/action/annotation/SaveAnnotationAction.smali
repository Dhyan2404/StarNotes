.class public final Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveAnnotationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveAnnotationAction.kt\ncom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1549#2:106\n1620#2,3:107\n1855#2,2:110\n*S KotlinDebug\n*F\n+ 1 SaveAnnotationAction.kt\ncom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction\n*L\n80#1:106\n80#1:107,3\n98#1:110,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u001a\u001a\u00020\t\u00a2\u0006\u0004\u0008&\u0010\'J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002R\u0017\u0010\u0015\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u001a\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R(\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "readerSelection",
        "Landroid/graphics/Matrix;",
        "normalizeMatrix",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;",
        "l",
        "",
        "Landroid/graphics/RectF;",
        "rectFList",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;",
        "getInfo",
        "()Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;",
        "info",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;",
        "getAnnotationInfo",
        "()Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;",
        "annotationInfo",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "j",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "setShapeList",
        "(Ljava/util/List;)V",
        "shapeList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V",
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
        "SMAP\nSaveAnnotationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveAnnotationAction.kt\ncom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1549#2:106\n1620#2,3:107\n1855#2,2:110\n*S KotlinDebug\n*F\n+ 1 SaveAnnotationAction.kt\ncom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction\n*L\n80#1:106\n80#1:107,3\n98#1:110,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->h:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->i:Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->j:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createAnnotationInfo(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->l(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$textRegionToTouchPointList(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->n(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAnnotationInfo()Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->i:Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    return-object p0
.end method

.method public final getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->h:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    return-object p0
.end method

.method public final getShapeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setRectFList(Ljava/util/List;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->text()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setQuote(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/PageRange;->getStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setStartPosition(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/api/PageRange;->getEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setEndPosition(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->i:Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getStyle()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setStyle(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->i:Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setColor(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/ReaderWritingModeKt;->toAnnotationWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setWritingMode(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V

    return-object v0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final setShapeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->j:Ljava/util/List;

    return-void
.end method
