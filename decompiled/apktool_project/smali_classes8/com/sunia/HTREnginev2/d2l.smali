.class public final synthetic Lcom/sunia/HTREnginev2/d2l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    check-cast p2, Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/replicator/bean/PendingDocReplicators;->a(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)I

    move-result p0

    return p0
.end method
