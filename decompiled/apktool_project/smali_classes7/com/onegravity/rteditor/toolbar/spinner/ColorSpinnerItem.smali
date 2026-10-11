.class public abstract Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;
.super Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field protected mColor:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;-><init>(Ljava/lang/String;)V

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->mColor:I

    iput-boolean p3, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->a:Z

    iput-boolean p4, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->a(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->a:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->mColor:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->mColor:I

    return p0
.end method

.method public isCustom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->b:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->a:Z

    return p0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->mColor:I

    return-void
.end method
