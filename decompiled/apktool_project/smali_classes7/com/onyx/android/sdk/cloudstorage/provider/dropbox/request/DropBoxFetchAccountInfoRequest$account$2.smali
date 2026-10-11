.class final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest$account$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest$account$2;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest$account$2;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;->access$getDropProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->getDbxClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxClientV2Base;->users()Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->getCurrentAccount()Lcom/dropbox/core/v2/users/FullAccount;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest$account$2;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropbox,fullAccount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/dropbox/core/v2/users/FullAccount;->getName()Lcom/dropbox/core/v2/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/users/Name;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;->setDisplayName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/dropbox/core/v2/users/FullAccount;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;->setEmail(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/dropbox/core/v2/users/FullAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;->setId(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest$account$2;->invoke()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;

    move-result-object p0

    return-object p0
.end method
