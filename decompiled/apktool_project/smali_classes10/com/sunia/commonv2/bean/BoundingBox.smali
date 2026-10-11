.class public Lcom/sunia/commonv2/bean/BoundingBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4be51467b38f3c80L


# instance fields
.field private height:F

.field private id:Ljava/lang/String;

.field private idss:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private rownum:I

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->idss:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->lang:Ljava/lang/String;

    return-void
.end method

.method public static mmToPx(D)F
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-wide v1, 0x4039666666666666L    # 25.4

    div-double/2addr p0, v1

    double-to-float p0, p0

    iget p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final centerX()F
    .locals 2

    iget v0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->x:F

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public final centerY()F
    .locals 2

    iget v0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->y:F

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->height:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public getHeight()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->height:F

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getIdss()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->idss:Ljava/lang/String;

    return-object p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public getRownum()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->rownum:I

    return p0
.end method

.method public getWidth()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->width:F

    return p0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->y:F

    return p0
.end method

.method public obtainRect()Landroid/graphics/Rect;
    .locals 5

    iget v0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->x:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/sunia/commonv2/bean/BoundingBox;->mmToPx(D)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->y:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/sunia/commonv2/bean/BoundingBox;->mmToPx(D)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sunia/commonv2/bean/BoundingBox;->x:F

    iget v3, p0, Lcom/sunia/commonv2/bean/BoundingBox;->width:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/sunia/commonv2/bean/BoundingBox;->mmToPx(D)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sunia/commonv2/bean/BoundingBox;->y:F

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->height:F

    add-float/2addr v3, p0

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/sunia/commonv2/bean/BoundingBox;->mmToPx(D)F

    move-result p0

    float-to-int p0, p0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public obtainRectF()Landroid/graphics/RectF;
    .locals 4

    iget v0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->x:F

    iget v1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->y:F

    iget v2, p0, Lcom/sunia/commonv2/bean/BoundingBox;->width:F

    add-float/2addr v2, v0

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->height:F

    add-float/2addr p0, v1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->height:F

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->id:Ljava/lang/String;

    return-void
.end method

.method public setIdss(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->idss:Ljava/lang/String;

    return-void
.end method

.method public setRownum(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->rownum:I

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->width:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundingBox{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/BoundingBox;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/commonv2/bean/BoundingBox;->height:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
