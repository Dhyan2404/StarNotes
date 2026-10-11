.class public final Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0002H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "noteCreateInfo",
        "m",
        "n",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadCoverModel(Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;->m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadPaperModel(Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;->n(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getQuickNoteOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo$Companion;->checkQuickTemplateValid(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$b;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$c;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$d;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$d;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$e;->e:Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$f;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$f;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$g;->e:Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$g;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$h;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$h;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
