.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "oneDriveProvider",
        "",
        "b",
        "Ljava/lang/String;",
        "code",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/lang/String;)V",
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

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oneDriveProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    move-result-object v0

    const-string v1, "https://login.microsoftonline.com/"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;->getOneDriveService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;

    move-result-object v2

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getClientID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://login.microsoftonline.com/common/oauth2/nativeclient"

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getSecret()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;->b:Ljava/lang/String;

    const-string v7, "authorization_code"

    .line 6
    invoke-interface/range {v2 .. v7}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;->loadToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    .line 10
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onedriver load token finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CloudStorage "

    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/LoadOneDriveTokenRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    move-result-object p0

    return-object p0
.end method
