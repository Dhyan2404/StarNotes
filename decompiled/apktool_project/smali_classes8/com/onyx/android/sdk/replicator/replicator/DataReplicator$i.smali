.class public final Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->u(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;->e:Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;->e:Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getRxOSSManager()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;->e:Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->putObject(Lcom/onyx/android/sdk/data/common/oss/PutObjectBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$i;->a(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
