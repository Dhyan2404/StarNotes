.class public final Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u000c\u001a\u00020\nH\u0016J\u001a\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0017J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0012H\u0007J\u0008\u0010\u0014\u001a\u00020\nH\u0002J\u0008\u0010\u0015\u001a\u00020\nH\u0002J\u0008\u0010\u0016\u001a\u00020\nH\u0002J\u0008\u0010\u0017\u001a\u00020\nH\u0002R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "onResume",
        "onPause",
        "view",
        "onViewCreated",
        "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;",
        "event",
        "onEditDoneEvent",
        "Lcom/onyx/galaxy/note/editor/event/SaveCounterSettingEvent;",
        "onSaveCounterSettingEvent",
        "t0",
        "o0",
        "p0",
        "s0",
        "Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "n0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;",
        "binding",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "e1",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "taskModel",
        "<init>",
        "()V",
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
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e1:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->d1:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$updateTime(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->t0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->q0(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m0(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->r0(Landroid/view/View;Z)V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboardWithDelay(Landroid/view/View;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final r0(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    return-object p0
.end method

.method public final o0()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/CounterUtils;->parseTaskModelBundle(Landroid/os/Bundle;)Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->e1:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getType()I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_DOWN:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->timePicker:Lcom/onyx/galaxy/note/editor/view/TimePickerView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->setDuration(J)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->t0()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onEditDoneEvent(Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onPause()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->s0()V

    return-void
.end method

.method public final onSaveCounterSettingEvent(Lcom/onyx/galaxy/note/editor/event/SaveCounterSettingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/SaveCounterSettingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->p0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->timePicker:Lcom/onyx/galaxy/note/editor/view/TimePickerView;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$onViewCreated$1;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->setTimeUpdateCallback(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/text/InputFilter$LengthFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->counter_name_max_length:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    check-cast p2, [Landroid/text/InputFilter;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance p2, Lcom/sunia/HTREnginev2/qlf;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/qlf;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance p2, Lcom/sunia/HTREnginev2/rlf;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/rlf;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->o0()V

    return-void
.end method

.method public final p0()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->timePicker:Lcom/onyx/galaxy/note/editor/view/TimePickerView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getSelectedDuration()J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_count_time_not_zero:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v7}, [Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->e1:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setCountList(Ljava/util/List;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;-><init>()V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setTitle(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_DOWN:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setType(I)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setCountList(Ljava/util/List;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/CreateCounterTaskAction;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/action/counter/CreateCounterTaskAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$a;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final s0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/UpdateSaveButtonEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/event/UpdateSaveButtonEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final t0()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->tvTotalTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentEditNormalCountDownBinding;->timePicker:Lcom/onyx/galaxy/note/editor/view/TimePickerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getSelectedDuration()J

    move-result-wide v2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->duration_format_with_space:I

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v1, v2, v3, p0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
