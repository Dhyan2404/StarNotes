.class public Ljava/awt/image/ReplicateScaleFilter;
.super Ljava/awt/image/ImageFilter;
.source "SourceFile"


# instance fields
.field protected destHeight:I

.field protected destWidth:I

.field protected outpixbuf:Ljava/lang/Object;

.field protected srcHeight:I

.field protected srcWidth:I

.field protected srccols:[I

.field protected srcrows:[I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/awt/image/ImageFilter;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput p1, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    iput p2, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and height ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") must be non-zero"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calculateMaps()V
    .locals 6

    iget v0, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/awt/image/ReplicateScaleFilter;->srcrows:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    if-gt v1, v2, :cond_0

    iget-object v3, p0, Ljava/awt/image/ReplicateScaleFilter;->srcrows:[I

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ljava/awt/image/ReplicateScaleFilter;->srcHeight:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v5

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v4, v2

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Ljava/awt/image/ReplicateScaleFilter;->srccols:[I

    :goto_1
    iget v1, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    if-gt v0, v1, :cond_1

    iget-object v2, p0, Ljava/awt/image/ReplicateScaleFilter;->srccols:[I

    mul-int/lit8 v3, v0, 0x2

    iget v4, p0, Ljava/awt/image/ReplicateScaleFilter;->srcWidth:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v4

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public setDimensions(II)V
    .locals 2

    iput p1, p0, Ljava/awt/image/ReplicateScaleFilter;->srcWidth:I

    iput p2, p0, Ljava/awt/image/ReplicateScaleFilter;->srcHeight:I

    iget v0, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    if-gez v0, :cond_1

    iget v0, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    if-gez v0, :cond_0

    iput p1, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    iput p2, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    goto :goto_0

    :cond_0
    mul-int/2addr p1, v0

    div-int/2addr p1, p2

    iput p1, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    goto :goto_0

    :cond_1
    iget v1, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    if-gez v1, :cond_2

    mul-int/2addr p2, v0

    div-int/2addr p2, p1

    iput p2, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    :cond_2
    :goto_0
    iget-object p1, p0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    iget p2, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    iget p0, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    invoke-interface {p1, p2, p0}, Ljava/awt/image/ImageConsumer;->setDimensions(II)V

    return-void
.end method

.method public setPixels(IIIILjava/awt/image/ColorModel;[BII)V
    .locals 13

    move-object v0, p0

    .line 1
    iget-object v1, v0, Ljava/awt/image/ReplicateScaleFilter;->srcrows:[I

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljava/awt/image/ReplicateScaleFilter;->srccols:[I

    if-nez v1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/awt/image/ReplicateScaleFilter;->calculateMaps()V

    :cond_1
    mul-int/lit8 v1, p1, 0x2

    .line 3
    iget v2, v0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    mul-int/2addr v1, v2

    iget v3, v0, Ljava/awt/image/ReplicateScaleFilter;->srcWidth:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v1, v3

    mul-int/lit8 v3, p2, 0x2

    .line 4
    iget v4, v0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    mul-int/2addr v3, v4

    iget v4, v0, Ljava/awt/image/ReplicateScaleFilter;->srcHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v3, v4

    .line 5
    iget-object v4, v0, Ljava/awt/image/ReplicateScaleFilter;->outpixbuf:Ljava/lang/Object;

    if-eqz v4, :cond_2

    instance-of v5, v4, [B

    if-eqz v5, :cond_2

    .line 6
    check-cast v4, [B

    goto :goto_0

    .line 7
    :cond_2
    new-array v4, v2, [B

    .line 8
    iput-object v4, v0, Ljava/awt/image/ReplicateScaleFilter;->outpixbuf:Ljava/lang/Object;

    :goto_0
    move-object v2, v4

    .line 9
    :goto_1
    iget-object v4, v0, Ljava/awt/image/ReplicateScaleFilter;->srcrows:[I

    aget v4, v4, v3

    add-int v5, p2, p4

    if-ge v4, v5, :cond_5

    sub-int/2addr v4, p2

    mul-int v4, v4, p8

    add-int v4, p7, v4

    move v5, v1

    .line 10
    :goto_2
    iget-object v6, v0, Ljava/awt/image/ReplicateScaleFilter;->srccols:[I

    aget v6, v6, v5

    add-int v7, p1, p3

    if-ge v6, v7, :cond_3

    add-int/2addr v6, v4

    sub-int/2addr v6, p1

    .line 11
    aget-byte v6, p6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-le v5, v1, :cond_4

    .line 12
    iget-object v4, v0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    sub-int v7, v5, v1

    const/4 v8, 0x1

    iget v12, v0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    move v5, v1

    move v6, v3

    move-object/from16 v9, p5

    move-object v10, v2

    move v11, v1

    invoke-interface/range {v4 .. v12}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[BII)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setPixels(IIIILjava/awt/image/ColorModel;[III)V
    .locals 13

    move-object v0, p0

    .line 13
    iget-object v1, v0, Ljava/awt/image/ReplicateScaleFilter;->srcrows:[I

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljava/awt/image/ReplicateScaleFilter;->srccols:[I

    if-nez v1, :cond_1

    .line 14
    :cond_0
    invoke-direct {p0}, Ljava/awt/image/ReplicateScaleFilter;->calculateMaps()V

    :cond_1
    mul-int/lit8 v1, p1, 0x2

    .line 15
    iget v2, v0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    mul-int/2addr v1, v2

    iget v3, v0, Ljava/awt/image/ReplicateScaleFilter;->srcWidth:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v1, v3

    mul-int/lit8 v3, p2, 0x2

    .line 16
    iget v4, v0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    mul-int/2addr v3, v4

    iget v4, v0, Ljava/awt/image/ReplicateScaleFilter;->srcHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v3, v4

    .line 17
    iget-object v4, v0, Ljava/awt/image/ReplicateScaleFilter;->outpixbuf:Ljava/lang/Object;

    if-eqz v4, :cond_2

    instance-of v5, v4, [I

    if-eqz v5, :cond_2

    .line 18
    check-cast v4, [I

    goto :goto_0

    .line 19
    :cond_2
    new-array v4, v2, [I

    .line 20
    iput-object v4, v0, Ljava/awt/image/ReplicateScaleFilter;->outpixbuf:Ljava/lang/Object;

    :goto_0
    move-object v2, v4

    .line 21
    :goto_1
    iget-object v4, v0, Ljava/awt/image/ReplicateScaleFilter;->srcrows:[I

    aget v4, v4, v3

    add-int v5, p2, p4

    if-ge v4, v5, :cond_5

    sub-int/2addr v4, p2

    mul-int v4, v4, p8

    add-int v4, p7, v4

    move v5, v1

    .line 22
    :goto_2
    iget-object v6, v0, Ljava/awt/image/ReplicateScaleFilter;->srccols:[I

    aget v6, v6, v5

    add-int v7, p1, p3

    if-ge v6, v7, :cond_3

    add-int/2addr v6, v4

    sub-int/2addr v6, p1

    .line 23
    aget v6, p6, v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-le v5, v1, :cond_4

    .line 24
    iget-object v4, v0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    sub-int v7, v5, v1

    const/4 v8, 0x1

    iget v12, v0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    move v5, v1

    move v6, v3

    move-object/from16 v9, p5

    move-object v10, v2

    move v11, v1

    invoke-interface/range {v4 .. v12}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setProperties(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rescale"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Ljava/awt/image/ImageFilter;->setProperties(Ljava/util/Hashtable;)V

    return-void
.end method
