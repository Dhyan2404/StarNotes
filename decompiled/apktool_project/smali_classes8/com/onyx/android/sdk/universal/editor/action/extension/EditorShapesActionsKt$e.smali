.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addShapes(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->f:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 8
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)",
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

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->setAddToCmdStack(Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getPostShapeChangedEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->setPostShapeChangedEvent(Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getSetZOrder()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->setSetZOrder(Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->f:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addShapes(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$a;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->g:Ljava/util/Map;

    invoke-direct {v1, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$a;-><init>(Ljava/util/Map$Entry;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$b;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$b;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->a(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
