.class public final Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;
.super Ljava/awt/color/ColorSpace;
.source "SourceFile"


# static fields
.field private static final power1:D = 0.4166666666666667

.field private static final serialVersionUID:J = 0x4ac2e2ad654125b8L

.field private static theInstance:Ljava/awt/color/ColorSpace;


# instance fields
.field private csRGB:Ljava/awt/color/ColorSpace;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ljava/awt/color/ColorSpace;-><init>(II)V

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->csRGB:Ljava/awt/color/ColorSpace;

    return-void
.end method

.method public static final declared-synchronized getInstance()Ljava/awt/color/ColorSpace;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->theInstance:Ljava/awt/color/ColorSpace;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->theInstance:Ljava/awt/color/ColorSpace;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->theInstance:Ljava/awt/color/ColorSpace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p0, p1, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public fromCIEXYZ([F)[F
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->csRGB:Ljava/awt/color/ColorSpace;

    invoke-virtual {v0, p1}, Ljava/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->fromRGB([F)[F

    move-result-object p0

    return-object p0
.end method

.method public fromRGB([F)[F
    .locals 8

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    const v2, 0x3d25aed5

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const v2, 0x414eb852    # 12.92f

    div-float/2addr v1, v2

    aput v1, p1, v0

    goto :goto_1

    :cond_0
    float-to-double v1, v1

    const-wide v3, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v1, v3

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v1, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v0, p1, p0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    const/4 v3, 0x1

    aget v4, p1, v3

    sub-float v4, v2, v4

    const/4 v5, 0x2

    aget p1, p1, v5

    sub-float p1, v2, p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v7, v6, v2

    if-eqz v7, :cond_2

    sub-float/2addr v2, v6

    sub-float/2addr v0, v6

    div-float/2addr v0, v2

    sub-float/2addr v4, v6

    div-float/2addr v4, v2

    sub-float/2addr p1, v6

    div-float/2addr p1, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move p1, v0

    move v4, p1

    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [F

    aput v0, v2, p0

    aput v4, v2, v3

    aput p1, v2, v5

    aput v6, v2, v1

    return-object v2
.end method

.method public hashCode()I
    .locals 0

    sget-object p0, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->theInstance:Ljava/awt/color/ColorSpace;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toCIEXYZ([F)[F
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->csRGB:Ljava/awt/color/ColorSpace;

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->toRGB([F)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object p0

    return-object p0
.end method

.method public toRGB([F)[F
    .locals 8

    const/4 p0, 0x0

    aget v0, p1, p0

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    aget v4, p1, v3

    const/4 v5, 0x3

    aget p1, p1, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float p1, v6, p1

    new-array v7, v5, [F

    sub-float v0, v6, v0

    mul-float/2addr v0, p1

    aput v0, v7, p0

    sub-float v0, v6, v2

    mul-float/2addr v0, p1

    aput v0, v7, v1

    sub-float v0, v6, v4

    mul-float/2addr p1, v0

    aput p1, v7, v3

    :goto_0
    if-ge p0, v5, :cond_3

    aget p1, v7, p0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const v0, 0x414eb852    # 12.92f

    mul-float/2addr p1, v0

    aput p1, v7, p0

    goto :goto_1

    :cond_1
    cmpl-float v0, p1, v6

    if-lez v0, :cond_2

    move p1, v6

    :cond_2
    float-to-double v0, p1

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v0, v2

    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v0, v2

    double-to-float p1, v0

    aput p1, v7, p0

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v7
.end method
