.class final Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$showPenBoxActionPopup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->G(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/MenuItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/MenuItem;",
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
.field final synthetic $pos:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$showPenBoxActionPopup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$showPenBoxActionPopup$1;->$pos:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$showPenBoxActionPopup$1;->invoke(Landroid/view/MenuItem;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/MenuItem;)V
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$showPenBoxActionPopup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->access$getPenBoxAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$showPenBoxActionPopup$1;->$pos:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 3
    sget v1, Lcom/onyx/galaxy/note/R$id;->delete:I

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$showPenBoxActionPopup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->access$deletePenBox(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    sget v1, Lcom/onyx/galaxy/note/R$id;->rename:I

    if-ne p1, v1, :cond_2

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$showPenBoxActionPopup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->access$showPenCreatePopup(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V

    :cond_2
    :goto_0
    return-void
.end method
