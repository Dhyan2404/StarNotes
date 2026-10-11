.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForceRenderSliceListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectToDisplay$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n1271#2,2:334\n1285#2,4:336\n*S KotlinDebug\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectToDisplay$2\n*L\n111#1:334,2\n111#1:336,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nForceRenderSliceListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectToDisplay$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n1271#2,2:334\n1285#2,4:336\n*S KotlinDebug\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectToDisplay$2\n*L\n111#1:334,2\n111#1:336,4\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->f:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
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
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "boxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->filterNotNullValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    const-string v0, "no boxInfoMap"

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logForForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e$a;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->g:Z

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "concatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e$b;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
