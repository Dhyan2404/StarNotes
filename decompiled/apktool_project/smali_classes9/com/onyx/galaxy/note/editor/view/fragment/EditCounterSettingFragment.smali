.class public final Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002J\u0008\u0010\u0012\u001a\u00020\u000bH\u0002R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "",
        "onViewCreated",
        "onDestroyView",
        "Lcom/onyx/galaxy/note/editor/event/UpdateSaveButtonEvent;",
        "event",
        "onUpdateSaveButtonEvent",
        "t0",
        "r0",
        "Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "p0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;",
        "e1",
        "q0",
        "()Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;",
        "pageChangeCallback",
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

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment$pageChangeCallback$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment$pageChangeCallback$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->e1:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->u0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->s0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->w0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->v0(Landroid/view/View;)V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->rbCountDownMultiple:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public static final u0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    const-string v0, "radioGroup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->indexOf(Lkotlin/sequences/Sequence;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public static final v0(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/SaveCounterSettingEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/SaveCounterSettingEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final w0(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->q0()Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public final onUpdateSaveButtonEvent(Lcom/onyx/galaxy/note/editor/event/UpdateSaveButtonEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/UpdateSaveButtonEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->tvSave:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/UpdateSaveButtonEvent;->getCanSave()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

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

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->t0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->r0()V

    return-void
.end method

.method public final p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    return-object p0
.end method

.method public final q0()Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;

    return-object p0
.end method

.method public final r0()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/CounterUtils;->parseTaskModelBundle(Landroid/os/Bundle;)Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getType()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/counter/data/CounterType;->COUNT_DOWN_MULTIPLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->rbCountDownNormal:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/sunia/HTREnginev2/zkf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zkf;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->rbCountDownMultiple:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sunia/HTREnginev2/alf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/alf;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterEditPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterEditPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->q0()Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->rbCountDownNormal:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_edit_task:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_add_task:I

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->tvSave:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvSave"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/blf;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/blf;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;->p0()Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentEditCounterSettingBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/clf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/clf;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditCounterSettingFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method
