.class public final Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;
.super Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WhenMappings;,
        Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWritePenGroupPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WritePenGroupPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,257:1\n256#2,2:258\n256#2,2:260\n256#2,2:262\n256#2,2:264\n256#2,2:266\n256#2,2:268\n256#2,2:270\n256#2,2:272\n256#2,2:274\n256#2,2:276\n256#2,2:278\n*S KotlinDebug\n*F\n+ 1 WritePenGroupPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup\n*L\n116#1:258,2\n124#1:260,2\n131#1:262,2\n137#1:264,2\n144#1:266,2\n145#1:268,2\n146#1:270,2\n147#1:272,2\n148#1:274,2\n152#1:276,2\n179#1:278,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u00011B/\u0012\u0006\u0010.\u001a\u00020-\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001c\u0012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00020\u001f\u00a2\u0006\u0004\u0008/\u00100J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001dR \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010!R\u001b\u0010\'\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010$\u001a\u0004\u0008%\u0010&R\u0017\u0010,\u001a\u00020(8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010)\u001a\u0004\u0008*\u0010+\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;",
        "",
        "onShow",
        "onDismiss",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;",
        "event",
        "onChangePenArgsEvent",
        "p",
        "z",
        "C",
        "A",
        "B",
        "w",
        "D",
        "x",
        "o",
        "y",
        "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;",
        "seekBar",
        "q",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penArgs",
        "v",
        "r",
        "s",
        "t",
        "u",
        "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;",
        "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;",
        "writePenGroupArgsChangeListener",
        "Lkotlin/Function1;",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Lkotlin/jvm/functions/Function1;",
        "penTypeChangeCallback",
        "Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "getPenProperty",
        "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "penProperty",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;",
        "penPopupContext",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;Lkotlin/jvm/functions/Function1;)V",
        "WritePenGroupChangeListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWritePenGroupPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WritePenGroupPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,257:1\n256#2,2:258\n256#2,2:260\n256#2,2:262\n256#2,2:264\n256#2,2:266\n256#2,2:268\n256#2,2:270\n256#2,2:272\n256#2,2:274\n256#2,2:276\n256#2,2:278\n*S KotlinDebug\n*F\n+ 1 WritePenGroupPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup\n*L\n116#1:258,2\n124#1:260,2\n131#1:262,2\n137#1:264,2\n144#1:266,2\n145#1:268,2\n146#1:270,2\n147#1:272,2\n148#1:274,2\n152#1:276,2\n179#1:278,2\n*E\n"
    }
.end annotation


# instance fields
.field public final u:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final v:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;",
            "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "penPopupContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penTypeChangeCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->v:Lkotlin/jvm/functions/Function1;

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->w:Lkotlin/Lazy;

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->x:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->p()V

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->addToPenBox:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string p2, "addToPenBox"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initPenBoxOperateView(Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getPenTypeChangeCallback$p(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->v:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getWritePenGroupArgsChangeListener$p(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;

    return-object p0
.end method

.method public static final synthetic access$updateSelectedParams(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->C()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getDrawableRes()Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeDrawableBean;->getTitleRes()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$string;->write_pen:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final B()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarThickness"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;->seekBarPressure:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarPressure"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokePressureView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;->seekBarAlpha:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarAlpha"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->q(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    return-void
.end method

.method public final C()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->A()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->z()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->o()V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->y()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->D()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->B()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->w()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->x()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->y()V

    :goto_1
    return-void
.end method

.method public final D()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarThickness"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    return-void
.end method

.method public final getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->x:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    return-object p0
.end method

.method public final n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->w:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    return-object p0
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onChangePenArgsEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;->getFromPenBox()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->shapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;->onChangePenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

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

.method public final p()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->shapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getShapeToolType$default(Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;ILcom/onyx/galaxy/note/editor/data/ShapeToolType;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;->setViewSelected(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->shapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initShapeContainer$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initShapeContainer$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;->setShapeTypeClickCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->C()V

    return-void
.end method

.method public final q(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->isAppDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->alphaToProgressValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeAlphaView$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeAlphaView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final r(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getVelocityAmplifier()F

    move-result p2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->times_100:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityAmplifierView$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityAmplifierView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final s(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getVelocityIgnoreThreshold()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityIgnoreThresholdView$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityIgnoreThresholdView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final t(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getVelocityLowerBound()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityLowerBoundView$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityLowerBoundView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final u(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getVelocityUpperBound()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityUpperBoundView$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityUpperBoundView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final v(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    const-string v1, "between(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setRange(Lorg/apache/commons/lang3/Range;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getVelocitySensitivity()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressValue(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityView$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$initStrokeVelocityView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final w()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarThickness"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;->seekBarSmooth:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarSmooth"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initSmoothLevelView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    return-void
.end method

.method public final x()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarThickness"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;->seekBarSmooth:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarSmooth"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initSmoothLevelView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    return-void
.end method

.method public final y()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    const-string v1, "colorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initColorLayout(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarVelocity:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarVelocity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->v(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarVelocityAmplifier:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarVelocityAmplifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->r(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarVelocityIgnoreThreshold:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarVelocityIgnoreThreshold"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->s(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarVelocityLowerBound:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarVelocityLowerBound"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->t(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarVelocityUpperBound:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarVelocityUpperBound"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getInitPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->u(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarThickness:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarThickness"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarPressure:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarPressure"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokePressureView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarNib:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarNib"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initStrokeNibView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;->seekBarSmooth:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const-string v1, "seekBarSmooth"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->initSmoothLevelView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    return-void
.end method

.method public final z()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->x:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->x:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorIndexOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;->x:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setInitPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setColorList(Lcom/onyx/android/sdk/base/extension/IntList;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;->getPenPopupContext()Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;->setColorIndex(I)V

    return-void
.end method
