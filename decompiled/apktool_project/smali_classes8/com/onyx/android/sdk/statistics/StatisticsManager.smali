.class public final Lcom/onyx/android/sdk/statistics/StatisticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatisticsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatisticsManager.kt\ncom/onyx/android/sdk/statistics/StatisticsManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,107:1\n372#2,7:108\n*S KotlinDebug\n*F\n+ 1 StatisticsManager.kt\ncom/onyx/android/sdk/statistics/StatisticsManager\n*L\n102#1:108,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J*\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00022\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011J\"\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0008J*\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00082\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0008J\u0006\u0010\u001d\u001a\u00020\u0004J\u0008\u0010\u001f\u001a\u00020\u001eH\u0002R \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001e0\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001e\u0010%\u001a\u00020\n2\u0006\u0010#\u001a\u00020\n8\u0002@BX\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008 \u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/statistics/StatisticsManager;",
        "",
        "Landroid/content/Context;",
        "appContext",
        "",
        "beforeInit",
        "context",
        "",
        "",
        "args",
        "Lcom/onyx/android/sdk/statistics/StatisticsType;",
        "type",
        "",
        "init",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
        "createInitSdkAction",
        "Landroid/app/Activity;",
        "activity",
        "isWechatInstallation",
        "Lcom/onyx/android/sdk/statistics/AuthResultListener;",
        "listener",
        "getWeChatInfo",
        "switchStatistics",
        "eventID",
        "onEvent",
        "map",
        "userId",
        "onProfileSignIn",
        "onProfileSignOff",
        "Lcom/onyx/android/sdk/statistics/StatisticsBase;",
        "b",
        "a",
        "Ljava/util/Map;",
        "providerMap",
        "<set-?>",
        "Lcom/onyx/android/sdk/statistics/StatisticsType;",
        "currentStatisticsType",
        "Lcom/onyx/android/sdk/statistics/IStatistics;",
        "c",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/statistics/IStatistics;",
        "statistics",
        "<init>",
        "()V",
        "sdk-statistics_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStatisticsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatisticsManager.kt\ncom/onyx/android/sdk/statistics/StatisticsManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,107:1\n372#2,7:108\n*S KotlinDebug\n*F\n+ 1 StatisticsManager.kt\ncom/onyx/android/sdk/statistics/StatisticsManager\n*L\n102#1:108,7\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/statistics/StatisticsType;",
            "Lcom/onyx/android/sdk/statistics/StatisticsBase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/statistics/StatisticsType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/statistics/StatisticsType;->Empty:Lcom/onyx/android/sdk/statistics/StatisticsType;

    iput-object v0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b:Lcom/onyx/android/sdk/statistics/StatisticsType;

    sget-object v0, Lcom/onyx/android/sdk/statistics/StatisticsManager$statistics$2;->INSTANCE:Lcom/onyx/android/sdk/statistics/StatisticsManager$statistics$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic getWeChatInfo$default(Lcom/onyx/android/sdk/statistics/StatisticsManager;Landroid/content/Context;Landroid/app/Activity;Lcom/onyx/android/sdk/statistics/AuthResultListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->getWeChatInfo(Landroid/content/Context;Landroid/app/Activity;Lcom/onyx/android/sdk/statistics/AuthResultListener;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/statistics/IStatistics;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->c:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/statistics/IStatistics;

    return-object p0
.end method

.method public final b()Lcom/onyx/android/sdk/statistics/StatisticsBase;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b:Lcom/onyx/android/sdk/statistics/StatisticsType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b:Lcom/onyx/android/sdk/statistics/StatisticsType;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/statistics/StatisticsBase;

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/statistics/StatisticsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b:Lcom/onyx/android/sdk/statistics/StatisticsType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider is not found,return the EmptyStatistics."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/statistics/StatisticsType;->Empty:Lcom/onyx/android/sdk/statistics/StatisticsType;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/onyx/android/sdk/statistics/EmptyStatistics;

    invoke-direct {v1}, Lcom/onyx/android/sdk/statistics/EmptyStatistics;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v1, Lcom/onyx/android/sdk/statistics/StatisticsBase;

    return-object v1
.end method

.method public final beforeInit(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a()Lcom/onyx/android/sdk/statistics/IStatistics;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/statistics/StatisticsBase;->beforeInit(Landroid/content/Context;)V

    return-void
.end method

.method public final createInitSdkAction(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a()Lcom/onyx/android/sdk/statistics/IStatistics;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/onyx/android/sdk/statistics/StatisticsBase;->createInitSdkAction(Landroid/content/Context;Lcom/onyx/android/sdk/statistics/StatisticsManager;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    return-object p0
.end method

.method public final getWeChatInfo(Landroid/content/Context;Landroid/app/Activity;Lcom/onyx/android/sdk/statistics/AuthResultListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/statistics/AuthResultListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a()Lcom/onyx/android/sdk/statistics/IStatistics;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/onyx/android/sdk/statistics/IStatisticsShare;->getWeChatInfo(Landroid/content/Context;Landroid/app/Activity;Lcom/onyx/android/sdk/statistics/AuthResultListener;)V

    return-void
.end method

.method public final init(Landroid/content/Context;Ljava/util/Map;Lcom/onyx/android/sdk/statistics/StatisticsType;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/statistics/StatisticsType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/statistics/StatisticsType;",
            ")Z"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a()Lcom/onyx/android/sdk/statistics/IStatistics;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onyx/android/sdk/statistics/StatisticsBase;->init(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a()Lcom/onyx/android/sdk/statistics/IStatistics;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b:Lcom/onyx/android/sdk/statistics/StatisticsType;

    :cond_0
    return p1
.end method

.method public final isWechatInstallation(Landroid/app/Activity;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a()Lcom/onyx/android/sdk/statistics/IStatistics;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/statistics/IStatisticsShare;->isWechatInstallation(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public final onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b()Lcom/onyx/android/sdk/statistics/StatisticsBase;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/statistics/StatisticsBase;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b()Lcom/onyx/android/sdk/statistics/StatisticsBase;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/onyx/android/sdk/statistics/StatisticsBase;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onProfileSignIn(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b()Lcom/onyx/android/sdk/statistics/StatisticsBase;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/statistics/StatisticsBase;->onProfileSignIn(Ljava/lang/String;)V

    return-void
.end method

.method public final onProfileSignOff()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b()Lcom/onyx/android/sdk/statistics/StatisticsBase;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/statistics/StatisticsBase;->onProfileSignOff()V

    return-void
.end method

.method public final switchStatistics(Lcom/onyx/android/sdk/statistics/StatisticsType;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/statistics/StatisticsType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/statistics/StatisticsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " provider has not initiated."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/statistics/StatisticsManager;->b:Lcom/onyx/android/sdk/statistics/StatisticsType;

    const/4 p0, 0x1

    return p0
.end method
