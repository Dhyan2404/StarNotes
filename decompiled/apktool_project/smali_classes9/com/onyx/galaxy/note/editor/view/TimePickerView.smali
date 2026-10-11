.class public final Lcom/onyx/galaxy/note/editor/view/TimePickerView;
.super Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u00103\u001a\u000202\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u00084\u00105J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R:\u0010,\u001a\u001a\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00050$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0014\u0010/\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0014\u00101\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u0010.\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/TimePickerView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;",
        "",
        "getSelectedDuration",
        "duration",
        "",
        "setDuration",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "dispatchTouchEvent",
        "tint",
        "enabled",
        "setEnabled",
        "b",
        "c",
        "e",
        "d",
        "Landroid/util/AttributeSet;",
        "h",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;",
        "i",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;",
        "binding",
        "",
        "j",
        "I",
        "visibleItemCount",
        "",
        "k",
        "F",
        "disabledAlpha",
        "Lkotlin/Function3;",
        "",
        "l",
        "Lkotlin/jvm/functions/Function3;",
        "getTimeUpdateCallback",
        "()Lkotlin/jvm/functions/Function3;",
        "setTimeUpdateCallback",
        "(Lkotlin/jvm/functions/Function3;)V",
        "timeUpdateCallback",
        "getCenterTextColor",
        "()I",
        "centerTextColor",
        "getOutTextColor",
        "outTextColor",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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
.field public final h:Landroid/util/AttributeSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:I

.field public k:F

.field public l:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->h:Landroid/util/AttributeSet;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/TimePickerView$binding$2;

    invoke-direct {p2, p1, p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView$binding$2;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/TimePickerView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->i:Lkotlin/Lazy;

    const/4 p1, 0x5

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->j:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->k:F

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/TimePickerView$timeUpdateCallback$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/TimePickerView$timeUpdateCallback$1;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->l:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->b()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->c()V

    return-void
.end method

.method public static final synthetic access$onSelected(Lcom/onyx/galaxy/note/editor/view/TimePickerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->d()V

    return-void
.end method

.method private final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    return-object p0
.end method

.method private final getCenterTextColor()I
    .locals 0

    const/high16 p0, -0x1000000

    return p0
.end method

.method private final getOutTextColor()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_03:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->h:Landroid/util/AttributeSet;

    sget-object v2, Lcom/onyx/galaxy/note/R$styleable;->TimePickerView:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "obtainStyledAttributes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/onyx/galaxy/note/R$styleable;->TimePickerView_disabled_alpha:I

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->k:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->k:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final c()V
    .locals 6

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->j:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->e()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvHour:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setAlphaGradient(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setCyclic(Z)V

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$string;->counter_label_hour:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->isCenterLabel(Z)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setItemsVisibleCount(I)V

    new-instance v5, Lcom/onyx/galaxy/note/editor/view/TimePickerView$initView$1$1;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView$initView$1$1;-><init>(Lcom/onyx/galaxy/note/editor/view/TimePickerView;)V

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setOnItemSelectedListener(Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setAlphaGradient(Z)V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setCyclic(Z)V

    sget v5, Lcom/onyx/galaxy/note/R$string;->counter_label_minute:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->isCenterLabel(Z)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setItemsVisibleCount(I)V

    new-instance v5, Lcom/onyx/galaxy/note/editor/view/TimePickerView$initView$2$1;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView$initView$2$1;-><init>(Lcom/onyx/galaxy/note/editor/view/TimePickerView;)V

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setOnItemSelectedListener(Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvSecond:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setAlphaGradient(Z)V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setCyclic(Z)V

    sget v5, Lcom/onyx/galaxy/note/R$string;->counter_label_second:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->isCenterLabel(Z)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setItemsVisibleCount(I)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/TimePickerView$initView$3$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView$initView$3$1;-><init>(Lcom/onyx/galaxy/note/editor/view/TimePickerView;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setOnItemSelectedListener(Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvHour:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    new-instance v1, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;

    const/16 v2, 0x17

    invoke-direct {v1, v3, v2}, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setAdapter(Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    new-instance v1, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;

    const/16 v2, 0x3b

    invoke-direct {v1, v3, v2}, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setAdapter(Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvSecond:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    new-instance v0, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;

    invoke-direct {v0, v3, v2}, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setAdapter(Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->l:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvHour:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getCurrentItemText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getCurrentItemText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvSecond:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getCurrentItemText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvHour:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getOutTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTextColorOut(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvHour:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getCenterTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTextColorCenter(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getOutTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTextColorOut(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getCenterTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTextColorCenter(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvSecond:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getOutTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTextColorOut(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvSecond:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getCenterTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setTextColorCenter(I)V

    return-void
.end method

.method public final getSelectedDuration()J
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvHour:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getCurrentItem()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvSecond:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->getCurrentItem()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTimeUpdateCallback()Lkotlin/jvm/functions/Function3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->l:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public final setDuration(J)V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvHour:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    long-to-int v1, v1

    rem-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setCurrentItem(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    long-to-int v1, v3

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setCurrentItem(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTimePickerViewBinding;->wvSecond:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    long-to-int p1, p1

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->d()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->k:F

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setTimeUpdateCallback(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->l:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->e()V

    invoke-super {p0}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;->tint()V

    return-void
.end method
