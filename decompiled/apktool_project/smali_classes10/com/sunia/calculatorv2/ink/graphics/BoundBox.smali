.class public Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->EMPTY:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    iput p2, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    iput p3, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    iput p4, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    return-void
.end method

.method public static intersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 5

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    return-object v0
.end method

.method public static isContain(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIntersect(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static union(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 5

    .line 1
    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    return-object v0
.end method

.method public static union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ">;)",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;"
        }
    .end annotation

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    move v2, v1

    move v3, v2

    move v1, v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 5
    iget v5, v4, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    cmpg-float v6, v5, v0

    if-gez v6, :cond_1

    move v0, v5

    .line 6
    :cond_1
    iget v5, v4, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    move v1, v5

    .line 7
    :cond_2
    iget v5, v4, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    cmpl-float v6, v5, v2

    if-lez v6, :cond_3

    move v2, v5

    .line 8
    :cond_3
    iget v4, v4, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    cmpl-float v5, v4, v3

    if-lez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 9
    :cond_4
    new-instance p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    return-object p0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iget v0, p1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getArea()F
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    mul-float v1, v0, p0

    :cond_0
    return v1
.end method

.method public getBottom()F
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    return p0
.end method

.method public getCenterX()F
    .locals 1

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    add-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    add-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    sub-float/2addr v0, p0

    const p0, 0x219392ef    # 1.0E-18f

    add-float/2addr v0, p0

    return v0
.end method

.method public getLeft()F
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    return p0
.end method

.method public getRight()F
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    return p0
.end method

.method public getSquaredDiagonal()F
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result p0

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getTop()F
    .locals 0

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    return p0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    sub-float/2addr v0, p0

    const p0, 0x219392ef    # 1.0E-18f

    add-float/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x1ff

    mul-int/lit8 v0, v0, 0x49

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x49

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x49

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isNonempty()Z
    .locals 2

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public scale(F)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 4

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    mul-float/2addr v3, p1

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(FF)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iget v1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->left:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->right:F

    add-float/2addr v2, p1

    iget p1, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->top:F

    add-float/2addr p1, p2

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->bottom:F

    add-float/2addr p0, p2

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
