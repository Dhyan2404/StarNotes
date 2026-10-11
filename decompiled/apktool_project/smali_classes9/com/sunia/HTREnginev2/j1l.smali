.class public final synthetic Lcom/sunia/HTREnginev2/j1l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j1l;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j1l;->f:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j1l;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j1l;->f:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->m(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Landroid/view/View;)V

    return-void
.end method
