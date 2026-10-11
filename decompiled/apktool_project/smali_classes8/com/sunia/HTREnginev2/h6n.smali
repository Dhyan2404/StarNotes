.class public final synthetic Lcom/sunia/HTREnginev2/h6n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h6n;->e:Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h6n;->e:Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;

    check-cast p1, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;->l(Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    return-void
.end method
