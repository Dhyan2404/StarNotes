.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->r1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$q;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ExpandParentFolderEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$q;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/event/ExpandParentFolderEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$q;->a(Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;)V

    return-void
.end method
