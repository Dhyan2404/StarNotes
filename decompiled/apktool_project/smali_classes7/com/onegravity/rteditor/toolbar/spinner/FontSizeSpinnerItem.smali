.class public Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;
.super Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;->a:I

    iput-boolean p3, p0, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;->b:Z

    return-void
.end method


# virtual methods
.method public b(Landroid/widget/TextView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->b(Landroid/widget/TextView;)V

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;->a:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public getFontSize()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;->a:I

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/FontSizeSpinnerItem;->b:Z

    return p0
.end method
