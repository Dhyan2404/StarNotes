.class public final Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "g",
        "Ljava/lang/String;",
        "noteId",
        "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;",
        "applyTemplateInfo",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "<init>",
        "(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V",
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
.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applyTemplateInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public static final synthetic access$getApplyTemplateInfo$p(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->i:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getNoteId$p(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNoteModel$p(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public static final synthetic access$setNoteModel$p(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$e;->e:Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
