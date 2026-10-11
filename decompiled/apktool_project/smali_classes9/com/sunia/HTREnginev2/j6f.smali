.class public final synthetic Lcom/sunia/HTREnginev2/j6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j6f;->e:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j6f;->f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/j6f;->g:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j6f;->e:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/j6f;->f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j6f;->g:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->n(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Landroid/view/View;Z)V

    return-void
.end method
