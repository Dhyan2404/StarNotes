.class Lsun/java2d/SurfaceData$PixelToShapeLoopConverter;
.super Lsun/java2d/pipe/PixelToShapeConverter;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/LoopBasedPipe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/SurfaceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PixelToShapeLoopConverter"
.end annotation


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/ShapeDrawPipe;)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/java2d/pipe/PixelToShapeConverter;-><init>(Lsun/java2d/pipe/ShapeDrawPipe;)V

    return-void
.end method
