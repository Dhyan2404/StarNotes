.class final Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeAlphaView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->q(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "progress",
        "",
        "progressValue",
        "isFromUser",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeAlphaView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeAlphaView$1;->invoke(FFZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FFZ)V
    .locals 0

    if-nez p3, :cond_2

    .line 2
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeAlphaView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->progressToAlpha(F)F

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeAlphaView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->access$getWritePenGroupArgsChangeListener$p(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;->onChangeAlphaFactor(F)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeAlphaView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setAlphaFactor(F)V

    .line 5
    :goto_0
    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeAlphaFactorEvent;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeStrokeAlphaFactorEvent;-><init>(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
