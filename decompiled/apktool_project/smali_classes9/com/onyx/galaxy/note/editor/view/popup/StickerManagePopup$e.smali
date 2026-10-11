.class public final Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->w(Z)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->f:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getMainCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/databinding/PopupStickersBinding;

    move-result-object p1

    const-string v1, "binding"

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupStickersBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v2, "tabLayout"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->f:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->selectTab(Lcom/google/android/material/tabs/TabLayout;I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/databinding/PopupStickersBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/onyx/galaxy/note/databinding/PopupStickersBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->f:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->scrollToTab(Lcom/google/android/material/tabs/TabLayout;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$e;->a(Ljava/util/List;)V

    return-void
.end method
