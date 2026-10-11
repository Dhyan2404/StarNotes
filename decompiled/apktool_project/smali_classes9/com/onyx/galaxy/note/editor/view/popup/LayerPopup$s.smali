.class public final Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->E0(I)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$s;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$s;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$s;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$s;->f:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$s;->a(Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V

    return-void
.end method
