.class public final Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0006R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010*\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010!\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010%\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "updateCurrentClusterInfo",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getHwrObserveOn",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;",
        "a",
        "Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;",
        "getRecognizerManager",
        "()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;",
        "setRecognizerManager",
        "(Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;)V",
        "recognizerManager",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "b",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "getEventBusHolder",
        "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "setEventBusHolder",
        "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V",
        "eventBusHolder",
        "c",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "getClusterInfo",
        "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "setClusterInfo",
        "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V",
        "clusterInfo",
        "",
        "d",
        "Ljava/lang/String;",
        "getModel",
        "()Ljava/lang/String;",
        "setModel",
        "(Ljava/lang/String;)V",
        "model",
        "e",
        "getFingerprint",
        "setFingerprint",
        "fingerprint",
        "<init>",
        "()V",
        "Companion",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static f:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->Companion:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->f:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->a:Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    new-instance v0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->b:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    new-instance v0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->c:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->f:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-object v0
.end method

.method public static final synthetic access$setEmpty$cp(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->f:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->a:Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->destroyAll()V

    return-void
.end method

.method public final getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->c:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->b:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getHwrObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->a:Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getRecognizeScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->a:Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    return-object p0
.end method

.method public final setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->c:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-void
.end method

.method public final setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->b:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method

.method public final setFingerprint(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->e:Ljava/lang/String;

    return-void
.end method

.method public final setModel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->d:Ljava/lang/String;

    return-void
.end method

.method public final setRecognizerManager(Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->a:Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    return-void
.end method

.method public final updateCurrentClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->c:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object v0
.end method
