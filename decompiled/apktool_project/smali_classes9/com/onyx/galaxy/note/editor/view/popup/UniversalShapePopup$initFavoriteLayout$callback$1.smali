.class public final Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/Callback;",
        "onItemDeleted",
        "",
        "data",
        "",
        "onItemSelected",
        "newType",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDeleted(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$updateFavoriteLayout(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->forceNotifyPenTypeChanged()V

    return-void
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$getUniversalShapeAttr(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$getUniversalShapeAttr(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->setType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$getUniversalShapeAttr(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->setFavorited(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$updateUniversalShapeAttr(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;->access$notifyShapeTypeChanged(Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup$initFavoriteLayout$callback$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/UniversalShapePopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->forceNotifyPenTypeChanged()V

    return-void
.end method
