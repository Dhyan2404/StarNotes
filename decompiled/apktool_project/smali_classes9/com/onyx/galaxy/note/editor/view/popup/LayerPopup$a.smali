.class public final Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->M()V
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


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$reportAddNoteEvent(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$a;->a(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method
