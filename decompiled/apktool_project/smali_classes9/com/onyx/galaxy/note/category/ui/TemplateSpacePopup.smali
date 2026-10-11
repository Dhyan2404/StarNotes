.class public final Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0012\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "k",
        "",
        "currentValue",
        "l",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "q",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "getTemplateViewModel",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "templateViewModel",
        "Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;",
        "r",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;",
        "binding",
        "s",
        "F",
        "spaceValueInterval",
        "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "t",
        "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "spaceArgs",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V",
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
.field public final q:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:F

.field public t:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateViewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->q:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    new-instance p2, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->r:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->k()V

    return-void
.end method

.method public static final synthetic access$getSpaceArgs$p(Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;)Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->t:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    return-object p0
.end method

.method public static final synthetic access$updateSpacingViewValue(Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->l(F)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->r:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    return-object p0
.end method

.method public final getTemplateViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->q:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-object p0
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->q:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->t:Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMaxValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMinValue()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->s:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMaxValue()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMinValue()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setSegmentCount(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMaxValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setMaxValue(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->displayMinValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setMinValue(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceDisplayValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressValue(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;->tvSpacingValue:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;->seekSpace:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup$initView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup$initView$2;-><init>(Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final l(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupTemplateSpaceArgsBinding;->tvSpacingValue:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
