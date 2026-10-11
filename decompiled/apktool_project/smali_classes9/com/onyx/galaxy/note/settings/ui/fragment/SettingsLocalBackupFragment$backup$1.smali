.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;->q0()V
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1;->invoke$lambda$1(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;->access$updateLastTime(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1;->invoke(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalBackupDialog;

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1$dialog$1;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1$dialog$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalBackupDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    new-instance p1, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getDocumentsArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;->localAllNoteBackupFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setExportAllFolder(Z)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setExportAllTag(Z)V

    .line 7
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;

    .line 8
    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    .line 10
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/b;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/b;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;->access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
