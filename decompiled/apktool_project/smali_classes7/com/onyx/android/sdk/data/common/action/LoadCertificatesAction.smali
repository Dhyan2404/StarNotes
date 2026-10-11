.class public final Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
        "key",
        "",
        "forceFromCloud",
        "",
        "(Ljava/lang/String;Z)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "loadFromCache",
        "loadFromCloud",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "loadProviderCertificate",
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
.field public static final CLOUD_STORAGE_KEY:Ljava/lang/String; = "galaxyCloudStorage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SDK_KEY:Ljava/lang/String; = "galaxy_note_sdk_android"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final forceFromCloud:Z

.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->Companion:Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->key:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->forceFromCloud:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$loadFromCloud(Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->loadFromCloud(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadProviderCertificate(Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->loadProviderCertificate()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final loadFromCache()Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCertificate;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->getProviderCertificates(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    move-result-object p0

    return-object p0
.end method

.method private final loadFromCloud(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/request/GetCertificatesRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->loadOnyxCloudDataApiBaseUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/onyx/android/sdk/data/common/request/GetCertificatesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/request/GetCertificatesRequest;->execute()Lcom/onyx/android/sdk/data/common/data/Certificates;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " certificates loaded from cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->key:Ljava/lang/String;

    const-string v1, "galaxyCloudStorage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCertificate;

    const-string v0, "provider_certificates_key"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->saveProviderCertificates(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/Certificates;)V

    goto :goto_0

    :cond_0
    const-string v1, "galaxy_note_sdk_android"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCertificate;

    const-string v0, "sdk_certificates_key"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->saveProviderCertificates(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/Certificates;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCertificate;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->key:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->saveProviderCertificates(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/data/Certificates;)V

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/Certificates;->getCert()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    return-object p0
.end method

.method private final loadProviderCertificate()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->loadFromCache()Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->forceFromCloud:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;->Companion:Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Companion;->isValid(Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$loadProviderCertificate$1;->INSTANCE:Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$loadProviderCertificate$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$loadProviderCertificate$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$loadProviderCertificate$2;-><init>(Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction$create$1;-><init>(Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
