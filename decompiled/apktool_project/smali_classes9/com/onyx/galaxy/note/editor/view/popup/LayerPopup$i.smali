.class public final Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->l0(Ljava/lang/Integer;ZZ)V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$i;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->setViewport(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$i;->a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-void
.end method
