.class public final Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u0008\u0010\t\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0015\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0013\u001a\u0004\u0008\u000f\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;",
        "Landroid/widget/PopupWindow;",
        "Landroid/view/View;",
        "anchor",
        "",
        "x",
        "y",
        "",
        "show",
        "c",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;",
        "a",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;",
        "unitsType",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;",
        "b",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;",
        "listener",
        "Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;)V",
        "RulerListener",
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
.field public final a:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unitsType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->a:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->b:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->c:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->d(Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->b:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow$RulerListener;->onChangeUnits()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->c:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;->tvUnits:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/cul;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cul;-><init>(Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->a:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;->CM:Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;->tvUnits:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->change_units_to_in:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;->tvUnits:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->change_units_to_cm:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_7:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerUnitsPopupWindow;->b()Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutRulerUnitsBinding;->bottomArrowView:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    neg-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final show(Landroid/view/View;II)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
