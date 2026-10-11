.class public abstract Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "T",
        "",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;",
        "()V",
        "getCurNoteRepManagerObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->getCurNoteRepManagerObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
