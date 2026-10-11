.class final Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderIntersectsNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "*",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForceRenderSliceListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n766#2:334\n857#2,2:335\n*S KotlinDebug\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2\n*L\n76#1:334\n76#1:335,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "list",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nForceRenderSliceListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n766#2:334\n857#2,2:335\n*S KotlinDebug\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2\n*L\n76#1:334\n76#1:335,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $boxIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shapeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_forceRenderIntersectsNoteDirtyRectToDisplay:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$this_forceRenderIntersectsNoteDirtyRectToDisplay:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$boxIdSet:Ljava/util/Set;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$shapeList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$boxIdSet:Ljava/util/Set;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 5
    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$this_forceRenderIntersectsNoteDirtyRectToDisplay:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidateNotVisiblePagesIf(Ljava/util/Collection;)V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$this_forceRenderIntersectsNoteDirtyRectToDisplay:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2$a;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$this_forceRenderIntersectsNoteDirtyRectToDisplay:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$shapeList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "concatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2$b;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->$this_forceRenderIntersectsNoteDirtyRectToDisplay:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;->invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
