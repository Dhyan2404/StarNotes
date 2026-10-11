.class public final Lcom/onyx/android/sdk/data/utils/RetrofitExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRetrofitExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetrofitExt.kt\ncom/onyx/android/sdk/data/utils/RetrofitExt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,83:1\n37#2,2:84\n*S KotlinDebug\n*F\n+ 1 RetrofitExt.kt\ncom/onyx/android/sdk/data/utils/RetrofitExt\n*L\n81#1:84,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\t\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n\"\u000e\u0008\u0001\u0010\u000b*\u0008\u0012\u0004\u0012\u0002H\n0\u000c*\u0008\u0012\u0004\u0012\u0002H\u000b0\r\u00a2\u0006\u0002\u0010\u000eJ5\u0010\u000f\u001a\u0002H\u000b\"\u0004\u0008\u0000\u0010\n\"\u000e\u0008\u0001\u0010\u000b*\u0008\u0012\u0004\u0012\u0002H\n0\u000c*\u0008\u0012\u0004\u0012\u0002H\u000b0\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010\u0012\u001a\u00020\u0013*\u0006\u0012\u0002\u0008\u00030\u0014J\u000e\u0010\u0015\u001a\u00020\u0013*\u0006\u0012\u0002\u0008\u00030\u0014J\u0016\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00180\u0017*\u00020\u0013R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/RetrofitExt;",
        "",
        "()V",
        "enableHttpDebug",
        "",
        "getEnableHttpDebug",
        "()Z",
        "setEnableHttpDebug",
        "(Z)V",
        "executeAndGetData",
        "T",
        "S",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lretrofit2/Call;",
        "(Lretrofit2/Call;)Ljava/lang/Object;",
        "executeAndGetResponse",
        "throwError",
        "(Lretrofit2/Call;Z)Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "getRequestHeaders",
        "Lokhttp3/Headers;",
        "Lretrofit2/Response;",
        "getResponseHeaders",
        "headersToMap",
        "",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRetrofitExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetrofitExt.kt\ncom/onyx/android/sdk/data/utils/RetrofitExt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,83:1\n37#2,2:84\n*S KotlinDebug\n*F\n+ 1 RetrofitExt.kt\ncom/onyx/android/sdk/data/utils/RetrofitExt\n*L\n81#1:84,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static enableHttpDebug:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse(Lretrofit2/Call;Z)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "TT;>;>(",
            "Lretrofit2/Call<",
            "TS;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getData()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "Data Format Error"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final executeAndGetResponse(Lretrofit2/Call;Z)Lcom/onyx/android/sdk/data/account/bean/DataResponse;
    .locals 7
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "TT;>;>(",
            "Lretrofit2/Call<",
            "TS;>;Z)TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    const-string v2, ""

    :try_start_0
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->getRequestHeaders(Lretrofit2/Response;)Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->headersToMap(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->getResponseHeaders(Lretrofit2/Response;)Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->headersToMap(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object p0

    sget-boolean v4, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->enableHttpDebug:Z

    if-eqz v4, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RequestHeaders: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->asPrettyJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseHeaders: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->asPrettyJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->setHeaders(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponseKt;->isSuccess(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Z

    move-result p0

    if-nez p0, :cond_4

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/data/common/error/ErrorCode;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/ErrorCode;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getResultCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/error/ErrorCode;->httpErrorFromCode(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    return-object p1

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "Resource Not Found"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "Unauthorized"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    instance-of p1, p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    if-nez p1, :cond_d

    instance-of p1, p0, Landroid/os/NetworkOnMainThreadException;

    if-nez p1, :cond_c

    instance-of p1, p0, Ljava/net/UnknownHostException;

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    move p1, p2

    goto :goto_3

    :cond_7
    instance-of p1, p0, Ljava/net/ConnectException;

    :goto_3
    if-eqz p1, :cond_8

    move p1, p2

    goto :goto_4

    :cond_8
    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    :goto_4
    if-nez p1, :cond_b

    instance-of p1, p0, Lcom/alibaba/fastjson2/JSONException;

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    instance-of p2, p0, Ljava/lang/NullPointerException;

    :goto_5
    if-eqz p2, :cond_a

    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "Data Format Error"

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_a
    sget-object p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const/4 p2, -0x1

    const-string v0, "Request Fail"

    invoke-virtual {p1, p0, v0, v0, p2}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_b
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const/16 p1, 0x65

    const-string p2, "Timeout"

    invoke-virtual {p0, p2, p2, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_c
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "Not Allowed On Main Thread"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_d
    throw p0
.end method

.method public final getEnableHttpDebug()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->enableHttpDebug:Z

    return p0
.end method

.method public final getRequestHeaders(Lretrofit2/Response;)Lokhttp3/Headers;
    .locals 0
    .param p1    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method public final getResponseHeaders(Lretrofit2/Response;)Lokhttp3/Headers;
    .locals 0
    .param p1    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method public final headersToMap(Lokhttp3/Headers;)Ljava/util/Map;
    .locals 0
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Lkotlin/Pair;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlin/Pair;

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlin/Pair;

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final setEnableHttpDebug(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->enableHttpDebug:Z

    return-void
.end method
