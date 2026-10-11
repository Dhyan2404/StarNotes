.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0016\u0010 \u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001b\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;",
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
        "q0",
        "w0",
        "z0",
        "",
        "enable",
        "y0",
        "x0",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;)V",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "d1",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "graphConvertOption",
        "e1",
        "graphConvertWithPressureOption",
        "f1",
        "longPressOption",
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
.field public binding:Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

.field public final d1:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getGraphConvert()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->d1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getGraphConvertWithPressure()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getLongPressOfPageMenuOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->t0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic m0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->u0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->s0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->r0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->v0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final r0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->d1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/GraphConvertOptionUpdatedEvent;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/GraphConvertOptionUpdatedEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->x0(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->z0()V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->d1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    :cond_0
    return-void
.end method

.method public static final t0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->setGraphFill(Z)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->y0(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p0

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->selectFirstFillColorIfInvalid(I)V

    :cond_0
    return-void
.end method

.method public static final u0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->setEnableStylusSelectText(Z)V

    return-void
.end method

.method public static final v0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->binding:Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

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

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->setBinding(Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->w0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->q0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphConvert:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/elm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/elm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphConvertWithPressure:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/flm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/flm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphFilling:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/glm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/glm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchStylusSelectText:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/hlm;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hlm;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->longPressOfPageMenu:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/ilm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ilm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->binding:Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    return-void
.end method

.method public final w0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphConvert:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->d1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphFilling:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getGraphFill()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchStylusSelectText:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->isEnableStylusSelectText()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->longPressOfPageMenu:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->f1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->z0()V

    return-void
.end method

.method public final x0(Z)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/event/StatisticsOneStrokeSharpeToggleEvent;

    invoke-static {p1}, Lcom/onyx/android/sdk/data/SettingToggleKt;->getSettingToggle(Z)Lcom/onyx/android/sdk/data/SettingToggle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/event/StatisticsOneStrokeSharpeToggleEvent;-><init>(Lcom/onyx/android/sdk/data/SettingToggle;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final y0(Z)V
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;

    invoke-static {p1}, Lcom/onyx/android/sdk/data/SettingToggleKt;->getSettingToggle(Z)Lcom/onyx/android/sdk/data/SettingToggle;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/GraphFillToggleFrom;->SETTING_TOOL:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;-><init>(Lcom/onyx/android/sdk/data/SettingToggle;Lcom/onyx/android/sdk/data/GraphFillToggleFrom;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final z0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->d1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphConvertWithPressure:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->e1:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphConvertWithPressure:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->tvSwitchGraphConvertWithPressure:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphConvertWithPressure:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->max_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsToolsFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsToolsBinding;->switchGraphConvertWithPressure:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->half_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
