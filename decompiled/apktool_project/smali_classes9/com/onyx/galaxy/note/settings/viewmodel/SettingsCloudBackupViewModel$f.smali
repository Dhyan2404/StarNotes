.class public final Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->oAuthDrive(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$f;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$f;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/data/account/AccountDataBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "accountDataBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$f;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$f;->f:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const-string v1, "SettingsCloudBackupFragment"

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/common/action/CloudAuthAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel$f;->a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V

    return-void
.end method
