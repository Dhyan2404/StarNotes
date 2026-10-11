.class public final Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0014\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\n\u001a\u00020\u0008H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "",
        "validShapePageSet",
        "",
        "m",
        "count",
        "l",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static final synthetic access$afterRemoved(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;J)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;->l(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$apply(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;Ljava/util/Set;)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;->m(Ljava/util/Set;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$create$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$create$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$d;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(J)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "just(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$afterRemoved$1;

    invoke-direct {v1, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$afterRemoved$1;-><init>(J)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$afterRemoved$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$afterRemoved$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$afterRemoved$3;

    invoke-direct {v1, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$afterRemoved$3;-><init>(J)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$afterRemoved$4;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$afterRemoved$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;)V

    invoke-static {v0, v1, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/util/Set;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadValidVirtualPageQuery()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v3, "uniqueId"

    invoke-virtual {v2, v3, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notInExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;

    invoke-direct {v2, v0, p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$apply$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/base/utils/Benchmark;)V

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageModelListInBatch(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lkotlin/jvm/functions/Function1;)V

    iget-wide p0, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    return-wide p0
.end method
