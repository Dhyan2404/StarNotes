.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fB\u001d\u0008\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010 \u00a2\u0006\u0004\u0008\u001e\u0010\"B%\u0008\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010 \u0012\u0006\u0010#\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001e\u0010$J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;",
        "Landroid/widget/HorizontalScrollView;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "setEditorBundle",
        "",
        "eraserType",
        "updateEraserTypeUI",
        "visibility",
        "setVisibility",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "penViewModel",
        "setPenViewModel",
        "",
        "rotation",
        "setOrientationChanged",
        "d",
        "h",
        "i",
        "Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;",
        "e",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;",
        "binding",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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

.field public f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->e:Lkotlin/Lazy;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->g(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->e(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->f(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->h(I)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->h(I)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->h(I)V

    return-void
.end method

.method private final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->pixelEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/qrf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qrf;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->strokeEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/rrf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rrf;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/srf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/srf;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->updateEraserTypeUI(I)V

    return-void
.end method

.method public final h(I)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;->eraserTypeChange(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->updateEraserTypeUI(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->i()V

    return-void
.end method

.method public final i()V
    .locals 15

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserElementsOnlyOption()Lcom/onyx/android/sdk/data/utils/JSONListOption;

    move-result-object v2

    new-instance v14, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v3, :cond_0

    const-string v3, "editorBundle"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    move-object v4, v3

    const-string v5, "click_galaxy_eraser_param_0003"

    const-string v6, "view"

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->pixelEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v7

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->strokeEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v8

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v9

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v10

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getPressureSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v11

    const/16 p0, 0xf

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/utils/JSONListOption;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/16 p0, 0x27

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/utils/JSONListOption;->contains(Ljava/lang/Object;)Z

    move-result v13

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;ZZZFZZZ)V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0, v14}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEraserPopupMenuEvent(Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;)V

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->colorSizeProperty:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public final setOrientationChanged(F)V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->pixelEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->strokeEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public final setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->colorSizeProperty:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;->setPenViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->updateEraserTypeUI(I)V

    :cond_0
    return-void
.end method

.method public final updateEraserTypeUI(I)V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->pixelEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->strokeEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->colorSizeProperty:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorSizePropertyView;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserAllContainsSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_eraser_all_contains:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEraserTypeParamsContainerBinding;->selectEraser:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->ic_eraser_select:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method
