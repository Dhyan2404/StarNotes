.class public final Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->r(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

.field public final synthetic f:Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$f;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$f;->f:Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$f;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getRxOSSManager()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$f;->f:Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$f;->a(Z)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
