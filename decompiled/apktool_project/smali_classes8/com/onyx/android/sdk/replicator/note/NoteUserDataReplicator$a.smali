.class public final Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;->syncActual()Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator$a;->e:Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/action/LoadNoteUserSyncDataListAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/action/LoadNoteUserSyncDataListAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator$a;->e:Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteUserSyncDataListAction;->getSyncDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->syncDataFile(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteUserSyncDataListAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteUserDataReplicator$a;->a(Lcom/onyx/android/sdk/replicator/note/action/LoadNoteUserSyncDataListAction;)V

    return-void
.end method
