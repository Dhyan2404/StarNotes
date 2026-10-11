.class public final Lsun/font/CoreMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ascent:F

.field public final baselineIndex:I

.field public final baselineOffsets:[F

.field public final descent:F

.field public final height:F

.field public final italicAngle:F

.field public final leading:F

.field public final ssOffset:F

.field public final strikethroughOffset:F

.field public final strikethroughThickness:F

.field public final underlineOffset:F

.field public final underlineThickness:F


# direct methods
.method public constructor <init>(FFFFI[FFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/font/CoreMetrics;->ascent:F

    iput p2, p0, Lsun/font/CoreMetrics;->descent:F

    iput p3, p0, Lsun/font/CoreMetrics;->leading:F

    iput p4, p0, Lsun/font/CoreMetrics;->height:F

    iput p5, p0, Lsun/font/CoreMetrics;->baselineIndex:I

    iput-object p6, p0, Lsun/font/CoreMetrics;->baselineOffsets:[F

    iput p7, p0, Lsun/font/CoreMetrics;->strikethroughOffset:F

    iput p8, p0, Lsun/font/CoreMetrics;->strikethroughThickness:F

    iput p9, p0, Lsun/font/CoreMetrics;->underlineOffset:F

    iput p10, p0, Lsun/font/CoreMetrics;->underlineThickness:F

    iput p11, p0, Lsun/font/CoreMetrics;->ssOffset:F

    iput p12, p0, Lsun/font/CoreMetrics;->italicAngle:F

    return-void
.end method

.method public static get(Ljava/awt/font/LineMetrics;)Lsun/font/CoreMetrics;
    .locals 0

    check-cast p0, Lsun/font/FontLineMetrics;

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    return-object p0
.end method


# virtual methods
.method public final effectiveBaselineOffset([F)F
    .locals 2

    iget v0, p0, Lsun/font/CoreMetrics;->baselineIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    aget p0, p1, v0

    return p0

    :cond_0
    const/4 v0, 0x4

    aget p1, p1, v0

    iget p0, p0, Lsun/font/CoreMetrics;->ascent:F

    add-float/2addr p1, p0

    return p1

    :cond_1
    const/4 v0, 0x3

    aget p1, p1, v0

    iget p0, p0, Lsun/font/CoreMetrics;->descent:F

    sub-float/2addr p1, p0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    :try_start_0
    check-cast p1, Lsun/font/CoreMetrics;

    invoke-virtual {p0, p1}, Lsun/font/CoreMetrics;->equals(Lsun/font/CoreMetrics;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Lsun/font/CoreMetrics;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    .line 2
    :cond_0
    iget v2, p0, Lsun/font/CoreMetrics;->ascent:F

    iget v3, p1, Lsun/font/CoreMetrics;->ascent:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lsun/font/CoreMetrics;->descent:F

    iget v3, p1, Lsun/font/CoreMetrics;->descent:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lsun/font/CoreMetrics;->leading:F

    iget v3, p1, Lsun/font/CoreMetrics;->leading:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lsun/font/CoreMetrics;->baselineIndex:I

    iget v3, p1, Lsun/font/CoreMetrics;->baselineIndex:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lsun/font/CoreMetrics;->baselineOffsets:[F

    aget v3, v2, v0

    iget-object v4, p1, Lsun/font/CoreMetrics;->baselineOffsets:[F

    aget v5, v4, v0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    aget v3, v2, v1

    aget v5, v4, v1

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    const/4 v3, 0x2

    aget v2, v2, v3

    aget v3, v4, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lsun/font/CoreMetrics;->strikethroughOffset:F

    iget v3, p1, Lsun/font/CoreMetrics;->strikethroughOffset:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lsun/font/CoreMetrics;->strikethroughThickness:F

    iget v3, p1, Lsun/font/CoreMetrics;->strikethroughThickness:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lsun/font/CoreMetrics;->underlineOffset:F

    iget v3, p1, Lsun/font/CoreMetrics;->underlineOffset:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lsun/font/CoreMetrics;->underlineThickness:F

    iget v3, p1, Lsun/font/CoreMetrics;->underlineThickness:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lsun/font/CoreMetrics;->ssOffset:F

    iget v3, p1, Lsun/font/CoreMetrics;->ssOffset:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget p0, p0, Lsun/font/CoreMetrics;->italicAngle:F

    iget p1, p1, Lsun/font/CoreMetrics;->italicAngle:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lsun/font/CoreMetrics;->ascent:F

    iget p0, p0, Lsun/font/CoreMetrics;->ssOffset:F

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method
