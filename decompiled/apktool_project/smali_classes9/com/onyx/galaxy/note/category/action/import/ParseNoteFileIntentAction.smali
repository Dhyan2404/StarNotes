.class public Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B-\u0012\u0006\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000c\u0012\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "onDispose",
        "q",
        "Landroid/net/Uri;",
        "uri",
        "u",
        "",
        "fileName",
        "Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;",
        "v",
        "g",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "h",
        "Ljava/lang/String;",
        "parentId",
        "i",
        "Ljava/util/List;",
        "tagIdList",
        "<init>",
        "(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V",
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
.field public final g:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->g:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->h:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->i:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$parseNoteFileIntent(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showParseFailToast(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->u(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->s(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->t(Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->r(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->p(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->onDispose()V

    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$importArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->getNoteList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->allErrorImported()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    iget-object p0, p2, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->g:Landroid/net/Uri;

    invoke-virtual {p2, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->u(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->onDispose()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;->dismiss()V

    :cond_0
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
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->g:Landroid/net/Uri;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/twk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/twk;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnDispose(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->g:Landroid/net/Uri;

    return-object p0
.end method

.method public onDispose()V
    .locals 0

    return-void
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setTagIdList(Ljava/util/List;)V

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

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->v(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string v4, "observeOn(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction$b;

    invoke-direct {v4, v1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/qwk;

    invoke-direct {v4, v1, v0, p0}, Lcom/sunia/HTREnginev2/qwk;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/rwk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rwk;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/swk;

    invoke-direct {v0, v2}, Lcom/sunia/HTREnginev2/swk;-><init>(Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(Landroid/net/Uri;)V
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

.method public final v(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;->setFileName(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction$showProgressDialog$dialog$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction$showProgressDialog$dialog$1;-><init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;->showCloseButton(Lkotlin/jvm/functions/Function0;)Lcom/onyx/galaxy/note/common/view/ParseNoteProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method
