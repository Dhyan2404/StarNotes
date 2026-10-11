.class public final Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$j;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$j;->f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$j;->e:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$j;->f:Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->access$onPushError(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator$j;->a(Ljava/lang/Throwable;)V

    return-void
.end method
