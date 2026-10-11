.class public final Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->onStartNoteDocReplicatorEvent(Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$d;->e:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$d;->f:Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$d;->e:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$d;->f:Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/event/StartNoteDocReplicatorEvent;->getStartReplicatorBean()Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->mergeStartReplicatorBean(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$d;->a(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
