.class public final Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$f;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$f;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;->getDocIdList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;-><init>(Ljava/util/List;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;->setTriggerSource(I)Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$f;->a(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V

    return-void
.end method
