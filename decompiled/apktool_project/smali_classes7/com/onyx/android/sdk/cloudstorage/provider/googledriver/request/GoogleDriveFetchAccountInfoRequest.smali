.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;",
        "",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "userId",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/lang/String;)V",
        "fetch",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "credential",
        "sdk-cloudstorage_release"
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
.field private final googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "googleDriverProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic fetch(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;->fetch(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    return-object p0
.end method

.method public fetch(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->getUser(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "google-drive, account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/api/client/json/GenericJson;->toPrettyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;->toAccountInfo(Lcom/google/api/services/drive/model/User;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object p1

    .line 5
    new-instance v9, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v9, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountInfoBean(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setProviderName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountCredentialJson(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;->getEnableFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v9, p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setEnableFeatures(Ljava/util/Set;)V

    return-object v9
.end method
