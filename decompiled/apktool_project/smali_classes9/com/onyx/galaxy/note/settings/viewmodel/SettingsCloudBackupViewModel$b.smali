.class public final Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->checkNetDiskAuth()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthBaidu()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->access$checkAuthByProvider(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthGoogleDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->access$checkAuthByProvider(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthOneDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;->e:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->access$checkAuthByProvider(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$b;->a(Ljava/util/List;)V

    return-void
.end method
