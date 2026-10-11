.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0004\u00a2\u0006\u0004\u0008&\u0010\'J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0014\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0002H\u0002J\u0014\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0002H\u0002J\u0014\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u0002H\u0002R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001d\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "s",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "r",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "p",
        "o",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/data/DragEventData;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/DragEventData;",
        "getEvent",
        "()Lcom/onyx/android/sdk/universal/editor/data/DragEventData;",
        "event",
        "i",
        "Z",
        "isFromSameEditor",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "j",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "args",
        "",
        "k",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "shapeList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/DragEventData;Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/DragEventData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Z

.field public final j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/util/List;
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
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/DragEventData;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/DragEventData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->h:Lcom/onyx/android/sdk/universal/editor/data/DragEventData;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->i:Z

    new-instance p1, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->k:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$checkNoteLayer(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->m()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$saveExcerptCollection(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->r(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveUriToFile(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->n(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->k:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->k:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartDropImageTransformEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$create$5;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$create$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/ifh;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/ifh;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    return-object p0
.end method

.method public final getEvent()Lcom/onyx/android/sdk/universal/editor/data/DragEventData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->h:Lcom/onyx/android/sdk/universal/editor/data/DragEventData;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->k:Ljava/util/List;

    return-object p0
.end method

.method public final m()Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->checkNoteLayer$default(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "docId not changed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", paste excerpt shape image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/PasteImageShapeFromExcerptAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/PasteImageShapeFromExcerptAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/PasteImageShapeFromExcerptAction;->setArgs(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$f;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "docId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", paste normal image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getSourceImgPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->h:Lcom/onyx/android/sdk/universal/editor/data/DragEventData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/DragEventData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;->setInsertPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;->setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;->setStartTransform(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$g;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "docId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", paste quote shape image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptCollectionAction;->setArgs(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$h;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getSourceImgPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "just(...)"

    if-eqz v0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "docId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imgPath empty, do not save"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->h:Lcom/onyx/android/sdk/universal/editor/data/DragEventData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/DragEventData;->getLocalIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const-string v6, "doc_id"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v5

    :goto_1
    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v6

    invoke-static {v6}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->setSourceDocId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    if-eqz v3, :cond_5

    const-string v6, "source_shape_id"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v5

    :goto_2
    const-string v7, ""

    if-nez v6, :cond_6

    move-object v6, v7

    :cond_6
    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->setSourceShapeId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    if-eqz v3, :cond_7

    const-string v5, "source_excerpt_quote"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_7
    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, v5

    :goto_3
    invoke-virtual {v4, v7}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->setSourceExcerptQuote(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    if-eqz v3, :cond_9

    const-string v5, "source_type"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_9
    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->setSourceType(I)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    const-class v4, Landroid/graphics/RectF;

    if-eqz v3, :cond_a

    sget-object v5, Lcom/onyx/android/sdk/base/utils/IntentUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/IntentUtils;

    const-string v6, "source_excerpt_indicator_anchor_rect"

    invoke-virtual {v5, v3, v6, v4}, Lcom/onyx/android/sdk/base/utils/IntentUtils;->getParcelableExtraCompat(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    if-nez v5, :cond_b

    :cond_a
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    :cond_b
    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->setSourceExcerptQuoteIndicatorAnchorRect(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    if-eqz v3, :cond_c

    sget-object v5, Lcom/onyx/android/sdk/base/utils/IntentUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/IntentUtils;

    const-string v6, "source_shape_rect"

    invoke-virtual {v5, v3, v6, v4}, Lcom/onyx/android/sdk/base/utils/IntentUtils;->getParcelableExtraCompat(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    if-nez v3, :cond_d

    :cond_c
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :cond_d
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->setSourceRectF(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->h:Lcom/onyx/android/sdk/universal/editor/data/DragEventData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/DragEventData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getSourceType()I

    move-result p1

    if-eqz p1, :cond_14

    if-eq p1, v1, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_4

    :cond_e
    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->i:Z

    if-eqz p1, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_4

    :cond_10
    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->i:Z

    if-eqz p1, :cond_11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_4

    :cond_11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_4

    :cond_12
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->j:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getSourceDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_4

    :cond_13
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    :goto_4
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$j;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$k;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start handle, docId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;->h:Lcom/onyx/android/sdk/universal/editor/data/DragEventData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/DragEventData;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;->getUriList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "singletonList(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleImageDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
