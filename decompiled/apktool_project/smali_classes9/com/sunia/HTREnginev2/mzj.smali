.class public final synthetic Lcom/sunia/HTREnginev2/mzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mzj;->e:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mzj;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzj;->e:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mzj;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->n(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    return-void
.end method
