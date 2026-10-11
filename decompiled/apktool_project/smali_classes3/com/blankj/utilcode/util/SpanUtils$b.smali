.class public Lcom/blankj/utilcode/util/SpanUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public h:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->h:Landroid/graphics/Path;

    .line 4
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->e:I

    .line 5
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->f:I

    .line 6
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->g:I

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/blankj/utilcode/util/SpanUtils$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/SpanUtils$b;-><init>(III)V

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 1

    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p6

    if-ne p6, p9, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p8

    iget p9, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->e:I

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p9

    const/high16 p10, 0x40000000    # 2.0f

    if-eqz p9, :cond_1

    iget-object p9, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->h:Landroid/graphics/Path;

    if-nez p9, :cond_0

    new-instance p9, Landroid/graphics/Path;

    invoke-direct {p9}, Landroid/graphics/Path;-><init>()V

    iput-object p9, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->h:Landroid/graphics/Path;

    iget p11, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->f:I

    int-to-float p11, p11

    sget-object p12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v0, 0x0

    invoke-virtual {p9, v0, v0, p11, p12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p9, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->f:I

    mul-int/2addr p4, p9

    add-int/2addr p3, p4

    int-to-float p3, p3

    add-int/2addr p5, p7

    int-to-float p4, p5

    div-float/2addr p4, p10

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->h:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->f:I

    mul-int/2addr p4, p0

    add-int/2addr p3, p4

    int-to-float p3, p3

    add-int/2addr p5, p7

    int-to-float p4, p5

    div-float/2addr p4, p10

    int-to-float p0, p0

    invoke-virtual {p1, p3, p4, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_2
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    iget p1, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->f:I

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils$b;->g:I

    add-int/2addr p1, p0

    return p1
.end method
