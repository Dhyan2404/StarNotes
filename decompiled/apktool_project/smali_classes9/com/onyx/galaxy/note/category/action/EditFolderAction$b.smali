.class public final Lcom/onyx/galaxy/note/category/action/EditFolderAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/EditFolderAction;->l()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/EditFolderAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/EditFolderAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/EditFolderAction$b;->e:Lcom/onyx/galaxy/note/category/action/EditFolderAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/EditFolderAction$b;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/EditFolderAction$b;->e:Lcom/onyx/galaxy/note/category/action/EditFolderAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/EditFolderAction$b;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/category/action/EditFolderAction;->access$postEvent(Lcom/onyx/galaxy/note/category/action/EditFolderAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/EditFolderAction$b;->a(Z)V

    return-void
.end method
