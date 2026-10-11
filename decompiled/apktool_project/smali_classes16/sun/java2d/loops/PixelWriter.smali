.class abstract Lsun/java2d/loops/PixelWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected dstRast:Ljava/awt/image/WritableRaster;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRaster(Ljava/awt/image/WritableRaster;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/loops/PixelWriter;->dstRast:Ljava/awt/image/WritableRaster;

    return-void
.end method

.method public abstract writePixel(II)V
.end method
