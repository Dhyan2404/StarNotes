.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;
.super Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuildScribbleTextIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildScribbleTextIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n766#2:118\n857#2,2:119\n*S KotlinDebug\n*F\n+ 1 BuildScribbleTextIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction\n*L\n45#1:118\n45#1:119,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B%\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0002J\u001a\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u001c\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00070\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "",
        "create",
        "l",
        "",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPageList",
        "n",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "noteSearchArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V",
        "Companion",
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
        "SMAP\nBuildScribbleTextIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildScribbleTextIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n766#2:118\n857#2,2:119\n*S KotlinDebug\n*F\n+ 1 BuildScribbleTextIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction\n*L\n45#1:118\n45#1:119,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:I = 0x2710


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteSearchArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HANDWRITING:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V

    return-void
.end method

.method public static final synthetic access$buildIndex(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractFTSContent(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;->m(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractFTSContent(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getImmutableValidShapePageSet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getVirtualPageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->toPageIdList(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getVirtualPageList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->diff(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$buildIndex$2;

    invoke-direct {v1, v3}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$buildIndex$2;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$buildIndex$3;

    invoke-direct {v2, p0, v3}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$buildIndex$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Ljava/util/List;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeCount()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "just(...)"

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getNoteSearchArgs()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->isBackgroundSearch()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/universal/R$string;->search_data_too_large:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$2;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$3;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$4;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$4;-><init>(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$5;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$penShapes$5;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getNoteSearchArgs()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getHwrArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$e;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v2, "concatMap(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$2;

    invoke-direct {v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$2;-><init>(Ljava/util/Set;Ljava/util/List;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Ljava/util/List;Ljava/util/Set;)V

    invoke-static {p1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
