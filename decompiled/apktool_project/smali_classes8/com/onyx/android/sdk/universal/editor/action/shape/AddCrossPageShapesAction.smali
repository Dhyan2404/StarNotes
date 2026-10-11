.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction<",
        "Ljava/util/Map<",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001B\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001a\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0005H\u0014J(\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "map",
        "",
        "addToCmdStack",
        "m",
        "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
        "i",
        "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
        "transformShapeContext",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "j",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "getCompositeCommand",
        "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "setCompositeCommand",
        "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V",
        "compositeCommand",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "k",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "getChangedShapeBean",
        "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "changedShapeBean",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V",
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
.field public final i:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformShapeContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->i:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    new-instance p1, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, p2}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->j:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    new-instance p1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->k:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-void
.end method

.method public static final synthetic access$addShapes(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Ljava/util/Map;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->m(Ljava/util/Map;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->n(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Ljava/util/Map;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Ljava/util/Map;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->j:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addShapesUndoRedoCommand(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->i:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;->setCheckDuplicatedShapes(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$a;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->k:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-object p0
.end method

.method public final getCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->j:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-object p0
.end method

.method public final m(Ljava/util/Map;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;->getPostShapeChangedEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setPostShapeChangedEvent(Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->i:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->getZOrder()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setSetZOrder(Z)V

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addShapes(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$addShapes$1;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$addShapes$1;-><init>(Z)V

    new-instance p2, Lcom/sunia/HTREnginev2/l8;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/l8;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;)V

    invoke-static {p1, v0, p2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->j:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-void
.end method
