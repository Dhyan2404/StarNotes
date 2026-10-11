.class public final synthetic Lcom/sunia/HTREnginev2/h9n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h9n;->a:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/h9n;->b:Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h9n;->a:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h9n;->b:Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;->C(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
