.class final Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup$window$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/hjq/window/EasyWindow<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/hjq/window/EasyWindow;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup$window$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/hjq/window/EasyWindow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup$window$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->activity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup$window$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;)Lcom/onyx/galaxy/note/databinding/LayoutToolOperationTipBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->tool_operation_tip_show_interval:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->createIndicatorWindow(Landroid/app/Activity;Landroid/view/View;I)Lcom/hjq/window/EasyWindow;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup$window$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;

    .line 3
    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->access$getPopupFilter$p(Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;)Lcom/onyx/android/sdk/base/rx/RxFilter;

    move-result-object v1

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;->access$getLimitPopInterval(Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;)J

    move-result-wide v2

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup$window$2$a;

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup$window$2$a;-><init>(Lcom/hjq/window/EasyWindow;)V

    invoke-virtual {v1, v2, v3, p0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleFirst(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup$window$2;->invoke()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method
