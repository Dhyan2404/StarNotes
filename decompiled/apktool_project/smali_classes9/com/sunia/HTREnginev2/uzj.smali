.class public final synthetic Lcom/sunia/HTREnginev2/uzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uzj;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uzj;->f:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uzj;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uzj;->f:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->r0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Z)V

    return-void
.end method
