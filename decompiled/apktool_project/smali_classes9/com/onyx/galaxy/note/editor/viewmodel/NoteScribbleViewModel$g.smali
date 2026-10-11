.class public final Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->onUserNoteListImported(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;Lio/reactivex/rxjava3/functions/Consumer;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$g;->e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$g;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$g;->e:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$g;->f:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->updateTabNoteList$default(Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;ZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$g;->a(Ljava/util/List;)V

    return-void
.end method
