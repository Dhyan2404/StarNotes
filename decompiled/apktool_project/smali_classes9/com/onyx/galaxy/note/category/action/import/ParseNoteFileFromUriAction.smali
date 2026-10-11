.class public Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0008\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008#\u0010$J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0006J(\u0010\r\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u000c0\u00022\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002R\u001d\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR&\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "onDispose",
        "",
        "Landroid/net/Uri;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getResultList",
        "uri",
        "Lkotlin/Pair;",
        "q",
        "",
        "importedCount",
        "p",
        "t",
        "Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;",
        "u",
        "g",
        "Ljava/util/List;",
        "getUriList",
        "()Ljava/util/List;",
        "uriList",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "importSelectedContext",
        "i",
        "Ljava/util/Map;",
        "parsedResultMap",
        "j",
        "Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;",
        "progressDialog",
        "<init>",
        "(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V",
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
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            ")V"
        }
    .end annotation

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importSelectedContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->i:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getParsedResultMap$p(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$parseNoteFileIntent(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->q(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setProgressDialog$p(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->j:Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    return-void
.end method

.method public static final synthetic access$showParseFailToast(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->t(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$showProgressDialog(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->u()Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->o(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->s(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->r(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->j:Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->getNoteList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->p(Landroid/net/Uri;I)V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->onDispose()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$g;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorResumeNext(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/nwk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nwk;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getResultList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->i:Ljava/util/Map;

    return-object p0
.end method

.method public final getUriList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->g:Ljava/util/List;

    return-object p0
.end method

.method public onDispose()V
    .locals 0

    return-void
.end method

.method public final p(Landroid/net/Uri;I)V
    .locals 2

    if-gtz p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$handleCompleteCount$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$handleCompleteCount$1;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->completeCount(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final q(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Pair<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getSelectedFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->resetNoteImportArg(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    sget-object v2, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->j:Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;->setFileName(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$h;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$i;

    invoke-direct {v2, p1, v1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$i;-><init>(Landroid/net/Uri;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/owk;

    invoke-direct {v2, p0, p1, v1}, Lcom/sunia/HTREnginev2/owk;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/pwk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pwk;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$j;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$j;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnError(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ".note"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->parse_note_file_error:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final u()Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$showProgressDialog$dialog$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$showProgressDialog$dialog$1;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;->showCloseButton(Lkotlin/jvm/functions/Function0;)Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method
