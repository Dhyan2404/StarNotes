.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        "credential",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "fetch",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "oneDriveProvider",
        "response",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oneDriveProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    return-void
.end method


# virtual methods
.method public fetch(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 20
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "credential"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;->getOneDriveService()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;->getAccount()Lretrofit2/Call;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;

    .line 7
    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "one-drive,account:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;->getUserPrincipalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 11
    :cond_2
    new-instance v10, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setNickName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v10, v3}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setAccountName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setId(Ljava/lang/String;)V

    .line 15
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3f

    const/16 v19, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    invoke-virtual {v10}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountId(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v10}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountInfoBean(Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;)V

    .line 18
    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountCredentialJson(Ljava/lang/String;)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setProviderName(Ljava/lang/String;)V

    .line 20
    iget-object v1, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getEnableFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setEnableFeatures(Ljava/util/Set;)V

    .line 21
    iget-object v0, v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    return-object v2

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {v2}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic fetch(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;->fetch(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    return-object p0
.end method
