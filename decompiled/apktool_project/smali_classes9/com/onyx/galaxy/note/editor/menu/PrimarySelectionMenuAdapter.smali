.class public final Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;
.super Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u00a2\u0006\u0004\u0008$\u0010%J\u001c\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0018\u001a\u00020\tH\u0002R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001dR\u0014\u0010 \u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001fR\u0014\u0010!\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u001fR\u0014\u0010#\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001f\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;",
        "Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "",
        "forceUpdate",
        "",
        "setMenusByShape",
        "",
        "index",
        "Landroid/view/View;",
        "createDividerView",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "createMenuView",
        "view",
        "r",
        "Landroid/widget/ImageView;",
        "l",
        "n",
        "Landroid/widget/TextView;",
        "o",
        "m",
        "q",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "",
        "Ljava/lang/String;",
        "elementsHashCodeStr",
        "I",
        "height",
        "padding",
        "p",
        "textSize",
        "<init>",
        "(Landroid/content/Context;)V",
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
.field public final l:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:I

.field public final o:I

.field public final p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->m:Ljava/lang/String;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->p:I

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->p(Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$menu"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->getCallback()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;->onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createDividerView(I)Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/onyx/android/sdk/theme/widgets/TintView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_0_5:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/widgets/TintView;->setBackgroundResource(I)V

    return-object p1
.end method

.method public createMenuView(ILcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/view/View;
    .locals 1
    .param p2    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "menu"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->HWR_BEAUTIFY:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->m(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->isAnnotationMenuType(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->isValidImageResId(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/TextView;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->r(Landroid/view/View;)V

    new-instance v0, Lcom/sunia/HTREnginev2/e7l;

    invoke-direct {v0, p0, p2, p1}, Lcom/sunia/HTREnginev2/e7l;-><init>(Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final l(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/ImageView;
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getImageResId()I

    move-result v0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v3, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationStyleType(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result p1

    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_01:I

    invoke-static {v3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance p1, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    return-object p1
.end method

.method public final m(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/view/View;
    .locals 10

    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->sp_14:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColorById(I)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->p:I

    int-to-float p1, p1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    invoke-static {v0, p1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_26:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {v1, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    new-instance v6, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->q()I

    move-result v7

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v9, v8}, Landroid/view/View;->measure(II)V

    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v8, v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v3, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o:I

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/2addr p1, v1

    add-int/2addr p1, v2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    invoke-static {v5, p1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    invoke-static {v5, p1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    :goto_0
    return-object v5
.end method

.method public final n(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/ImageView;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getImageResId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    return-object v0
.end method

.method public final o(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/TextView;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->sp_14:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColorById(I)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->p:I

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->n:I

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    return-object v0
.end method

.method public final q()I
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_ink_beautify_trial:I

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v0, "ink_beautify"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getEngineByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->showTrialMenu(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_ink_beautify_trial:I

    return p0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->showProMenu(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_ink_beautify_pro:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->o:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final setMenusByShape(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->m:Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;->m:Ljava/lang/String;

    sget-object p2, Lcom/onyx/galaxy/note/editor/menu/ShapeMenuProvider;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/ShapeMenuProvider;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/menu/ShapeMenuProvider;->getShapeMenus(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;->setMenus(Ljava/util/List;)V

    return-void
.end method
