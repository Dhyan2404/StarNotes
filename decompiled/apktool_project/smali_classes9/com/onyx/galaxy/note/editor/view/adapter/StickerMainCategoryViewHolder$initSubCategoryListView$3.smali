.class final Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->access$getSubCategoryAdapter$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "subCategoryAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getSubCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getSubCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->access$getBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedSubCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->access$getBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedSubCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->setSubCategory$note_overseasRelease(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    .line 5
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->updateSubCategoryStickerList()V

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->updateSubCategoryList()V

    return-void
.end method
