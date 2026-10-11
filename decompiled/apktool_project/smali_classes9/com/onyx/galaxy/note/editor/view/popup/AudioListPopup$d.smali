.class public final Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->H(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;->f:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;->f:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$getListener$p(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;->f:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;->onItemChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$d;->a(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    return-void
.end method
