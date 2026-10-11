.class public final Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "",
        "l",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "f",
        "Ljava/lang/String;",
        "password",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V",
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
.field public final e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$update(Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;->l(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction$c;->e:Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction$c;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/UpdateEditorNoteModelEncryptionAction;->f:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;->execute()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setEncryption(Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->resetEncryption()V

    :goto_0
    return-void
.end method
