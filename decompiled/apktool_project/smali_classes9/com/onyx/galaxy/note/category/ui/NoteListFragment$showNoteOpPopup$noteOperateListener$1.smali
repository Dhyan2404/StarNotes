.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup$NoteOperateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->U1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1",
        "Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup$NoteOperateListener;",
        "addTagsToNote",
        "",
        "noteModelBean",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "changeNoteTemplate",
        "copyNote",
        "deleteNote",
        "editNote",
        "exportNote",
        "modifyNoteLock",
        "moveNote",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagsToNote(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$handleEditTagToNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public changeNoteTemplate(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$handleShowTemplate(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public copyNote(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$handleCopyNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public deleteNote(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$handleDeleteNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public editNote(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$handleEditNode(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public exportNote(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$handleExportNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public modifyNoteLock(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->n1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public moveNote(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteModelBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;->a:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$handleMoveNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method
