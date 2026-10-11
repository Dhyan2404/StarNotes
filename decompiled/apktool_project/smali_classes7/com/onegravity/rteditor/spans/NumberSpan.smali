.class public Lcom/onegravity/rteditor/spans/NumberSpan;
.super Lcom/sunia/HTREnginev2/rn;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Lcom/onegravity/rteditor/spans/RTSpan;
.implements Lcom/onegravity/rteditor/spans/RTParagraphSpan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/rn;",
        "Landroid/text/style/LeadingMarginSpan;",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/onegravity/rteditor/spans/RTParagraphSpan<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Z

.field public h:F


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/rn;-><init>()V

    .line 6
    iput p1, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->e:I

    .line 7
    iput p2, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->f:I

    .line 8
    iput-boolean p3, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->g:Z

    return-void
.end method

.method public constructor <init>(IIZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/rn;-><init>()V

    .line 2
    iput p1, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->e:I

    .line 3
    iput p2, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->f:I

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->g:Z

    return-void
.end method


# virtual methods
.method public createClone()Lcom/onegravity/rteditor/spans/NumberSpan;
    .locals 3

    .line 2
    new-instance v0, Lcom/onegravity/rteditor/spans/NumberSpan;

    iget v1, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->e:I

    iget v2, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->f:I

    iget-boolean p0, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->g:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/onegravity/rteditor/spans/NumberSpan;-><init>(IIZ)V

    return-object v0
.end method

.method public bridge synthetic createClone()Lcom/onegravity/rteditor/spans/RTParagraphSpan;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/NumberSpan;->createClone()Lcom/onegravity/rteditor/spans/NumberSpan;

    move-result-object p0

    return-object p0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    check-cast p8, Landroid/text/Spanned;

    iget-boolean p4, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->g:Z

    if-nez p4, :cond_0

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p4

    if-ne p4, p9, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result p5

    sget-object p7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p8, p9, p10, p5}, Lcom/sunia/HTREnginev2/rn;->a(Landroid/text/Spanned;IIF)F

    move-result p7

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    iget p8, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->e:I

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p8, "."

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p7

    iput p7, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->h:F

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->e:I

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    int-to-float p3, p3

    int-to-float p6, p6

    invoke-virtual {p1, p0, p3, p6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    iget-boolean p1, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->g:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->h:F

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/onegravity/rteditor/spans/NumberSpan;->f:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/NumberSpan;->getValue()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
