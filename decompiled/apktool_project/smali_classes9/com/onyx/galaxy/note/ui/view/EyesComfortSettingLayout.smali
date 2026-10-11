.class public final Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B\u001d\u0008\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0019B%\u0008\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u0015\u0010\u001cJ\u0006\u0010\u0003\u001a\u00020\u0002R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;",
        "Landroid/widget/FrameLayout;",
        "",
        "initView",
        "Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;",
        "e",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;",
        "binding",
        "",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "f",
        "Ljava/util/List;",
        "eyesComforterSettings",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;",
        "g",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;",
        "eyesComfortSettingsAdapter",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout$binding$2;-><init>(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->e:Lkotlin/Lazy;

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->getSettings()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->f:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->g:Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->initView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->e(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;)Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->f(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->d(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->f:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    sget-object p3, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    invoke-virtual {p3, p2}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->switchSetting(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->seekBarIntensity:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getIntensity()F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressValue(F)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;->setSelectSetting(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->seekBarIntensity:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->seekBarIntensity:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result p0

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressValue(F)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->seekBarIntensity:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->seekBarIntensity:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result p0

    const/4 v0, 0x1

    int-to-float v0, v0

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressValue(F)V

    return-void
.end method

.method private final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    return-object p0
.end method


# virtual methods
.method public final initView()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->g:Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    sget-object v1, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->getCurrentSetting()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;->setSelectSetting(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V

    new-instance v2, Lcom/sunia/HTREnginev2/d7g;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/d7g;-><init>(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->rvSettings:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/adapter/GridItemDecoration;

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    sget v6, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    invoke-direct {v2, v3, v5, v4}, Lcom/onyx/galaxy/note/editor/view/adapter/GridItemDecoration;-><init>(III)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->g:Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->seekBarIntensity:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    new-instance v2, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout$initView$3$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout$initView$3$1;-><init>(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->getCurrentSetting()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getIntensity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgress(F)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->barMinus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/e7g;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e7g;-><init>(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->barAdd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/f7g;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f7g;-><init>(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
