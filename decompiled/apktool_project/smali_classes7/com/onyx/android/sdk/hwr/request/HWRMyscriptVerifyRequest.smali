.class public final Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\r\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "()V",
        "model",
        "",
        "getModel",
        "()Ljava/lang/String;",
        "setModel",
        "(Ljava/lang/String;)V",
        "execute",
        "",
        "()Ljava/lang/Boolean;",
        "sdk-hwr_release"
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
.field public model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Boolean;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRMmkvUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRMmkvUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/utils/HWRMmkvUtils;->isMyscriptVerified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 4
    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;

    invoke-direct {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;->setModel(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;->setFingerprint(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getInternationalCloudDataUrl()Ljava/lang/String;

    move-result-object v2

    .line 8
    sget-object v3, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v4, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;

    invoke-virtual {v3, v4, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;

    .line 9
    invoke-interface {v2, v1}, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;->verifyMyscriptPermission(Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/utils/HWRMmkvUtils;->setMyscriptVerified()V

    .line 12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 13
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v0, "Myscript Not Allowed"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;->execute()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;->model:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "model"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;->setModel(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;->model:Ljava/lang/String;

    return-void
.end method
