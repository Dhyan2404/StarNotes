.class public Lcom/onegravity/rteditor/media/crop/RotateBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotateBitmap"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    .line 6
    rem-int/lit16 p2, p2, 0x168

    iput p2, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->b:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .locals 3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->b:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v1, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-object v0
.end method

.method public getRotation()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->b:I

    return p0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public isOrientationChanged()Z
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->b:I

    div-int/lit8 p0, p0, 0x5a

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;->b:I

    return-void
.end method
