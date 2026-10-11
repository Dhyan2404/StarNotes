.class final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->z0()V
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
        "context",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;->invoke$lambda$1(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->access$updateLastTime(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;->invoke(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getDocumentsArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;->cloudAllNoteBackupFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setExportAllFolder(Z)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setExportAllTag(Z)V

    .line 5
    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$dialog$1;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$dialog$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudBackupDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;Lkotlin/jvm/functions/Function0;)V

    .line 6
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 7
    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getAuthProviders()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 8
    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$a;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$a;-><init>(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 9
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 10
    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$b;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1$b;-><init>(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 11
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/fragment/a;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/a;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$cloudBackup$1;->this$0:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method
