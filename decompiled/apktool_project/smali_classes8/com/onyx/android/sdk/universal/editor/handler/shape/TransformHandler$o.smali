.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->onSelectionAddToStickerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionAddToStickerEvent;)V
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
    value = "SMAP\nTransformHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionAddToStickerEvent$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,574:1\n1549#2:575\n1620#2,3:576\n*S KotlinDebug\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionAddToStickerEvent$5\n*L\n426#1:575\n426#1:576,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTransformHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionAddToStickerEvent$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,574:1\n1549#2:575\n1620#2,3:576\n*S KotlinDebug\n*F\n+ 1 TransformHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onSelectionAddToStickerEvent$5\n*L\n426#1:575\n426#1:576,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paths"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/FileKt;->toProviderUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o$a;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o$a;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o$b;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o$b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$o;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
