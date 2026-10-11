.class public Lcom/onegravity/rteditor/toolbar/spinner/BGColorSpinnerItem;
.super Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;
.source "SourceFile"


# static fields
.field public static final c:D = 0.212655

.field public static final d:D = 0.715158

.field public static final e:D = 0.072187


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;-><init>(ILjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public b(Landroid/widget/TextView;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->b(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->mColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/ColorSpinnerItem;->mColor:I

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    const-wide v2, 0x3fcb38476f2a5a47L    # 0.212655

    int-to-double v4, v0

    mul-double/2addr v4, v2

    const-wide v2, 0x3fe6e29307af20eaL    # 0.715158

    int-to-double v0, v1

    mul-double/2addr v0, v2

    add-double/2addr v4, v0

    const-wide v0, 0x3fb27ad8e4324420L    # 0.072187

    int-to-double v2, p0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    const-wide/high16 v0, 0x4061000000000000L    # 136.0

    cmpl-double p0, v4, v0

    if-lez p0, :cond_1

    const/high16 p0, -0x1000000

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method
