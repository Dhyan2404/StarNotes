.class public final Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->p(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$f;->e:Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$f;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$f;->e:Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$f;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->access$updateSyncStatus(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$f;->a(Lcom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
