.class public final Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;",
        "Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;",
        "ossConfig",
        "Lcom/onyx/android/sdk/data/common/oss/OssConfig;",
        "(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V",
        "getFederationToken",
        "Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;",
        "Companion",
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
.field private static final BEARER_TOKEN_PREFIX:Ljava/lang/String; = "Bearer "
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;->Companion:Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ossConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    return-void
.end method


# virtual methods
.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-class v0, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    iget-object v3, p0, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getOssSTS()Lcom/onyx/android/sdk/data/common/oss/OssSTS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/oss/OssSTS;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getCertificatesService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitUtils;

    sget-object v4, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;->Companion:Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/oss/OssConfig;->getToken()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-nez p0, :cond_0

    move-object p0, v5

    :cond_0
    :try_start_1
    invoke-virtual {v4, p0}, Lcom/onyx/android/sdk/data/common/oss/OnyxOSSFederationCredentialProvider$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;->getStss(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorBody:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, p0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-class v6, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;

    invoke-virtual {v2, v4, v6}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;

    sget-object v4, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;->Companion:Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$Companion;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$Companion;->hasData(Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;->getData()Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;->getAccessKeyId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_3

    move-object v3, v5

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;->getData()Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_5

    move-object v4, v5

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;->getData()Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v1

    :goto_2
    if-nez v6, :cond_7

    move-object v6, v5

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;->getData()Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;->getExpiration()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    move-object v5, v2

    :goto_4
    invoke-direct {p0, v3, v4, v6, v5}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_a
    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, p0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v2, v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v1
.end method
