.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->C()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nQuitTransformAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuitTransformAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$updatePageTagModels$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,311:1\n1549#2:312\n1620#2,3:313\n*S KotlinDebug\n*F\n+ 1 QuitTransformAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$updatePageTagModels$1\n*L\n285#1:312\n285#1:313,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQuitTransformAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuitTransformAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$updatePageTagModels$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,311:1\n1549#2:312\n1620#2,3:313\n*S KotlinDebug\n*F\n+ 1 QuitTransformAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$updatePageTagModels$1\n*L\n285#1:312\n285#1:313,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$n;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$n;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction$n;->a(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
