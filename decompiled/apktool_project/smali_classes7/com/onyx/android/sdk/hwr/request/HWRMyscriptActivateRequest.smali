.class public final Lcom/onyx/android/sdk/hwr/request/HWRMyscriptActivateRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/request/HWRMyscriptActivateRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Boolean;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/account/bean/Device;->Companion:Lcom/onyx/android/sdk/data/account/bean/Device$Companion;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/Device$Companion;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;

    invoke-direct {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;->setAndroidId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;->setFingerprint(Ljava/lang/String;)V

    .line 6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;->setModel(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getInternationalCloudDataUrl()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v3, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;

    .line 9
    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;->commitMyscriptActivateRecord(Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 11
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v0, "Commit Myscript Activate Record Fail"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRMyscriptActivateRequest;->execute()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
