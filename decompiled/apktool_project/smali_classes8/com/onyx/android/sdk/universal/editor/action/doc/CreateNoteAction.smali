.class public final Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011RB\u0010\u001b\u001a-\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014 \u0015*\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00130\u00130\u0012\u00a2\u0006\u0002\u0008\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
        "createRequest",
        "p",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "noteCreateInfo",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getNoteModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "setNoteModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "Lkotlin/Pair;",
        "",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "i",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "getProgressCallbackPublisher",
        "()Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "progressCallbackPublisher",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteCreateInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->i:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method

.method public static final synthetic access$getNoteCreateInfo$p(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    return-object p0
.end method

.method public static final synthetic access$saveThumbnail(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->p(Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->n(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->o(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->i:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->i:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$create$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/kge;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kge;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/lge;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lge;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "noteModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProgressCallbackPublisher()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->i:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->getArgs()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->setClearBitmap(Z)V

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;->getArgs()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->noteModel:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method
