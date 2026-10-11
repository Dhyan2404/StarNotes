.class final Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/alibaba/fastjson2/JSONObject;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "raw",
        "Lcom/alibaba/fastjson2/JSONObject;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
    .locals 1
    .param p1    # Lcom/alibaba/fastjson2/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "raw"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->toJSONString([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1$1;-><init>()V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteLocalCloudFileRequest$execute$selectedItemMap$1;->invoke(Lcom/alibaba/fastjson2/JSONObject;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    move-result-object p0

    return-object p0
.end method
