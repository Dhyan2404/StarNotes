.class public final Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u000b\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR&\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0014\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "k",
        "",
        "currentValue",
        "l",
        "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "q",
        "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "spaceArgs",
        "Lkotlin/Function2;",
        "r",
        "Lkotlin/jvm/functions/Function2;",
        "onUpdateSpaceArgs",
        "Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;",
        "s",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;",
        "binding",
        "t",
        "F",
        "spaceValueInterval",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;Lkotlin/jvm/functions/Function2;)V",
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
.field public q:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Float;",
            "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spaceArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdateSpaceArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->q:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->r:Lkotlin/jvm/functions/Function2;

    new-instance p2, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->s:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->k()V

    return-void
.end method

.method public static final synthetic access$getOnUpdateSpaceArgs$p(Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->r:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getSpaceArgs$p(Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;)Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->q:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    return-object p0
.end method

.method public static final synthetic access$updateSpaceValue(Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->l(F)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    return-object p0
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->q:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMaxValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMinValue()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->t:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMaxValue()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMinValue()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setSegmentCount(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMaxValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setMaxValue(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMinValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setMinValue(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceDisplayValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressValue(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;->tvSpacingValue:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup$initView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup$initView$2;-><init>(Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final l(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/MarginTemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupMarginTemplateSpaceBinding;->tvSpacingValue:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
