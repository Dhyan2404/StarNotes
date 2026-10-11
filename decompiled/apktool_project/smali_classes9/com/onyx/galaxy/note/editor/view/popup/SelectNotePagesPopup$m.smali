.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->c0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$m;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$m;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->access$getNoteListAdapter(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->flattenToMap(Lcom/onyx/android/sdk/base/data/TreeNode;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->setTagByIdMap(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$m;->a(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method
