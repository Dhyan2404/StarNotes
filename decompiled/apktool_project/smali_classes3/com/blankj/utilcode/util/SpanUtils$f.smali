.class public Lcom/blankj/utilcode/util/SpanUtils$f;
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
    name = "f"
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$f;->e:I

    .line 4
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$f;->f:I

    .line 5
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils$f;->g:I

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/blankj/utilcode/util/SpanUtils$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/SpanUtils$f;-><init>(III)V

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v5, v0, Lcom/blankj/utilcode/util/SpanUtils$f;->e:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v2

    move v6, p5

    int-to-float v6, v6

    iget v0, v0, Lcom/blankj/utilcode/util/SpanUtils$f;->f:I

    mul-int/2addr v0, p4

    add-int/2addr v0, v2

    int-to-float v0, v0

    move v2, p7

    int-to-float v2, v2

    move-object p3, p1

    move p4, v5

    move p5, v6

    move p6, v0

    move p7, v2

    move-object p8, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    iget p1, p0, Lcom/blankj/utilcode/util/SpanUtils$f;->f:I

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils$f;->g:I

    add-int/2addr p1, p0

    return p1
.end method
