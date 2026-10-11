.class public final Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016J\u0008\u0010\u000f\u001a\u00020\u000bH\u0002J\u0008\u0010\u0010\u001a\u00020\u000bH\u0002J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;",
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
        "onResume",
        "r0",
        "q0",
        "o0",
        "Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "n0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;",
        "binding",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->d1:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->s0(Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic m0(ILcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->p0(ILcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;)V

    return-void
.end method

.method public static final p0(ILcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->rbCountUp:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->rbCountDown:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->radioGroup:Landroid/widget/RadioGroup;

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


# virtual methods
.method public final n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    return-object p0
.end method

.method public final o0()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/CounterUtils;->parseTargetPage(Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/sunia/HTREnginev2/xee;

    invoke-direct {v2, v0, p0}, Lcom/sunia/HTREnginev2/xee;-><init>(ILcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->o0()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->r0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->q0()V

    return-void
.end method

.method public final q0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->titleContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshView(Landroid/view/View;)V

    return-void
.end method

.method public final r0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sunia/HTREnginev2/wee;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wee;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/CounterSettingPagerAdapter;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterSettingPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->vpContainer:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterSettingHomeFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterSettingHomeBinding;->rbCountDown:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method
