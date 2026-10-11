.class final Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/cluster/ClusterManager;->forceLoadObservable()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/data/cluster/ClusterManager;",
        "o",
        "apply"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/onyx/android/sdk/data/cluster/ClusterManager;)Lcom/onyx/android/sdk/data/cluster/ClusterManager;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/ClusterManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "o"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->setLoaded(Z)Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager$forceLoadObservable$1;->apply(Lcom/onyx/android/sdk/data/cluster/ClusterManager;)Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    move-result-object p0

    return-object p0
.end method
