.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;,
        Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002#$B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0002B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "Ljava/io/Serializable;",
        "()V",
        "provider",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "data",
        "",
        "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Object;)V",
        "accountId",
        "",
        "getAccountId",
        "()Ljava/lang/String;",
        "setAccountId",
        "(Ljava/lang/String;)V",
        "dataJson",
        "getDataJson",
        "setDataJson",
        "isCloudOperate",
        "",
        "()Z",
        "setCloudOperate",
        "(Z)V",
        "getProvider",
        "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "setProvider",
        "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V",
        "strategy",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;",
        "getStrategy",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;",
        "setStrategy",
        "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;)V",
        "parseDataList",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "OperationData",
        "OperationStrategy",
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
.field private accountId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dataJson:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isCloudOperate:Z

.field private provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private strategy:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->FAIL:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->strategy:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->isCloudOperate:Z

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->BAIDU_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;->FAIL:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->strategy:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->isCloudOperate:Z

    .line 9
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    .line 10
    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->dataJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccountId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDataJson()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->dataJson:Ljava/lang/String;

    return-object p0
.end method

.method public final getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object p0
.end method

.method public final getStrategy()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->strategy:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    return-object p0
.end method

.method public final isCloudOperate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->isCloudOperate:Z

    return p0
.end method

.method public final parseDataList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->dataJson:Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$parseDataList$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$parseDataList$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->accountId:Ljava/lang/String;

    return-void
.end method

.method public final setCloudOperate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->isCloudOperate:Z

    return-void
.end method

.method public final setDataJson(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->dataJson:Ljava/lang/String;

    return-void
.end method

.method public final setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->provider:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-void
.end method

.method public final setStrategy(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->strategy:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationStrategy;

    return-void
.end method
