.class public final synthetic Lcom/sunia/HTREnginev2/y1l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

.field public final synthetic b:Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y1l;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/y1l;->b:Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/y1l;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y1l;->b:Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->l(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
