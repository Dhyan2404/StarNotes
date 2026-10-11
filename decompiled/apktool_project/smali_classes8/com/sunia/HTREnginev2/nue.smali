.class public final synthetic Lcom/sunia/HTREnginev2/nue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nue;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nue;->f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nue;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nue;->f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->a(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V

    return-void
.end method
