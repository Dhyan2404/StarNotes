.class public final Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$g;
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

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$g;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$g;->f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;
    .locals 1
    .param p1    # Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "getObjectResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$g;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$g;->f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->access$saveToFile(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$g;->a(Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;

    move-result-object p0

    return-object p0
.end method
