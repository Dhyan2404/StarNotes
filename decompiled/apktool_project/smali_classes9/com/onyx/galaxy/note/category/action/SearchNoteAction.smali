.class public final Lcom/onyx/galaxy/note/category/action/SearchNoteAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B%\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008+\u0010,J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u001c\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u001c\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R3\u0010\u001e\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u001a*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u00020\u0019\u00a2\u0006\u0002\u0008\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/SearchNoteAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "s",
        "x",
        "u",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "q",
        "v",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "h",
        "Ljava/util/List;",
        "noteModels",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "noteSearchArgs",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "j",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "publisher",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "k",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "dispose",
        "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;",
        "l",
        "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;",
        "getResult",
        "()Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;",
        "setResult",
        "(Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;)V",
        "result",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V",
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
.field public final g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteModels"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteSearchArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->h:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    new-instance p1, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    return-void
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getPublisher$p(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public static final synthetic access$openNoteAndSearchText(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->q(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$search(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->s()V

    return-void
.end method

.method public static final synthetic access$searchNoteTextImpl(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->v(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->p(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->t(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->w(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->r(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->k:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 7

    const-string v0, "$editorBundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onComplete()V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

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
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/v6m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v6m;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnDispose(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getResult()Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$b;

    invoke-direct {v1, p1, p2}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    const-string v0, "flatMap(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$e;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$f;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/w6m;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/w6m;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "doOnDispose(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->j:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->x()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concat(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/x6m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x6m;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->k:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setResult(Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->l:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    return-void
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/SearchNoteAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->h:Ljava/util/List;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "just(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$searchNoteText$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/SearchNoteAction$searchNoteText$1;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$searchNoteText$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$searchNoteText$2;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$h;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-direct {v0, p1, p2, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$searchNoteTextImpl$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/SearchNoteAction$searchNoteTextImpl$1;

    new-instance v0, Lcom/sunia/HTREnginev2/y6m;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/y6m;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-static {p1, p2, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$i;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$i;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/SearchNoteAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/SearchNoteTitleAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->i:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/action/SearchNoteTitleAction;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$j;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction$k;-><init>(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
