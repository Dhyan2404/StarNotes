.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuildTextIndexBaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexBaseAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1603#2,9:114\n1855#2:123\n1856#2:125\n1612#2:126\n1#3:124\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexBaseAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion\n*L\n85#1:114,9\n85#1:123\n85#1:125\n85#1:126\n85#1:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J:\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J$\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00100\u000f*\u00020\u000e2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004J4\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
        "models",
        "",
        "pageIds",
        "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
        "type",
        "lang",
        "",
        "savePageContent",
        "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "buildIndex",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "noteSearchArgs",
        "",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "a",
        "<init>",
        "()V",
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
        "SMAP\nBuildTextIndexBaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexBaseAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1603#2,9:114\n1855#2:123\n1856#2:125\n1612#2:126\n1#3:124\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexBaseAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion\n*L\n85#1:114,9\n85#1:123\n85#1:125\n85#1:126\n85#1:124\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$queryIndexPages(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/data/common/data/TextContentType;Ljava/util/Collection;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;->a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/data/common/data/TextContentType;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/data/common/data/TextContentType;Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    invoke-static {p4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object p0

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->queryIndexedPageIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p4, Ljava/lang/Iterable;

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->diff(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p4

    invoke-interface {p4, p3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final buildIndex(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageIds"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;

    invoke-direct {v1, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    const-string v0, "map(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$buildIndex$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$buildIndex$2;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$buildIndex$3;

    invoke-direct {v2, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$buildIndex$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;Ljava/util/Set;)V

    invoke-static {p2, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$b;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$b;-><init>(Ljava/util/Set;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final savePageContent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;Ljava/util/Collection;Lcom/onyx/android/sdk/data/common/data/TextContentType;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/data/common/data/TextContentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "models"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageIds"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lang"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->deleteFtsContent(Ljava/util/Collection;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->deletePageState(Ljava/util/Collection;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->saveFtsContent(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getDocFtsProvider(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;->savePageStates(Ljava/util/Collection;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V

    return-void
.end method
