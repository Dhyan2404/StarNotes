.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J.\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\"\u0004\u0008\u0000\u0010\u00052\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0006H\u0007J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;",
        "",
        "",
        "updateTokenHeader",
        "init",
        "T",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;",
        "Lretrofit2/Call;",
        "function",
        "Lretrofit2/Response;",
        "executeCall",
        "b",
        "Lokhttp3/OkHttpClient;",
        "c",
        "Lokhttp3/OkHttpClient$Builder;",
        "builder",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "provider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;",
        "apiService",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->init()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/OkHttpClient$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getTokenResponse()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/TokenHeaderInterceptor;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->getBearAccessToken()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Authorization"

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/common/TokenHeaderInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->c()Lokhttp3/OkHttpClient;

    move-result-object p0

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://driveapis.cloud.huawei.com.cn/drive/v1/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory;->Companion:Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory$Companion;->create()Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;

    return-object p0
.end method

.method public final c()Lokhttp3/OkHttpClient;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/HttpUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/HttpUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/HttpUtils;->createOkHttpBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenAuthenticator;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenInterceptor;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenInterceptor;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->a(Lokhttp3/OkHttpClient$Builder;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/HttpUtils;->addLogInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public final executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;",
            "+",
            "Lretrofit2/Call<",
            "TT;>;>;)",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->b:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;

    if-nez p0, :cond_0

    const-string p0, "apiService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;->parse(Lretrofit2/Response;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->Companion:Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->timeoutException()Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/data/common/exception/ContentException$NetworkException;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$NetworkException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final init()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->b()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->b:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;

    return-void
.end method

.method public final updateTokenHeader()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;->init()V

    return-void
.end method
