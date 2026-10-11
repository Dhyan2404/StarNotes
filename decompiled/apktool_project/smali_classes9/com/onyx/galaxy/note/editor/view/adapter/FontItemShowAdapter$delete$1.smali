.class final Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->t(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "editTextStr",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $item:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->$item:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/ui/CommonDialog;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/CommonDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "editTextStr"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/galaxy/note/editor/event/TextFontItemDeleteEvent;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->$item:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {p2, v0}, Lcom/onyx/galaxy/note/editor/event/TextFontItemDeleteEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->$item:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->$item:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->remove(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
