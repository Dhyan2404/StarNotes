.class public final Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0007R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\nR%\u0010\u0012\u001a\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u00020\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R%\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u00020\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0013R\u001f\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0018\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "enable",
        "",
        "configureWifiOnly",
        "configureAutoSync",
        "getCloudStorageStatus",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "i",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "autoSyncOp",
        "j",
        "wifiOnlyOp",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "isAutoSync",
        "()Landroidx/lifecycle/MutableLiveData;",
        "l",
        "isWifiOnly",
        "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;",
        "m",
        "getCloudStorageStatusBean",
        "cloudStorageStatusBean",
        "<init>",
        "()V",
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
.field public final i:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudAutoSyncOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->i:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudSyncWifiOnlyOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->j:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final configureAutoSync(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->i:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final configureWifiOnly(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->j:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCloudStorageStatus()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel$a;-><init>(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getCloudStorageStatusBean()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isAutoSync()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isWifiOnly()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudSyncViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method
