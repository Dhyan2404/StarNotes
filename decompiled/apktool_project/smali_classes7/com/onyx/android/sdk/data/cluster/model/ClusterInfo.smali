.class public final Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 B2\u00020\u0001:\u0001BB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u00100\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u000cH\u0007J\u0010\u00102\u001a\u00020\u000c2\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u000cH\u0007J\u0010\u00106\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u000cH\u0007J\u0006\u00107\u001a\u00020\nJ\u0010\u00108\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u0000H\u0007J\u0012\u00108\u001a\u00020\u00142\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\u0006\u0010:\u001a\u00020\u000cJ\u0006\u0010;\u001a\u00020\u000cJ\u0006\u0010<\u001a\u00020\u000cJ\u0006\u0010=\u001a\u00020\u000cJ\u0006\u0010>\u001a\u00020\u000cJ\u0006\u0010?\u001a\u00020\u000cJ\u000e\u0010@\u001a\u00020A2\u0006\u0010\t\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00020\n8\u0002@\u0002X\u0083.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000c8G\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0013\u001a\u00020\u00148G\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00148G\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0017\u001a\u00020\u00148G\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u001a\u0010\u0018\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000e\"\u0004\u0008\u001a\u0010\u0010R\u0011\u0010\u001b\u001a\u00020\u001c8G\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u000c8G\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u000eR\u001a\u0010!\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001a\u0010$\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000e\"\u0004\u0008&\u0010\u0010R\u001a\u0010\'\u001a\u00020(X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u000e\"\u0004\u0008/\u0010\u0010\u00a8\u0006C"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "",
        "()V",
        "cbConfig",
        "Lcom/onyx/android/sdk/data/cluster/model/CBConfig;",
        "getCbConfig",
        "()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;",
        "setCbConfig",
        "(Lcom/onyx/android/sdk/data/cluster/model/CBConfig;)V",
        "clusterHost",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;",
        "clusterId",
        "",
        "getClusterId",
        "()Ljava/lang/String;",
        "setClusterId",
        "(Ljava/lang/String;)V",
        "internationalCloudDataUrl",
        "getInternationalCloudDataUrl",
        "isChineseCluster",
        "",
        "()Z",
        "isDevCluster",
        "isUSASCluster",
        "lang",
        "getLang",
        "setLang",
        "locale",
        "Ljava/util/Locale;",
        "getLocale",
        "()Ljava/util/Locale;",
        "localeStr",
        "getLocaleStr",
        "messageCBConfig",
        "getMessageCBConfig",
        "setMessageCBConfig",
        "name",
        "getName",
        "setName",
        "ossConfig",
        "Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;",
        "getOssConfig",
        "()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;",
        "setOssConfig",
        "(Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V",
        "region",
        "getRegion",
        "setRegion",
        "getApi",
        "url",
        "getApiHost",
        "cloudType",
        "",
        "getApiV1",
        "getApiV2",
        "getClusterHost",
        "isSameCluster",
        "clusterInfo",
        "loadBookShopApiBaseUrl",
        "loadOnyxApiBaseUrl",
        "loadOnyxApiV2",
        "loadOnyxCloudDataApiBaseUrl",
        "loadOnyxContentApiBaseUrl",
        "loadOnyxSend2BooxApiBaseUrl",
        "setClusterHost",
        "",
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
.field public static final Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public cbConfig:Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

.field private clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "host"
        }
    .end annotation
.end field

.field public clusterId:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public messageCBConfig:Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

.field public name:Ljava/lang/String;

.field public ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

.field private region:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApiHost(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getApiHost(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setClusterHost$p(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    return-void
.end method

.method private final getApiHost(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxApiBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxSend2BooxApiBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxContentApiBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxCloudDataApiBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxApiBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getApi(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "url"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/api/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getApiV1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "url"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/api/1/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getApiV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "url"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/api/v2/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCbConfig()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->cbConfig:Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cbConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getClusterHost()Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    if-nez p0, :cond_0

    const-string p0, "clusterHost"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getClusterId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterId:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "clusterId"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInternationalCloudDataUrl()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->isChineseCluster()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "http://cn-data.onyx-international.cn"

    goto :goto_0

    :cond_0
    const-string p0, "http://en-data.onyx-international.cn"

    :goto_0
    return-object p0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->lang:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "lang"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getLang()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getLocaleByLang(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public final getLocaleStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getLocaleStr(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMessageCBConfig()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->messageCBConfig:Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "messageCBConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "name"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOssConfig()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "ossConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final isChineseCluster()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getLang()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isDevCluster()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getTEST_SERVER_ID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isSameCluster(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->isSameCluster(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSameCluster(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isUSASCluster()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getLang()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final loadBookShopApiBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    if-nez v0, :cond_0

    const-string v0, "clusterHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getShopBookUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getApi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadOnyxApiBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    if-nez v0, :cond_0

    const-string v0, "clusterHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getOnyxHostBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getApiV1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadOnyxApiV2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    if-nez v0, :cond_0

    const-string v0, "clusterHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getOnyxHostBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getApiV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadOnyxCloudDataApiBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    if-nez v0, :cond_0

    const-string v0, "clusterHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getOnyxCloudDataHostBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getApi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadOnyxContentApiBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    if-nez v0, :cond_0

    const-string v0, "clusterHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getOnyxContentHostBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getApiV1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final loadOnyxSend2BooxApiBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    if-nez v0, :cond_0

    const-string v0, "clusterHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getOnyxSend2BooxHostBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getApiV1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setCbConfig(Lcom/onyx/android/sdk/data/cluster/model/CBConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->cbConfig:Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    return-void
.end method

.method public final setClusterHost(Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clusterHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterHost:Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    return-void
.end method

.method public final setClusterId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->clusterId:Ljava/lang/String;

    return-void
.end method

.method public final setLang(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->lang:Ljava/lang/String;

    return-void
.end method

.method public final setMessageCBConfig(Lcom/onyx/android/sdk/data/cluster/model/CBConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/CBConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->messageCBConfig:Lcom/onyx/android/sdk/data/cluster/model/CBConfig;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOssConfig(Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->ossConfig:Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;

    return-void
.end method

.method public final setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->region:Ljava/lang/String;

    return-void
.end method
