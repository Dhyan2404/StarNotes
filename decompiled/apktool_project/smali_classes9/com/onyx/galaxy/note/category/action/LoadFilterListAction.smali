.class public final Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
        "noteExtraProvider",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public g:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public h:Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNoteExtraProvider$p(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;->h:Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;

    return-object p0
.end method

.method public static final synthetic access$getNoteProvider$p(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;->g:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-object p0
.end method

.method public static final synthetic access$setNoteExtraProvider$p(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;->h:Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;

    return-void
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;->g:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
