.class public Lcom/sunia/HTREnginev2/zb;
.super Lcom/sunia/HTREnginev2/yb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/yb<",
        "Lcom/onyx/android/sdk/theme/widgets/TintCardView;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field public c:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintCardView;Lcom/onyx/android/sdk/theme/utils/TintManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/yb;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/theme/utils/TintManager;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/zb;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v2, Lcom/onyx/android/sdk/theme/widgets/TintCardView;

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    :cond_0
    iget v0, p0, Lcom/sunia/HTREnginev2/zb;->c:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintCardView;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintCardView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/sunia/HTREnginev2/zb;->c:I

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public loadFromAttribute(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yb;->mView:Landroid/view/View;

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintCardView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/skin/R$styleable;->TintCardViewHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintCardViewHelper_cardBackgroundColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/sunia/HTREnginev2/zb;->b:I

    sget p2, Lcom/onyx/android/sdk/skin/R$styleable;->TintCardViewHelper_strokeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/sunia/HTREnginev2/zb;->c:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/zb;->a()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/zb;->a()V

    return-void
.end method
