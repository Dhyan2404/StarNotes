.class public final Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0007J\t\u0010\t\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\nH\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u00c6\u0001J\t\u0010\u000f\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001J\u0013\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u000c\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\r\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;",
        "",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "getGateway",
        "",
        "getUserId",
        "getCacheKey",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;",
        "baseReplicatorArgs",
        "component1",
        "",
        "component2",
        "channel",
        "anonymous",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "a",
        "Ljava/lang/String;",
        "getChannel",
        "()Ljava/lang/String;",
        "b",
        "Z",
        "getAnonymous",
        "()Z",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->copy(Ljava/lang/String;Z)Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final baseReplicatorArgs()Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "channel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    iget-boolean p1, p1, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAnonymous()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    return p0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->Companion:Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;->cacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getAnonymousSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getUsername()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageReplicateArgs(channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", anonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
