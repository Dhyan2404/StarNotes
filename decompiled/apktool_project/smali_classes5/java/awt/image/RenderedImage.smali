.class public interface abstract Ljava/awt/image/RenderedImage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
.end method

.method public abstract getColorModel()Ljava/awt/image/ColorModel;
.end method

.method public abstract getData()Ljava/awt/image/Raster;
.end method

.method public abstract getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMinTileX()I
.end method

.method public abstract getMinTileY()I
.end method

.method public abstract getMinX()I
.end method

.method public abstract getMinY()I
.end method

.method public abstract getNumXTiles()I
.end method

.method public abstract getNumYTiles()I
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPropertyNames()[Ljava/lang/String;
.end method

.method public abstract getSampleModel()Ljava/awt/image/SampleModel;
.end method

.method public abstract getSources()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/awt/image/RenderedImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTile(II)Ljava/awt/image/Raster;
.end method

.method public abstract getTileGridXOffset()I
.end method

.method public abstract getTileGridYOffset()I
.end method

.method public abstract getTileHeight()I
.end method

.method public abstract getTileWidth()I
.end method

.method public abstract getWidth()I
.end method
