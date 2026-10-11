.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "providerAccountModel",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "loadFromCloud",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "a",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "client",
        "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;",
        "b",
        "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;",
        "getAccount",
        "()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;",
        "setAccount",
        "(Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;)V",
        "account",
        "<init>",
        "(Lcom/dropbox/core/v2/DbxClientV2;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/v2/DbxClientV2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxClientV2;)V
    .locals 4
    .param p1    # Lcom/dropbox/core/v2/DbxClientV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->DROP_BOX:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;->a:Lcom/dropbox/core/v2/DbxClientV2;

    return-void
.end method


# virtual methods
.method public final getAccount()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;->b:Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    return-object p0
.end method

.method public loadFromCloud(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;->a:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/DbxClientV2Base;->users()Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->getCurrentAccount()Lcom/dropbox/core/v2/users/FullAccount;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;-><init>()V

    invoke-virtual {p1}, Lcom/dropbox/core/v2/users/FullAccount;->getName()Lcom/dropbox/core/v2/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/users/Name;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dropbox/core/v2/users/FullAccount;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;->setEmail(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dropbox/core/v2/users/FullAccount;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;->setId(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;->b:Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropbox,fullAccount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;->b:Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->createAccountInfoBean(Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public final setAccount(Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;->b:Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    return-void
.end method
