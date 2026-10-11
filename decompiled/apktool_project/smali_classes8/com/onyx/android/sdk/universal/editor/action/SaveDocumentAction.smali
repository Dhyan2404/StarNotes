.class public final Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*J\u000c\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000c\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000c\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R$\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00128\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0017\u001a\u0004\u0008\u001b\u0010\u0019\"\u0004\u0008\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0017R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010&\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u0017\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "u",
        "t",
        "s",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "",
        "p",
        "q",
        "w",
        "y",
        "r",
        "v",
        "o",
        "z",
        "",
        "n",
        "create",
        "<set-?>",
        "h",
        "Z",
        "isDirty",
        "()Z",
        "i",
        "getForceSave",
        "setForceSave",
        "(Z)V",
        "forceSave",
        "j",
        "isOwner",
        "",
        "k",
        "Ljava/lang/Integer;",
        "coverPageIndex",
        "l",
        "isNeedUpdateCoverThumbnail",
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


# instance fields
.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Z


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

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isOwner(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->j:Z

    return-void
.end method

.method public static final synthetic access$afterDocumentSaved(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkNeedUpdateCoverThumbnail(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deferSaveNoteTree(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->p(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$deferSyncNoteTree(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$deleteStashShapes(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exportToPBFromDB(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveAndClearDirtyNotePage(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveNoteModel(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveThumbnail(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->v()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveVirtualDoc(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->w()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCoverPageIndex$p(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->k:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setDirty$p(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->h:Z

    return-void
.end method

.method public static final synthetic access$setNeedUpdateCoverThumbnail$p(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->l:Z

    return-void
.end method

.method public static final synthetic access$updateDocPageTag(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->y()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateThumbnailOrientation(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->z()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Lcom/onyx/android/sdk/universal/editor/request/SaveDocRequest;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->x(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Lcom/onyx/android/sdk/universal/editor/request/SaveDocRequest;)V

    return-void
.end method

.method public static final x(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;Lcom/onyx/android/sdk/universal/editor/request/SaveDocRequest;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->h:Z

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getForceSave()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->i:Z

    return p0
.end method

.method public final isDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->h:Z

    return p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$afterDocumentSaved$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$afterDocumentSaved$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->i:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->j:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/ComputeCoverThumbnailPageIndexAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/ComputeCoverThumbnailPageIndexAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->h:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;->setNoteModels(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/SaveNoteTreeEvent;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/event/SaveNoteTreeEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->h:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;->setNoteModels(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/SyncNoteTreeEvent;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/event/SyncNoteTreeEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->j:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$q;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/pb/ExportToPBFromDBRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/pb/ExportToPBFromDBRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$r;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setForceSave(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->i:Z

    return-void
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/request/SaveAndClearDirtyNotePageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/request/SaveAndClearDirtyNotePageRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$s;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$t;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$t;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$u;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$u;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$v;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$v;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$w;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$w;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$x;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$x;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->l:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;->setPageIndex(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$y;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$y;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/SaveDocRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/SaveDocRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$saveVirtualDoc$1;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$saveVirtualDoc$1;-><init>(Lcom/onyx/android/sdk/universal/editor/request/SaveDocRequest;)V

    new-instance v0, Lcom/sunia/HTREnginev2/p0m;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/p0m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-static {v1, v2, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$z;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$z;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final y()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/tag/UpdateDocPageTagAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$a0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$a0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->l:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->h:Z

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/ComputeCoverThumbnailPageIndexAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->k:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/ComputeCoverThumbnailPageIndexAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$b0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$b0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$c0;->e:Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$c0;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$d0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$d0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$e0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction$e0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
