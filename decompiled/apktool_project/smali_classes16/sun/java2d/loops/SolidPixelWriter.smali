.class Lsun/java2d/loops/SolidPixelWriter;
.super Lsun/java2d/loops/PixelWriter;
.source "SourceFile"


# instance fields
.field protected srcData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lsun/java2d/loops/PixelWriter;-><init>()V

    iput-object p1, p0, Lsun/java2d/loops/SolidPixelWriter;->srcData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public writePixel(II)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/loops/PixelWriter;->dstRast:Ljava/awt/image/WritableRaster;

    iget-object p0, p0, Lsun/java2d/loops/SolidPixelWriter;->srcData:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, p0}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    return-void
.end method
