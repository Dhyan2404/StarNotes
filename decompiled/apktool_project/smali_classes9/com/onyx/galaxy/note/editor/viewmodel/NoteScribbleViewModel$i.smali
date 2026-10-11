.class public final Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->updateTabNoteList(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Z)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$i;->e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$i;->f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$i;->e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$i;->f:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->loadTabNoteList(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$i;->a(Z)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
