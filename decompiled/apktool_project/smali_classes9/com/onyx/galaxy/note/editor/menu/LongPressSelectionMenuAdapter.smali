.class public final Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;
.super Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;",
        "Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;",
        "",
        "index",
        "Landroid/view/View;",
        "createDividerView",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "createMenuView",
        "view",
        "",
        "o",
        "Landroid/widget/ImageView;",
        "l",
        "Landroid/widget/TextView;",
        "m",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "I",
        "height",
        "n",
        "padding",
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

.field public final m:I

.field public final n:I

.field public final o:I


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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->l:Landroid/content/Context;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->m:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->n:I

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->o:I

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->n(Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Landroid/view/View;)V
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_0_5:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->m:I

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

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->isValidImageResId(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->l(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->m(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/TextView;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->o(Landroid/view/View;)V

    new-instance v0, Lcom/sunia/HTREnginev2/l5j;

    invoke-direct {v0, p0, p2, p1}, Lcom/sunia/HTREnginev2/l5j;-><init>(Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final l(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/ImageView;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getImageResId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->m:I

    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->m:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->n:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->m:I

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    return-object v0
.end method

.method public final m(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Landroid/widget/TextView;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->l:Landroid/content/Context;

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

    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->o:I

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->n:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->m:I

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    return-object v0
.end method

.method public final o(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/LongPressSelectionMenuAdapter;->n:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
