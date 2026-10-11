.class public final synthetic Lcom/sunia/HTREnginev2/x7j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x7j;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/x7j;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x7j;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x7j;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->e(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;)V

    return-void
.end method
