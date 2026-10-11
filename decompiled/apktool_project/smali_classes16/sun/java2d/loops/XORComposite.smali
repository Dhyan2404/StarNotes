.class public final Lsun/java2d/loops/XORComposite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Composite;


# instance fields
.field alphaMask:I

.field xorColor:Ljava/awt/Color;

.field xorPixel:I


# direct methods
.method public constructor <init>(Ljava/awt/Color;Lsun/java2d/SurfaceData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/loops/XORComposite;->xorColor:Ljava/awt/Color;

    invoke-virtual {p2}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-virtual {p2, p1}, Lsun/java2d/SurfaceData;->pixelFor(I)I

    move-result p1

    iput p1, p0, Lsun/java2d/loops/XORComposite;->xorPixel:I

    invoke-virtual {v0}, Lsun/java2d/loops/SurfaceType;->getAlphaMask()I

    move-result p1

    iput p1, p0, Lsun/java2d/loops/XORComposite;->alphaMask:I

    return-void
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;
    .locals 0

    new-instance p3, Lsun/java2d/SunCompositeContext;

    invoke-direct {p3, p0, p1, p2}, Lsun/java2d/SunCompositeContext;-><init>(Lsun/java2d/loops/XORComposite;Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V

    return-object p3
.end method

.method public getAlphaMask()I
    .locals 0

    iget p0, p0, Lsun/java2d/loops/XORComposite;->alphaMask:I

    return p0
.end method

.method public getXorColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/XORComposite;->xorColor:Ljava/awt/Color;

    return-object p0
.end method

.method public getXorPixel()I
    .locals 0

    iget p0, p0, Lsun/java2d/loops/XORComposite;->xorPixel:I

    return p0
.end method
