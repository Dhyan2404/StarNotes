.class public final Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\"\u0010\u000c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u0006\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "getReplicatorInfo",
        "",
        "success",
        "setSuccess",
        "a",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "replicatorInfo",
        "b",
        "Z",
        "isSuccess",
        "()Z",
        "(Z)V",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V",
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
.field public final a:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;->a:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-void
.end method


# virtual methods
.method public final getReplicatorInfo()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;->a:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-object p0
.end method

.method public final isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;->b:Z

    return p0
.end method

.method public final setSuccess(Z)Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;->b:Z

    return-object p0
.end method

.method public final setSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/event/NoteDocSyncFinishEvent;->b:Z

    return-void
.end method
