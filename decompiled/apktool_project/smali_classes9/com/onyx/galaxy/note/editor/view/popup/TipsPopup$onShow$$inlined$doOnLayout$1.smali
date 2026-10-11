.class public final Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 TipsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TipsPopup\n*L\n1#1,414:1\n69#2:415\n70#2:436\n57#3,20:416\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 TipsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TipsPopup\n*L\n1#1,414:1\n69#2:415\n70#2:436\n57#3,20:416\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object p1, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    const-string p3, "getContentView(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-static {p3}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-static {p4}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getAnchorView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    iget-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-static {p4}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getArrowOrientation()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object p4

    sget-object p5, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne p4, p5, :cond_0

    iget-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-static {p4}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getAnchorView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, p3

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->topArrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p3, "topArrowView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-static {p4}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getTipContext$p(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;->getAnchorView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->rectInActivity(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, p3

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;)Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/PopupTipsLayoutBinding;->arrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p3, "arrowView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$onShow$$inlined$doOnLayout$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-float p0, p1

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    return-void
.end method
