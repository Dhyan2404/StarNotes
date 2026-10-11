.class public final synthetic Lcom/sunia/HTREnginev2/j6n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j6n;->e:Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j6n;->f:Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j6n;->e:Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6n;->f:Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;->l(Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;Landroid/view/View;)V

    return-void
.end method
