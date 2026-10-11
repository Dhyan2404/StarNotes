.class public final Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0008R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u0004\u0010\u000eR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0007\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;",
        "",
        "Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;",
        "error",
        "setError",
        "",
        "status",
        "setStatus",
        "",
        "isSuccess",
        "a",
        "Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;",
        "getError",
        "()Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;",
        "(Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;)V",
        "b",
        "I",
        "getStatus",
        "()I",
        "(I)V",
        "<init>",
        "()V",
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
.field public a:Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->b:I

    return-void
.end method


# virtual methods
.method public final getError()Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->a:Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->b:I

    return p0
.end method

.method public final isSuccess()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->a:Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setError(Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->a:Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    return-object p0
.end method

.method public final setError(Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->a:Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    return-void
.end method

.method public final setStatus(I)Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->b:I

    return-object p0
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/ReplicatorBean;->b:I

    return-void
.end method
