.class final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->show(Landroid/app/Activity;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "touchMoving",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/common/events/ResetPenBoxPositionEvent;-><init>()V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->dismissAllPopup()V

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$expandOrCollapse(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$2;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$isCollapse$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ZZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
