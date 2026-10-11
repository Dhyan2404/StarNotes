.class public final Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u001a\u0010\r\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0008\u0010\u0012\u001a\u00020\nH\u0003J\u0008\u0010\u0013\u001a\u00020\nH\u0002J\u0008\u0010\u0014\u001a\u00020\nH\u0002J\u0008\u0010\u0015\u001a\u00020\nH\u0002R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;",
        "Landroidx/fragment/app/Fragment;",
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
        "view",
        "onViewCreated",
        "onDestroyView",
        "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;",
        "event",
        "onEditDoneEvent",
        "t0",
        "q0",
        "o0",
        "w0",
        "Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;",
        "c1",
        "Lkotlin/Lazy;",
        "p0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;",
        "binding",
        "",
        "d1",
        "Z",
        "inputState",
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
.field public final c1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d1:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->c1:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic k0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->v0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->r0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->u0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->s0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final r0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/onyx/galaxy/note/R$id;->fragment_count_down_history:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/extension/FragmentKt;->navigateWithAnimation$default(Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 p1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getHasCounterNewRecordOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;ZLjava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;)V
    .locals 10

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->Companion:Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;->getDefaultBundle()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->notifyIfRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->timePicker:Lcom/onyx/galaxy/note/editor/view/TimePickerView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/TimePickerView;->getSelectedDuration()J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->counter_count_time_not_zero:I

    const/4 v0, 0x2

    invoke-static {p0, p1, v8, v0, v7}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_2

    move v0, v9

    goto :goto_0

    :cond_2
    move v0, v8

    :goto_0
    if-eqz v0, :cond_3

    sget-object p0, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {p0, v3, v4}, Lcom/onyx/galaxy/note/utils/CounterUtils;->formatReadableDuration(J)Ljava/lang/String;

    move-result-object p0

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setTitle(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_DOWN:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setType(I)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {p0}, [Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->setCountList(Ljava/util/List;)V

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    invoke-static {p0, v7, v9, v7}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getCounterLastUsedPageOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;->getDefaultBundle()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final u0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->o0()V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboardWithDelay(Landroid/view/View;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final v0(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;Landroid/view/View;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->o0()V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->w0()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final o0()V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->d1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->d1:Z

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->ivNewRecordIndicator:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getHasCounterNewRecordOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;ZLjava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->t0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->q0()V

    return-void
.end method

.method public final p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->c1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    return-object p0
.end method

.method public final q0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->tvMyTimerTask:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v1, "tvMyTimerTask"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment$a;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->rlTimerHistoryRecord:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const-string v0, "rlTimerHistoryRecord"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/ide;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ide;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->tvStart:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvStart"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/jde;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/jde;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final t0()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter$LengthFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$integer;->counter_name_max_length:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    check-cast v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/gde;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gde;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCountDownBinding;->edtCounterName:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/hde;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hde;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final w0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountDownFragment;->d1:Z

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
