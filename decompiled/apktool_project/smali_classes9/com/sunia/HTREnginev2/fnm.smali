.class public final synthetic Lcom/sunia/HTREnginev2/fnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fnm;->e:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fnm;->f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fnm;->e:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fnm;->f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->q0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method
