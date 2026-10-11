.class public abstract Lcom/twelvemonkeys/imageio/ImageReaderBase;
.super Ljavax/imageio/ImageReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/ImageReaderBase$b;,
        Lcom/twelvemonkeys/imageio/ImageReaderBase$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/awt/Point;


# instance fields
.field protected imageInput:Ljavax/imageio/stream/ImageInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Point;-><init>(II)V

    sput-object v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->e:Ljava/awt/Point;

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageReaderSpi;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/imageio/ImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    return-void
.end method

.method public static fakeAOI(Ljava/awt/image/BufferedImage;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Ljavax/imageio/ImageReader;->getSourceRegion(Ljavax/imageio/ImageReadParam;II)Ljava/awt/Rectangle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->fakeAOI(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static fakeSubsampling(Ljava/awt/Image;Ljavax/imageio/ImageReadParam;)Ljava/awt/Image;
    .locals 0

    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->fakeSubsampling(Ljava/awt/Image;Ljavax/imageio/IIOParam;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static getDestination(Ljavax/imageio/ImageReadParam;Ljava/util/Iterator;II)Ljava/awt/image/BufferedImage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/ImageReadParam;",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageTypeSpecifier;",
            ">;II)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljavax/imageio/ImageReadParam;->getDestination()Ljava/awt/image/BufferedImage;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getBufferedImageType()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p3

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/image/SampleModel;->getTransferType()I

    move-result p2

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p3

    invoke-virtual {p3}, Ljava/awt/image/SampleModel;->getTransferType()I

    move-result p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result p0

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p2

    if-gt p0, p2, :cond_0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Destination image from ImageReadParam does not match legal imageTypes from reader: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getDestinationType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljavax/imageio/ImageTypeSpecifier;

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {v3, v2}, Ljavax/imageio/ImageTypeSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    if-eqz v0, :cond_9

    :goto_3
    new-instance v7, Ljava/awt/Rectangle;

    invoke-direct {v7, v1, v1, v1, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    new-instance p1, Ljava/awt/Rectangle;

    invoke-direct {p1, v1, v1, v1, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    const/4 v6, 0x0

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Ljavax/imageio/ImageReader;->computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V

    iget p0, p1, Ljava/awt/Rectangle;->x:I

    iget p2, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr p0, p2

    iget p2, p1, Ljava/awt/Rectangle;->y:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr p2, p1

    int-to-long v0, p0

    int-to-long v3, p2

    mul-long/2addr v0, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v0, v3

    if-gtz p1, :cond_8

    invoke-virtual {v2, p0, p2}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "destination width * height > Integer.MAX_VALUE: %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Destination type from ImageReadParam does not match legal imageTypes from reader: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "imageTypes null or empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasExplicitDestination(Ljavax/imageio/ImageReadParam;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageReadParam;->getDestination()Ljava/awt/image/BufferedImage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getDestinationType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->e:Ljava/awt/Point;

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getDestinationOffset()Ljava/awt/Point;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/awt/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supported formats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->getNormalizedReaderFormatNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    aget-object p0, p0, v1

    invoke-static {v0, p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    return-void
.end method

.method public static showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/twelvemonkeys/imageio/ImageReaderBase$a;

    invoke-direct {v0, p1, p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$a;-><init>(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method


# virtual methods
.method public assertInput()V
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getInput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getInput() == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkBounds(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->assertInput()V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getMinIndex()I

    move-result v0

    if-lt p1, v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->getNumImages(Z)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= numImages ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "index < minIndex"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->resetMembers()V

    invoke-super {p0}, Ljavax/imageio/ImageReader;->dispose()V

    return-void
.end method

.method public getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumImages(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->assertInput()V

    const/4 p0, 0x1

    return p0
.end method

.method public getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->resetMembers()V

    invoke-super {p0}, Ljavax/imageio/ImageReader;->reset()V

    return-void
.end method

.method public abstract resetMembers()V
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->resetMembers()V

    invoke-super {p0, p1, p2, p3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    instance-of p2, p1, Ljavax/imageio/stream/ImageInputStream;

    if-eqz p2, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    :goto_0
    return-void
.end method
