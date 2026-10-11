.class final Lcom/onyx/android/sdk/replicator/KSyncBundle$eventBusHolder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/KSyncBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle$eventBusHolder$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/KSyncBundle$eventBusHolder$2;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle$eventBusHolder$2;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle$eventBusHolder$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle$eventBusHolder$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle$eventBusHolder$2;->invoke()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    return-object p0
.end method
