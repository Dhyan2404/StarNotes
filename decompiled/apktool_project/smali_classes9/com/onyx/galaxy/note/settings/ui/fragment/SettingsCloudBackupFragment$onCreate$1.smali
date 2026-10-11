.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->access$getRefreshDriverReceiver$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.onyx.android.sdk.accounts.intent.action.ACCOUNT_QUERY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->access$getRefreshDriverReceiver$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$refreshDriverReceiver$1;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;->access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method
