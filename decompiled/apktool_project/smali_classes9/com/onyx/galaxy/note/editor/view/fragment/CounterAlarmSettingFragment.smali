.class public final Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016R\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;",
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
        "onStop",
        "onDestroy",
        "Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "o0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;",
        "e1",
        "n0",
        "()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;",
        "audioPlayer",
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

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$audioPlayer$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$audioPlayer$2;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->e1:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAudioPlayer(Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;)Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->n0()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->q0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic m0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->p0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final p0(Landroid/widget/CompoundButton;Z)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmNormalCountDownOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public static final q0(Landroid/widget/CompoundButton;Z)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmMultipleCountDownOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method


# virtual methods
.method public final n0()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    return-object p0
.end method

.method public final o0()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;

    return-object p0
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->n0()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->release()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onStop()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->n0()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;->stop()V

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

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;->switchAlarmCountDown:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    sget-object p2, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmNormalCountDownOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;->switchAlarmCountDown:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v2, Lcom/sunia/HTREnginev2/lee;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/lee;-><init>()V

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;->switchAlarmMultipleCount:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-static {p2, v0, v1, v0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmMultipleCountDownOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;->switchAlarmMultipleCount:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v2, Lcom/sunia/HTREnginev2/mee;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/mee;-><init>()V

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentCounterAlarmSettingBinding;->seekBarVolume:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-static {p2, v0, v1, v0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmVolumeOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/FloatOption;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/utils/FloatOption;->get()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$onViewCreated$3$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$onViewCreated$3$1;-><init>(Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
