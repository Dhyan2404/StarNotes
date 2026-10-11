.class public final Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->loadTabNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$a;->e:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->Companion:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$a;->e:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$Companion;->findByDocId(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$a;->a(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p0

    return-object p0
.end method
