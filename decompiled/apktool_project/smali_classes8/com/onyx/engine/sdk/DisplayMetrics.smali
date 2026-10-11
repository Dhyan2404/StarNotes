.class public Lcom/onyx/engine/sdk/DisplayMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private density:F

.field private densityDpi:I

.field private height:I

.field private scaledDensity:F

.field private width:I

.field private xDpi:F

.field private yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/DisplayMetrics;

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/onyx/engine/sdk/DisplayMetrics;
    .locals 1

    .line 8
    new-instance v0, Lcom/onyx/engine/sdk/DisplayMetrics;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/DisplayMetrics;-><init>()V

    .line 9
    invoke-virtual {v0, p0}, Lcom/onyx/engine/sdk/DisplayMetrics;->copy(Lcom/onyx/engine/sdk/DisplayMetrics;)V

    return-object v0
.end method

.method public copy(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    iput v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    .line 2
    iget v0, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    iput v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    .line 3
    iget v0, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    iput v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    .line 4
    iget v0, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    .line 5
    iget v0, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    iput v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    .line 6
    iget v0, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    iput v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    .line 7
    iget p1, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/engine/sdk/DisplayMetrics;

    iget v2, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    iget v3, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    iget v3, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    iget v3, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    iget v3, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    iget v3, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    iget v3, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    iget p1, p1, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDensity()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    return p0
.end method

.method public getDensityDpi()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    return p0
.end method

.method public getLayoutStyle()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScaledDensity()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    return p0
.end method

.method public getxDpi()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    return p0
.end method

.method public getyDpi()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    return p0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setDensity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    return-void
.end method

.method public setDensityDpi(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    return-void
.end method

.method public setxDpi(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    return-void
.end method

.method public setyDpi(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMetrics{density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaledDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->xDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/engine/sdk/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
