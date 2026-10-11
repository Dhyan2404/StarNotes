.class public final Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0011\u0010\u0008\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0003\"\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0011\u0010\u0012\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0003\"\u0011\u0010\u0014\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0003\u00a8\u0006\u0016"
    }
    d2 = {
        "ApkVersionInterceptor",
        "Lokhttp3/Interceptor;",
        "getApkVersionInterceptor",
        "()Lokhttp3/Interceptor;",
        "Authenticator",
        "Lokhttp3/Authenticator;",
        "getAuthenticator",
        "()Lokhttp3/Authenticator;",
        "DeviceIdInterceptor",
        "getDeviceIdInterceptor",
        "DeviceSystemInterceptor",
        "Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;",
        "getDeviceSystemInterceptor",
        "()Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;",
        "LangHeaderInterceptor",
        "Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;",
        "getLangHeaderInterceptor",
        "()Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;",
        "LoginTokenInterceptor",
        "getLoginTokenInterceptor",
        "ProjectIdentifyInterceptor",
        "getProjectIdentifyInterceptor",
        "sdk-data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ApkVersionInterceptor:Lokhttp3/Interceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Authenticator:Lokhttp3/Authenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DeviceIdInterceptor:Lokhttp3/Interceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DeviceSystemInterceptor:Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LangHeaderInterceptor:Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LoginTokenInterceptor:Lokhttp3/Interceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ProjectIdentifyInterceptor:Lokhttp3/Interceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/d0i;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/d0i;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->ProjectIdentifyInterceptor:Lokhttp3/Interceptor;

    new-instance v0, Lcom/sunia/HTREnginev2/e0i;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e0i;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->LoginTokenInterceptor:Lokhttp3/Interceptor;

    new-instance v0, Lcom/sunia/HTREnginev2/f0i;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/f0i;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->ApkVersionInterceptor:Lokhttp3/Interceptor;

    new-instance v0, Lcom/sunia/HTREnginev2/g0i;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/g0i;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->DeviceIdInterceptor:Lokhttp3/Interceptor;

    new-instance v0, Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->LangHeaderInterceptor:Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;

    new-instance v0, Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->DeviceSystemInterceptor:Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;

    new-instance v0, Lcom/sunia/HTREnginev2/h0i;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/h0i;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->Authenticator:Lokhttp3/Authenticator;

    return-void
.end method

.method private static final ApkVersionInterceptor$lambda$5(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    const-string v0, "chain"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->getAppVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static final Authenticator$lambda$8(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 4

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    const-string v0, "Authorization"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    new-instance v0, Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->postEvent(Ljava/lang/Object;)V

    return-object v3
.end method

.method private static final DeviceIdInterceptor$lambda$7(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    const-string v0, "chain"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/bean/Device;->Companion:Lcom/onyx/android/sdk/data/account/bean/Device$Companion;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/account/bean/Device$Companion;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static final LoginTokenInterceptor$lambda$3(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    const-string v0, "chain"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static final ProjectIdentifyInterceptor$lambda$1(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    const-string v0, "chain"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "client-type"

    const-string v2, "galaxy"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->DeviceIdInterceptor$lambda$7(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->LoginTokenInterceptor$lambda$3(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->Authenticator$lambda$8(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->ApkVersionInterceptor$lambda$5(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->ProjectIdentifyInterceptor$lambda$1(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static final getApkVersionInterceptor()Lokhttp3/Interceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->ApkVersionInterceptor:Lokhttp3/Interceptor;

    return-object v0
.end method

.method public static final getAuthenticator()Lokhttp3/Authenticator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->Authenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public static final getDeviceIdInterceptor()Lokhttp3/Interceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->DeviceIdInterceptor:Lokhttp3/Interceptor;

    return-object v0
.end method

.method public static final getDeviceSystemInterceptor()Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->DeviceSystemInterceptor:Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;

    return-object v0
.end method

.method public static final getLangHeaderInterceptor()Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->LangHeaderInterceptor:Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;

    return-object v0
.end method

.method public static final getLoginTokenInterceptor()Lokhttp3/Interceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->LoginTokenInterceptor:Lokhttp3/Interceptor;

    return-object v0
.end method

.method public static final getProjectIdentifyInterceptor()Lokhttp3/Interceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v2/HttpInterceptorsKt;->ProjectIdentifyInterceptor:Lokhttp3/Interceptor;

    return-object v0
.end method
