.class public interface abstract Ljava/awt/image/WritableRenderedImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/RenderedImage;


# virtual methods
.method public abstract addTileObserver(Ljava/awt/image/TileObserver;)V
.end method

.method public abstract getWritableTile(II)Ljava/awt/image/WritableRaster;
.end method

.method public abstract getWritableTileIndices()[Ljava/awt/Point;
.end method

.method public abstract hasTileWriters()Z
.end method

.method public abstract isTileWritable(II)Z
.end method

.method public abstract releaseWritableTile(II)V
.end method

.method public abstract removeTileObserver(Ljava/awt/image/TileObserver;)V
.end method

.method public abstract setData(Ljava/awt/image/Raster;)V
.end method
