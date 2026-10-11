.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->o(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;->f:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;->c(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 1

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getUndoRedoCommand()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;->b(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->access$addShapeObservable(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1$1;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;->f:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    new-instance v2, Lcom/sunia/HTREnginev2/bmm;

    invoke-direct {v2, p0, p1}, Lcom/sunia/HTREnginev2/bmm;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
