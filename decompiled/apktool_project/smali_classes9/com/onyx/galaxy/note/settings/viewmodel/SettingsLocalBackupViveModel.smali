.class public final Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002R%\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00020\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "enable",
        "",
        "configureAutoBackup",
        "isEnableAutoBackup",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "isAutoBackup",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "j",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "autoBackupOp",
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
.field public final i:Landroidx/lifecycle/MutableLiveData;
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

.field public final j:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getLocalBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;->j:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-void
.end method


# virtual methods
.method public final configureAutoBackup(Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;->j:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public final isAutoBackup()Landroidx/lifecycle/MutableLiveData;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isEnableAutoBackup()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsLocalBackupViveModel;->j:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method
