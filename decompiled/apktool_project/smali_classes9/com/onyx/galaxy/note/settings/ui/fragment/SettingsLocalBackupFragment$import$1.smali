.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;->w0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/Context;",
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
.field final synthetic $uris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1;->$uris:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1;->invoke$lambda$0()V

    return-void
.end method

.method private static final invoke$lambda$0()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsBundle;

    new-instance v1, Lcom/onyx/galaxy/note/settings/event/LocalRecoveryEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/settings/event/LocalRecoveryEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1;->invoke(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreDialog;

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1$dialog$1;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1$dialog$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;

    .line 5
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1;->$uris:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->create$default(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;-><init>(Ljava/util/List;)V

    .line 7
    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V

    .line 8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/c;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/c;-><init>()V

    .line 9
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$import$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;->access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
