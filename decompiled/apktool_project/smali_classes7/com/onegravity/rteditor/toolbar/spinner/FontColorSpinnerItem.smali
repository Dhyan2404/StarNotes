.class public Lcom/onegravity/rteditor/toolbar/spinner/FontColorSpinnerItem;
.super Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;-><init>(ILjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public b(Landroid/widget/TextView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->b(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->isCustom()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->mColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
