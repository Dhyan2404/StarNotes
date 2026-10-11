.class public final Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->onStickerImagePicked(Lcom/onyx/android/sdk/universal/editor/events/note/InsertStickerImagesEvent;)V
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


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;)Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedMainCategoryIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->updateStickerList(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$i;->a(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    return-void
.end method
