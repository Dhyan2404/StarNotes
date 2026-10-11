.class public abstract Lcom/sunia/HTREnginev2/phn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/phn$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/ohn;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ohn;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sunia/HTREnginev2/phn$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/phn$b;-><init>(Lcom/sunia/HTREnginev2/phn$a;)V

    :goto_0
    iput-object p1, p0, Lcom/sunia/HTREnginev2/phn;->a:Lcom/sunia/HTREnginev2/ohn;

    iput p2, p0, Lcom/sunia/HTREnginev2/phn;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/phn;->c:I

    return-void
.end method

.method public static g(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->read(I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static h([BIIII)Ljava/awt/image/BufferedImage;
    .locals 7

    new-instance v0, Ljava/awt/image/DataBufferByte;

    invoke-direct {v0, p0, p1, p2}, Ljava/awt/image/DataBufferByte;-><init>([BII)V

    mul-int/lit8 v3, p3, 0x3

    const/4 v4, 0x3

    const/4 p0, 0x1

    const/4 p1, 0x2

    const/4 p2, 0x0

    filled-new-array {p2, p0, p1}, [I

    move-result-object v5

    const/4 v6, 0x0

    move v1, p3

    move v2, p4

    invoke-static/range {v0 .. v6}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    new-instance p1, Ljava/awt/image/ComponentColorModel;

    const/16 p2, 0x3e8

    invoke-static {p2}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance p2, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p3

    const/4 p4, 0x0

    invoke-direct {p2, p1, p0, p3, p4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p2
.end method


# virtual methods
.method public abstract a()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/phn;->a:Lcom/sunia/HTREnginev2/ohn;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/ohn;->b()V

    return-void
.end method

.method public final d(F)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/phn;->a:Lcom/sunia/HTREnginev2/ohn;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/ohn;->c(F)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/phn;->a:Lcom/sunia/HTREnginev2/ohn;

    iget v1, p0, Lcom/sunia/HTREnginev2/phn;->b:I

    iget p0, p0, Lcom/sunia/HTREnginev2/phn;->c:I

    invoke-interface {v0, v1, p0}, Lcom/sunia/HTREnginev2/ohn;->a(II)V

    return-void
.end method

.method public abstract f()Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
