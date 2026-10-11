.class final Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->h0(Landroid/view/View;I)V
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
.field final synthetic $item:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;->$item:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;->invoke(Landroid/view/MenuItem;)V

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

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 3
    sget v0, Lcom/onyx/galaxy/note/R$id;->delete:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;->$item:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->access$forceRemovePages(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$id;->restore:I

    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;->$item:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->access$restoreNotePages(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method
