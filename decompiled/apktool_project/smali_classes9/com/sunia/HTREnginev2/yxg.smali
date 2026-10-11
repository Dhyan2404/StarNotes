.class public final synthetic Lcom/sunia/HTREnginev2/yxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yxg;->e:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yxg;->f:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/yxg;->g:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yxg;->e:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yxg;->f:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yxg;->g:Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->s(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;Landroid/view/View;)V

    return-void
.end method
