.class final Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;",
        "invoke",
        "(Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)Ljava/lang/Boolean;"
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
.field final synthetic $isLock:Z

.field final synthetic $item:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;


# direct methods
.method public constructor <init>(ZLcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;->$isLock:Z

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;->$item:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;->$isLock:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;->$item:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->isCurrentLayerId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$toggleLayerLock$2;->invoke(Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
