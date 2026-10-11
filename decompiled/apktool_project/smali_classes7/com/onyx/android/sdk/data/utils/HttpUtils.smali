.class public final Lcom/onyx/android/sdk/data/utils/HttpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fJ/\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u001a\u0010\u0011\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00130\u0012\"\u0006\u0012\u0002\u0008\u00030\u0013\u00a2\u0006\u0002\u0010\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/HttpUtils;",
        "",
        "()V",
        "httpLogLevel",
        "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        "getHttpLogLevel",
        "()Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        "setHttpLogLevel",
        "(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V",
        "addLogInterceptor",
        "",
        "builder",
        "Lokhttp3/OkHttpClient$Builder;",
        "createOkHttpBuilder",
        "args",
        "Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;",
        "removeInterceptors",
        "clazz",
        "",
        "Ljava/lang/Class;",
        "(Lokhttp3/OkHttpClient$Builder;[Ljava/lang/Class;)V",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/utils/HttpUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static httpLogLevel:Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/HttpUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/utils/HttpUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/HttpUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/HttpUtils;

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    sput-object v0, Lcom/onyx/android/sdk/data/utils/HttpUtils;->httpLogLevel:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addLogInterceptor(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lokhttp3/logging/HttpLoggingInterceptor;

    aput-object v2, v0, v1

    const-class v1, Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxHttpLoggingInterceptor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/HttpUtils;->removeInterceptors(Lokhttp3/OkHttpClient$Builder;[Ljava/lang/Class;)V

    new-instance p0, Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxHttpLoggingInterceptor;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v0}, Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxHttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/HttpUtils;->httpLogLevel:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxHttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    return-void
.end method

.method public final createOkHttpBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->Companion:Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs$Companion;->thirdPartyServiceCreateArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/HttpUtils;->createOkHttpBuilder(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final createOkHttpBuilder(Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;)Lokhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getOkhttpReadTimeoutSecond()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getOkHttpWriteTimeoutSecond()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/android/sdk/data/common/cloud/v2/AndroidVersionHeaderInterceptor;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/common/cloud/v2/AndroidVersionHeaderInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/data/common/cloud/v2/ClientIdHeaderInterceptor;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/common/cloud/v2/ClientIdHeaderInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/onyx/android/sdk/data/common/cloud/v2/MarketChannelHeaderInterceptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/onyx/android/sdk/data/common/cloud/v2/MarketChannelHeaderInterceptor;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getUseTokenInterceptor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->getLoginTokenInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getUseApkVersionInterceptor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->getApkVersionInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getUseDeviceInterceptor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->getDeviceIdInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getUseLangInterceptor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->getLangHeaderInterceptor()Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getUseAuthInterceptor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-static {}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->getAuthenticator()Lokhttp3/Authenticator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getUseProjectIdentityInterceptor()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-static {}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->getProjectIdentifyInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;->getUseDeviceSystemInterceptor()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-static {}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->getDeviceSystemInterceptor()Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 22
    :cond_6
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/HttpUtils;->addLogInterceptor(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public final getHttpLogLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/HttpUtils;->httpLogLevel:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public final varargs removeInterceptors(Lokhttp3/OkHttpClient$Builder;[Ljava/lang/Class;)V
    .locals 1
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient$Builder;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clazz"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    array-length p0, p2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance p1, Lcom/onyx/android/sdk/data/utils/HttpUtils$removeInterceptors$1;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/data/utils/HttpUtils$removeInterceptors$1;-><init>([Ljava/lang/Class;)V

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelyRemove(Ljava/util/Collection;Ljava/lang/Comparable;Z)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final setHttpLogLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V
    .locals 0
    .param p1    # Lokhttp3/logging/HttpLoggingInterceptor$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/data/utils/HttpUtils;->httpLogLevel:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method
