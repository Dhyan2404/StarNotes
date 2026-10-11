.class public final Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;
.super Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;",
        "",
        "o",
        "Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;",
        "u",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;",
        "penPopupContext",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final u:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penPopupContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->u:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->o()V

    return-void
.end method


# virtual methods
.method public final n()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->u:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;

    return-object p0
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarThickness"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;->seekBarSmooth:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarSmooth"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initSmoothLevelView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;->addToPenBox:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "addToPenBox"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initPenBoxOperateView(Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;->seekBarSmooth:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initSmoothLevelView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    return-void
.end method
