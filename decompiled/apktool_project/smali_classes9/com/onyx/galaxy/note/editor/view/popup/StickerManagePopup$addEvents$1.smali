.class final Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$addEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
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
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$addEvents$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$addEvents$1;->invoke(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$addEvents$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getMainCategories()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$addEvents$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->selectMainCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$addEvents$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/databinding/PopupStickersBinding;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupStickersBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method
