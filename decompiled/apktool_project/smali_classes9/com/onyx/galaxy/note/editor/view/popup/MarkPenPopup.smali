.class public final Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;
.super Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001 B\u001b\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\nH\u0002R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;",
        "",
        "onShow",
        "onDismiss",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;",
        "event",
        "onChangePenArgsEvent",
        "w",
        "v",
        "",
        "isRoundCorner",
        "isFromClick",
        "z",
        "r",
        "roundCorner",
        "y",
        "lineDrawing",
        "x",
        "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "u",
        "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "markPenArgsChangeListener",
        "Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;",
        "Lkotlin/Lazy;",
        "q",
        "()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;",
        "penPopupContext",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;)V",
        "MarkPenArgsChangeListener",
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
.field public final u:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final v:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "penPopupContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->v:Lkotlin/Lazy;

    .line 5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->w()V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->r()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;)V

    return-void
.end method

.method public static synthetic A(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->z(ZZ)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->t(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->u(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->s(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->y(Z)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->y(Z)V

    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->x(Z)V

    return-void
.end method


# virtual methods
.method public final onChangePenArgsEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->rightAngleType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;->onPenArgsChanged(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->roundCornerType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;->onPenArgsChanged(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onDismiss()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->v:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    return-object p0
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->rightAngleType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    new-instance v1, Lcom/sunia/HTREnginev2/z8j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z8j;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->roundCornerType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    new-instance v1, Lcom/sunia/HTREnginev2/a9j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a9j;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->switchLineDrawing:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/b9j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b9j;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final v()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    sget v1, Lcom/onyx/android/sdk/genericshape/R$raw;->preview_point_data_marker_pen:I

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getPreviewPointsData(I)Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->rightAngleType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->MARKER_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;->setShapeData(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->roundCornerType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;->setShapeData(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->rightAngleType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;->onPenArgsChanged(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->roundCornerType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;->onPenArgsChanged(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public final w()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarThickness"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->addToPenBox:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "addToPenBox"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initPenBoxOperateView(Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getRoundCorner()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->A(Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;ZZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->v()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->switchLineDrawing:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getSubShapeType()I

    move-result p0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final x(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;->onChangeLineDrawing(I)V

    :cond_1
    return-void
.end method

.method public final y(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->z(ZZ)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;->onChangeRoundCorner(Z)V

    :cond_0
    return-void
.end method

.method public final z(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->rightAngleType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;->setViewSelect(ZZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup;->q()Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupMarkPenBinding;->roundCornerType:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;->setViewSelect(ZZ)V

    return-void
.end method
