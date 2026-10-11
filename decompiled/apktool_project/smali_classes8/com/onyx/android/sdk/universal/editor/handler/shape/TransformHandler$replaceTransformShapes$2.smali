.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->replaceTransformShapes(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->f:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->c(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$validShapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion;->addRemovedShapesToChangedShapeBean(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->b(Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->getQuitCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->getTransformShapeList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterSupportHWRShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v2

    move-object v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->setPostShapeChangedEvent(Z)V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$1;

    invoke-direct {v4, v2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$1;-><init>(Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    new-instance v5, Lcom/sunia/HTREnginev2/amn;

    invoke-direct {v5, v2, v1}, Lcom/sunia/HTREnginev2/amn;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;)V

    invoke-static {v3, v4, v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$a;

    invoke-direct {v3, v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$a;-><init>(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$b;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->f:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$b;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$c;

    invoke-direct {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$d;

    invoke-direct {p1, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$d;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
