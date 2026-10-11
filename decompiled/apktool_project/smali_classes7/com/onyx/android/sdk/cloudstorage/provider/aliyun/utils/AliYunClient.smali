.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0006\u0010\u0003\u001a\u00020\u0002J.\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\"\u0004\u0008\u0000\u0010\u00042\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u0005H\u0007J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00168\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;",
        "",
        "",
        "updateTokenHeader",
        "T",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;",
        "Lretrofit2/Call;",
        "function",
        "Lretrofit2/Response;",
        "executeCall",
        "d",
        "Lokhttp3/OkHttpClient;",
        "e",
        "f",
        "Lokhttp3/OkHttpClient$Builder;",
        "builder",
        "b",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "provider",
        "Lretrofit2/Retrofit;",
        "Lretrofit2/Retrofit;",
        "retrofit",
        "c",
        "Lokhttp3/OkHttpClient;",
        "httpClient",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;",
        "apiService",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lretrofit2/Retrofit;

.field public c:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/OkHttpClient$Builder;)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/GrayTestHeaderInterceptor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/GrayTestHeaderInterceptor;-><init>()V

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method public final b(Lokhttp3/OkHttpClient$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getTokenResponse()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/TokenHeaderInterceptor;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getBearAccessToken()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Authorization"

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/common/TokenHeaderInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->b:Lretrofit2/Retrofit;

    if-nez p0, :cond_0

    const-string p0, "retrofit"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;

    return-object p0
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->e()Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->f()V

    return-void
.end method

.method public final e()Lokhttp3/OkHttpClient;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/utils/HttpUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/HttpUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/HttpUtils;->createOkHttpBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenAuthenticator;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenAuthenticator;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenInterceptor;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenInterceptor;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->b(Lokhttp3/OkHttpClient$Builder;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->a(Lokhttp3/OkHttpClient$Builder;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/HttpUtils;->addLogInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->c:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    const-string p0, "httpClient"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
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
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;",
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->c()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;->parse(Lretrofit2/Response;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->Companion:Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->timeoutException()Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/data/common/exception/ContentException$NetworkException;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$NetworkException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final f()V
    .locals 2

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://openapi.aliyundrive.com/adrive/v1.0/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->c:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    const-string v1, "httpClient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory;->Companion:Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory$Companion;->create()Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->b:Lretrofit2/Retrofit;

    return-void
.end method

.method public final updateTokenHeader()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->d()V

    return-void
.end method
