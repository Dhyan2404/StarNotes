.class public Lcom/oplus/ocs/base/common/api/CapabilityApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CapabilityApiClient"

.field private static volatile sApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/ocs/base/common/api/Api;",
            "Lcom/oplus/ocs/base/common/CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->sApis:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/content/Context;I)Lcom/oplus/ocs/base/common/CapabilityInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->buildCapabilityInfo(Landroid/content/Context;I)Lcom/oplus/ocs/base/common/CapabilityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->sApis:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$300([Lcom/oplus/ocs/base/common/api/Api;[ILcom/oplus/ocs/base/common/CapabilityListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->callback([Lcom/oplus/ocs/base/common/api/Api;[ILcom/oplus/ocs/base/common/CapabilityListener;)V

    return-void
.end method

.method private static buildCapabilityInfo(Landroid/content/Context;I)Lcom/oplus/ocs/base/common/CapabilityInfo;
    .locals 7

    new-instance v6, Lcom/oplus/ocs/base/common/AuthResult;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 p0, 0x4

    new-array v5, p0, [B

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/base/common/AuthResult;-><init>(Ljava/lang/String;III[B)V

    new-instance p0, Lcom/oplus/ocs/base/common/CapabilityInfo;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x186ab

    invoke-direct {p0, p1, v0, v6}, Lcom/oplus/ocs/base/common/CapabilityInfo;-><init>(Ljava/util/List;ILcom/oplus/ocs/base/common/AuthResult;)V

    return-object p0
.end method

.method private static declared-synchronized callback([Lcom/oplus/ocs/base/common/api/Api;[ILcom/oplus/ocs/base/common/CapabilityListener;)V
    .locals 4

    const-class v0, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;

    monitor-enter v0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2, p0, p1}, Lcom/oplus/ocs/base/common/CapabilityListener;->onResult([Lcom/oplus/ocs/base/common/api/Api;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static checkCapability(Lcom/oplus/ocs/base/common/api/Api;)Z
    .locals 2

    sget-object v0, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->sApis:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->sApis:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/CapabilityInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static checkSelfCapabilities(Landroid/content/Context;[Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/CapabilityListener;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v1, p1

    new-array v1, v1, [I

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_5

    aget-object v9, p1, v0

    sget-object v2, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->sApis:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->sApis:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/ocs/base/common/CapabilityInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/oplus/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/oplus/ocs/base/common/AuthResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/oplus/ocs/base/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "sapis none"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput v2, v1, v0

    :goto_1
    invoke-static {p1, v1, p2}, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->callback([Lcom/oplus/ocs/base/common/api/Api;[ILcom/oplus/ocs/base/common/CapabilityListener;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v9}, Lcom/oplus/ocs/base/common/api/Api;->isAuth()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/l;->a(Landroid/content/Context;)Lcom/oplus/ocs/base/common/api/l;

    move-result-object v10

    new-instance v11, Lcom/oplus/ocs/base/internal/ClientSettings;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/oplus/ocs/base/internal/ClientSettings;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/oplus/ocs/base/common/api/CapabilityApiClient$1;

    move-object v2, v12

    move-object v3, v1

    move v4, v0

    move-object v5, v9

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/oplus/ocs/base/common/api/CapabilityApiClient$1;-><init>([IILcom/oplus/ocs/base/common/api/Api;Landroid/content/Context;[Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/CapabilityListener;)V

    const-string v2, "api not be null"

    invoke-static {v9, v2}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "clientsettings not be null"

    invoke-static {v11, v2}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/oplus/ocs/base/common/api/m;

    iget-object v3, v10, Lcom/oplus/ocs/base/common/api/l;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v9, v4, v11}, Lcom/oplus/ocs/base/common/api/m;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/Api;Lcom/oplus/ocs/base/common/api/Api$ApiOptions;Lcom/oplus/ocs/base/internal/ClientSettings;)V

    new-instance v3, Lcom/oplus/ocs/base/common/api/l$3;

    invoke-direct {v3, v10, v9}, Lcom/oplus/ocs/base/common/api/l$3;-><init>(Lcom/oplus/ocs/base/common/api/l;Lcom/oplus/ocs/base/common/api/Api;)V

    invoke-interface {v2, v3}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->setOnClearListener(Lcom/oplus/ocs/base/common/api/j;)V

    invoke-interface {v2, v12}, Lcom/oplus/ocs/base/common/api/OplusApiClient;->setOnCapabilityAuthListener(Lcom/oplus/ocs/base/common/api/i;)V

    sget-object v3, Lcom/oplus/ocs/base/common/api/l;->c:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/oplus/ocs/base/common/api/Api;->getClientKey()Lcom/oplus/ocs/base/common/api/Api$ClientKey;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v9}, Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/Api;)V

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->TAG:Ljava/lang/String;

    const-string v3, "current capa doesn\'t need to authenticate."

    invoke-static {v2, v3}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e9

    aput v2, v1, v0

    sget-object v3, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->sApis:Ljava/util/Map;

    invoke-static {p0, v2}, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->buildCapabilityInfo(Landroid/content/Context;I)Lcom/oplus/ocs/base/common/CapabilityInfo;

    move-result-object v2

    invoke-interface {v3, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1, p2}, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->callback([Lcom/oplus/ocs/base/common/api/Api;[ILcom/oplus/ocs/base/common/CapabilityListener;)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    new-array p0, v0, [Lcom/oplus/ocs/base/common/api/Api;

    new-array p1, v0, [I

    invoke-interface {p2, p0, p1}, Lcom/oplus/ocs/base/common/CapabilityListener;->onResult([Lcom/oplus/ocs/base/common/api/Api;[I)V

    :cond_7
    sget-object p0, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->TAG:Ljava/lang/String;

    const-string p1, "capa apis is empty"

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getCapabilityInfo(Lcom/oplus/ocs/base/common/api/Api;)Lcom/oplus/ocs/base/common/CapabilityInfo;
    .locals 1

    sget-object v0, Lcom/oplus/ocs/base/common/api/CapabilityApiClient;->sApis:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/base/common/CapabilityInfo;

    return-object p0
.end method
