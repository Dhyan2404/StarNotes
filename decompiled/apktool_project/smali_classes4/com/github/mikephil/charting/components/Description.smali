.class public Lcom/github/mikephil/charting/components/Description;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/github/mikephil/charting/utils/MPPointF;

.field public c:Landroid/graphics/Paint$Align;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const-string v0, "Description Label"

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Description;->a:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Description;->c:Landroid/graphics/Paint$Align;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    return-void
.end method


# virtual methods
.method public getPosition()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/Description;->b:Lcom/github/mikephil/charting/utils/MPPointF;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/Description;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/components/Description;->c:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method public setPosition(FF)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Description;->b:Lcom/github/mikephil/charting/utils/MPPointF;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Description;->b:Lcom/github/mikephil/charting/utils/MPPointF;

    goto :goto_0

    :cond_0
    iput p1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput p2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Description;->a:Ljava/lang/String;

    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Description;->c:Landroid/graphics/Paint$Align;

    return-void
.end method
