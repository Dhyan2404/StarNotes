.class public final Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;",
        "",
        "()V",
        "docConvertAsync",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;",
        "list",
        "",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertParamsBean;",
        "targetFormat",
        "",
        "docConvertV2",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;",
        "convertBean",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;",
        "getConvertConfig",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerConfigResponse;",
        "queryConvertResultV2",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;",
        "queryBean",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;",
        "queryConvertStatusRequest",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/QueryConvertResultResponse;",
        "ticket",
        "sdk-data_release"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic docConvertAsync$default(Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "pdf"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertExecutor;->docConvertAsync(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final docConvertAsync(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertParamsBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetFormat"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;->setTarget(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;->setComponents(Ljava/util/List;)V

    sget-object p1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getDocConvertServiceSync()Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;->docConvertASync(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;

    return-object p0
.end method

.method public final docConvertV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "convertBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getDocConvertServiceSync()Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;->docConvertV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;

    return-object p0
.end method

.method public final getConvertConfig()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerConfigResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v0, Lcom/onyx/android/sdk/data/serverconvert/service/DocServerConfigService;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV1Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/service/DocServerConfigService;

    invoke-interface {p0}, Lcom/onyx/android/sdk/data/serverconvert/service/DocServerConfigService;->getSSLSeverInfo()Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerConfigResponse;

    return-object p0
.end method

.method public final queryConvertResultV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "queryBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getDocConvertServiceSync()Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;->queryDocConvertResultV2(Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;

    return-object p0
.end method

.method public final queryConvertStatusRequest(Ljava/lang/String;)Lcom/onyx/android/sdk/data/serverconvert/bean/QueryConvertResultResponse;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ticket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getDocConvertServiceSync()Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;->queryDocConvertResult(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/data/serverconvert/bean/QueryConvertResultResponse;

    return-object p0
.end method
