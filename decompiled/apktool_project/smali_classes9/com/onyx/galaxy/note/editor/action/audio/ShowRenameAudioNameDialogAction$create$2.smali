.class final Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/ui/NameEditDialog;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/onyx/android/sdk/ui/NameEditDialog;",
        "editText",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $subject:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->$subject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/ui/NameEditDialog;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->invoke(Lcom/onyx/android/sdk/ui/NameEditDialog;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/ui/NameEditDialog;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/ui/NameEditDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameDoneEvent;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;->access$getAudioInfoBean$p(Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/AudioRenameDoneEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/universal/R$string;->audio_name_empty_tips:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-static {v0, p2}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;->access$setNewName$p(Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;->access$getNewName$p(Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;->access$getAudioInfoBean$p(Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;)Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->dismiss()V

    .line 8
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    return-void

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;->access$getNewName$p(Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;->access$checkDuplicated(Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 10
    sget-object v0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;->e:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 11
    sget-object v0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$b;->e:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$b;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 12
    new-instance v0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$c;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$c;-><init>(Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$d;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->$subject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->this$0:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;

    invoke-direct {p2, v0, p0}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$d;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
