.class public Lcom/github/mikephil/charting/highlight/Highlight;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field public i:F

.field public j:F


# direct methods
.method public constructor <init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 19
    iput p6, p0, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    return-void
.end method

.method public constructor <init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->e:I

    .line 11
    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    .line 12
    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->a:F

    .line 13
    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->b:F

    .line 14
    iput p3, p0, Lcom/github/mikephil/charting/highlight/Highlight;->c:F

    .line 15
    iput p4, p0, Lcom/github/mikephil/charting/highlight/Highlight;->d:F

    .line 16
    iput p5, p0, Lcom/github/mikephil/charting/highlight/Highlight;->f:I

    .line 17
    iput-object p6, p0, Lcom/github/mikephil/charting/highlight/Highlight;->h:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->e:I

    .line 3
    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    .line 4
    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->a:F

    .line 5
    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->b:F

    .line 6
    iput p3, p0, Lcom/github/mikephil/charting/highlight/Highlight;->f:I

    return-void
.end method

.method public constructor <init>(FII)V
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFI)V

    .line 8
    iput p3, p0, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    return-void
.end method


# virtual methods
.method public equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->f:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->f:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->a:F

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->e:I

    iget p1, p1, Lcom/github/mikephil/charting/highlight/Highlight;->e:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->h:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object p0
.end method

.method public getDataIndex()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->e:I

    return p0
.end method

.method public getDataSetIndex()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->f:I

    return p0
.end method

.method public getDrawX()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->i:F

    return p0
.end method

.method public getDrawY()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->j:F

    return p0
.end method

.method public getStackIndex()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    return p0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->a:F

    return p0
.end method

.method public getXPx()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->c:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->b:F

    return p0
.end method

.method public getYPx()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->d:F

    return p0
.end method

.method public isStacked()Z
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDataIndex(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->e:I

    return-void
.end method

.method public setDraw(FF)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->i:F

    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->j:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Highlight, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stackIndex (only stacked barentry): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->g:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
