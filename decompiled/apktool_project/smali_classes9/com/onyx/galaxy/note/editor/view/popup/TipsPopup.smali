.class public final Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTipsPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TipsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TipsPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,79:1\n256#2,2:80\n256#2,2:82\n65#2,4:84\n37#2:88\n53#2:89\n72#2:90\n*S KotlinDebug\n*F\n+ 1 TipsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TipsPopup\n*L\n49#1:80,2\n50#1:82,2\n56#1:84,4\n56#1:88\n56#1:89\n56#1:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002R\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "onShow",
        "l",
        "Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;",
        "q",
        "Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;",
        "tipContext",
        "Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;",
        "r",
        "Lkotlin/Lazy;",
        "k",
        "()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;",
        "binding",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;)V",
        "TipContext",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTipsPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TipsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TipsPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,79:1\n256#2,2:80\n256#2,2:82\n65#2,4:84\n37#2:88\n53#2:89\n72#2:90\n*S KotlinDebug\n*F\n+ 1 TipsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TipsPopup\n*L\n49#1:80,2\n50#1:82,2\n56#1:84,4\n56#1:88\n56#1:89\n56#1:90\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tipContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->r:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->l()V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    return-object p0
.end method


# virtual methods
.method public final k()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->r:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    return-object p0
.end method

.method public final l()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->topArrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "topArrowView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getArrowOrientation()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/16 v5, 0x8

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "arrowView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getArrowOrientation()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v2

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->flyContent:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getContentWidth()I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public onShow()V
    .locals 5

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getArrowOrientation()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v3

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v3, v4, :cond_0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->topArrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "topArrowView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "arrowView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-float p0, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1
    return-void
.end method
