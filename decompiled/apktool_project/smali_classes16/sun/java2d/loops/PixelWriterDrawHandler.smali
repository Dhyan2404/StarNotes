.class Lsun/java2d/loops/PixelWriterDrawHandler;
.super Lsun/java2d/loops/ProcessPath$DrawHandler;
.source "SourceFile"


# instance fields
.field clip:Lsun/java2d/pipe/Region;

.field pw:Lsun/java2d/loops/PixelWriter;

.field sData:Lsun/java2d/SurfaceData;


# direct methods
.method public constructor <init>(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;Lsun/java2d/pipe/Region;I)V
    .locals 6

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v1

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v2

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v3

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v4

    move-object v0, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath$DrawHandler;-><init>(IIIII)V

    iput-object p1, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->sData:Lsun/java2d/SurfaceData;

    iput-object p2, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->pw:Lsun/java2d/loops/PixelWriter;

    iput-object p3, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->clip:Lsun/java2d/pipe/Region;

    return-void
.end method


# virtual methods
.method public drawLine(IIII)V
    .locals 8

    iget-object v0, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->sData:Lsun/java2d/SurfaceData;

    iget-object v1, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->pw:Lsun/java2d/loops/PixelWriter;

    const/4 v2, 0x0

    iget-object v3, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->clip:Lsun/java2d/pipe/Region;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lsun/java2d/loops/GeneralRenderer;->doDrawLine(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;[ILsun/java2d/pipe/Region;IIII)[I

    return-void
.end method

.method public drawPixel(II)V
    .locals 6

    iget-object v0, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->sData:Lsun/java2d/SurfaceData;

    iget-object v1, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->pw:Lsun/java2d/loops/PixelWriter;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    return-void
.end method

.method public drawScanline(III)V
    .locals 6

    iget-object v0, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->sData:Lsun/java2d/SurfaceData;

    iget-object v1, p0, Lsun/java2d/loops/PixelWriterDrawHandler;->pw:Lsun/java2d/loops/PixelWriter;

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x1

    move v2, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    return-void
.end method
