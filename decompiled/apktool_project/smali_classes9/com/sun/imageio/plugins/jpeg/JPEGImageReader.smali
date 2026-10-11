.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;
.super Ljavax/imageio/ImageReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;,
        Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$JPEGReaderDisposerRecord;
    }
.end annotation


# static fields
.field private static final MAX_WARNING:I = 0x2

.field private static final MIN_ESTIMATED_PASSES:I = 0xa

.field private static final UNKNOWN:I = -0x1

.field protected static final WARNING_IGNORE_INVALID_ICC:I = 0x2

.field protected static final WARNING_NO_EOI:I = 0x0

.field protected static final WARNING_NO_JFIF_IN_THUMB:I = 0x1


# instance fields
.field private abbrevACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private abbrevDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private abbrevQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

.field private buffer:Ljava/awt/image/DataBufferByte;

.field private cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

.field private colorSpaceCode:I

.field private convert:Ljava/awt/image/ColorConvertOp;

.field private currentImage:I

.field private debug:Z

.field private destROI:Ljava/awt/Rectangle;

.field private destinationBands:[I

.field private disposerRecord:Lsun/java2d/DisposerRecord;

.field private disposerReferent:Ljava/lang/Object;

.field private haveSeeked:Z

.field private height:I

.field private iccCS:Ljava/awt/color/ColorSpace;

.field private iis:Ljavax/imageio/stream/ImageInputStream;

.field private image:Ljava/awt/image/BufferedImage;

.field private imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

.field private imageMetadataIndex:I

.field private imagePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private knownPassCount:I

.field private maxProgressivePass:I

.field private minProgressivePass:I

.field private numComponents:I

.field private numImages:I

.field private outColorSpaceCode:I

.field private pass:I

.field private percentToDate:F

.field private previousPassPercentage:F

.field private progInterval:I

.field private raster:Ljava/awt/image/WritableRaster;

.field private streamMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

.field private structPointer:J

.field private tablesOnlyChecked:Z

.field private target:Ljava/awt/image/WritableRaster;

.field private theLockCount:I

.field private theThread:Ljava/lang/Thread;

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$1;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    const-class v0, Ljavax/imageio/plugins/jpeg/JPEGQTable;

    const-class v1, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    const-class v2, Ljavax/imageio/stream/ImageInputStream;

    invoke-static {v2, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->initReaderIDs(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageReaderSpi;)V
    .locals 3

    invoke-direct {p0, p1}, Ljavax/imageio/ImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numImages:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->convert:Ljava/awt/image/ColorConvertOp;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->raster:Ljava/awt/image/WritableRaster;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->buffer:Ljava/awt/image/DataBufferByte;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->streamMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadataIndex:I

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->haveSeeked:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->minProgressivePass:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->maxProgressivePass:I

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->knownPassCount:I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->pass:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->percentToDate:F

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->previousPassPercentage:F

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->progInterval:I

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->tablesOnlyChecked:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->disposerReferent:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theThread:Ljava/lang/Thread;

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theLockCount:I

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-direct {p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->initJPEGImageReader()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$JPEGReaderDisposerRecord;

    invoke-direct {p1, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$JPEGReaderDisposerRecord;-><init>(J)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->disposerRecord:Lsun/java2d/DisposerRecord;

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->disposerReferent:Ljava/lang/Object;

    invoke-static {p0, p1}, Lsun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    return-void
.end method

.method private native abortRead(J)V
.end method

.method private acceptPixels(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->convert:Ljava/awt/image/ColorConvertOp;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0, v1, v1}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    iget v2, v1, Ljava/awt/Rectangle;->x:I

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    add-int/2addr v1, p1

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0, v2, v1, v3}, Ljava/awt/image/WritableRaster;->setRect(IILjava/awt/image/Raster;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    iget v3, v0, Ljava/awt/Rectangle;->x:I

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    add-int v4, v0, p1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    if-lez p1, :cond_5

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->progInterval:I

    rem-int v0, p1, v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->knownPassCount:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->pass:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    mul-float/2addr p1, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    goto/16 :goto_0

    :cond_1
    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->maxProgressivePass:I

    const v3, 0x7fffffff

    if-eq p2, v3, :cond_2

    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->pass:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    mul-float/2addr p1, v2

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->minProgressivePass:I

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    goto/16 :goto_0

    :cond_2
    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->pass:I

    rsub-int/lit8 p2, p2, 0xa

    const/4 v3, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->pass:I

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v0, v0, 0x14

    mul-int/2addr v0, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->progInterval:I

    rem-int v0, p1, v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->previousPassPercentage:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v3, v1

    int-to-float v4, p2

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->percentToDate:F

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pass= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->pass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", y= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", progInt= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->progInterval:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", % of pass: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", rem. passes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", prev%: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->previousPassPercentage:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", %ToDate: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->percentToDate:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->percentToDate:F

    mul-float/2addr p1, v2

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    goto :goto_0

    :cond_4
    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method

.method public static synthetic access$200(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Ljava/awt/color/ColorSpace;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    return-object p0
.end method

.method public static synthetic access$300(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->disposeReader(J)V

    return-void
.end method

.method private checkColorConversion(Ljava/awt/image/BufferedImage;Ljavax/imageio/ImageReadParam;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object p2

    if-eqz p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    instance-of p2, p1, Ljava/awt/image/IndexColorModel;

    if-nez p2, :cond_b

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->convert:Ljava/awt/image/ColorConvertOp;

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->outColorSpaceCode:I

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const-string v6, "Incompatible color conversion"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_7

    if-ne v2, v7, :cond_6

    if-ne v0, v4, :cond_2

    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->colorSpaceCode:I

    if-ne p1, v3, :cond_9

    iget-wide p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, p1, p2, v8}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setOutColorSpace(JI)V

    iput v8, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->outColorSpaceCode:I

    iput v8, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numComponents:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v2

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numComponents:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    if-eq p2, v2, :cond_3

    new-instance p1, Ljava/awt/image/ColorConvertOp;

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    invoke-direct {p1, v0, p2, v1}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->convert:Ljava/awt/image/ColorConvertOp;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    if-nez v2, :cond_4

    invoke-virtual {p2}, Ljava/awt/color/ColorSpace;->isCS_sRGB()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result p1

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numComponents:I

    if-ne p1, v2, :cond_4

    new-instance p1, Ljava/awt/image/ColorConvertOp;

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->sRGB:Ljava/awt/color/ColorSpace;

    invoke-direct {p1, v0, p2, v1}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->convert:Ljava/awt/image/ColorConvertOp;

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-direct {p0, v6}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-direct {p0, v6}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-ne v0, v5, :cond_8

    iget-wide p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, p1, p2, v7}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setOutColorSpace(JI)V

    iput v7, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->outColorSpaceCode:I

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numComponents:I

    goto :goto_0

    :cond_8
    if-ne v0, v4, :cond_a

    :cond_9
    :goto_0
    return-void

    :cond_a
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-direct {p0, v6}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "IndexColorModel not supported"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkTablesOnly()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking for tables-only image"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved pos is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readNativeHeader(Z)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "tables-only image found"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v5

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pos after return from native is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-boolean v3, p0, Ljavax/imageio/ImageReader;->ignoreMetadata:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iput-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->haveSeeked:Z

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-direct {v0, v2, v4, v1, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZLjavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->streamMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iget-boolean v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pos after constructing stream metadata is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->hasNextImage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    :cond_5
    :goto_0
    iget-boolean v0, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->flushBefore(J)V

    :cond_6
    iput-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->tablesOnlyChecked:Z

    return-void
.end method

.method private native clearNativeReadAbortFlag(J)V
.end method

.method private declared-synchronized clearThreadLock()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theLockCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to clear thread lock  form wrong thread. Locked thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; current thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native disposeReader(J)V
.end method

.method private getImageType(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;
    .locals 0

    if-lez p1, :cond_0

    const/4 p0, 0x6

    if-ge p1, p0, :cond_0

    invoke-static {p1}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->getTypeProducer(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getImageTypesOnThread(I)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageTypeSpecifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    invoke-direct {p0, p1, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readHeader(IZ)V

    :cond_0
    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->colorSpaceCode:I

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageType(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->colorSpaceCode:I

    const/4 v3, 0x2

    if-eq v2, v1, :cond_4

    if-eq v2, v3, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageType(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$2;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$2;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageType(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageType(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageType(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;-><init>(Ljava/util/Iterator;)V

    return-object p0
.end method

.method private getNumImagesOnThread(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numImages:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->tablesOnlyChecked:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->checkTablesOnly()V

    :cond_1
    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->gotoImage(I)V

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-direct {v1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    invoke-virtual {v1, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {v1, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->scanForFF(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Z

    move-result p1

    iget-object v2, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v3, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_2

    packed-switch v2, :pswitch_data_0

    iget v2, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    iget-object v3, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v4, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    iget v4, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v4, v2

    iput v4, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->skipData(I)V

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numImages:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numImages:I

    :cond_2
    :pswitch_1
    iget v2, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numImages:I

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "seekForwardOnly and allowSearch can\'t both be true!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/4 p0, -0x1

    return p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private gotoImage(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_9

    iget v0, p0, Ljavax/imageio/ImageReader;->minIndex:I

    if-lt p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->tablesOnlyChecked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->checkTablesOnly()V

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->skipImage()V

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-gt v0, p1, :cond_5

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->hasNextImage()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->flushBefore(J)V

    :cond_2
    if-ge v0, p1, :cond_3

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->skipImage()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_5
    :goto_1
    iget-boolean v0, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz v0, :cond_6

    iput p1, p0, Ljavax/imageio/ImageReader;->minIndex:I

    :cond_6
    iput-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->haveSeeked:Z

    return-void

    :cond_7
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "No image data present to read"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hasNextImage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "hasNextImage called; returning "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0xd8

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v3

    :cond_2
    const/16 v2, 0xff

    if-ne v0, v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz p0, :cond_5

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method private native initJPEGImageReader()J
.end method

.method private initProgressData()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->knownPassCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->pass:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->percentToDate:F

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->previousPassPercentage:F

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->progInterval:I

    return-void
.end method

.method private static native initReaderIDs(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method private passComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processPassComplete(Ljava/awt/image/BufferedImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw v0
.end method

.method private passStarted(I)V
    .locals 11

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->pass:I

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->percentToDate:F

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->previousPassPercentage:F

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->minProgressivePass:I

    iget v5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->maxProgressivePass:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v10}, Ljavax/imageio/ImageReader;->processPassStarted(Ljava/awt/image/BufferedImage;IIIIIII[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method

.method private pushBack(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushing back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    int-to-long v3, p1

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method

.method private readHeader(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->gotoImage(I)V

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readNativeHeader(Z)Z

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    return-void
.end method

.method private native readImage(IJ[BI[I[IIIIIII[Ljavax/imageio/plugins/jpeg/JPEGQTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;IIZ)Z
.end method

.method private native readImageHeader(JZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private readInputData([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method

.method private readInternal(ILjavax/imageio/ImageReadParam;Z)Ljava/awt/image/Raster;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v1, p1

    move-object/from16 v0, p2

    const/4 v8, 0x0

    invoke-direct {v13, v1, v8}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readHeader(IZ)V

    const/4 v2, 0x0

    if-nez p3, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->width:I

    iget v5, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->height:I

    invoke-static {v0, v3, v4, v5}, Ljavax/imageio/ImageReader;->getDestination(Ljavax/imageio/ImageReadParam;Ljava/util/Iterator;II)Ljava/awt/image/BufferedImage;

    move-result-object v3

    iput-object v3, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v3

    iget-object v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v4

    iget-object v5, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    invoke-direct {v13, v5, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->checkColorConversion(Ljava/awt/image/BufferedImage;Ljavax/imageio/ImageReadParam;)V

    iget v5, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numComponents:I

    invoke-static {v0, v5, v4}, Ljavax/imageio/ImageReader;->checkReadParamBandSettings(Ljavax/imageio/ImageReadParam;II)V

    move-object v9, v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Unsupported Image Type"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v3, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    iget v5, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->colorSpaceCode:I

    invoke-direct {v13, v3, v4, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setOutColorSpace(JI)V

    iput-object v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    move-object v9, v2

    move v4, v8

    :goto_0
    sget-object v10, Lcom/sun/imageio/plugins/jpeg/JPEG;->bandOffsets:[[I

    iget v3, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numComponents:I

    add-int/lit8 v5, v3, -0x1

    aget-object v11, v10, v5

    if-eqz p3, :cond_2

    move v12, v3

    goto :goto_1

    :cond_2
    move v12, v4

    :goto_1
    iput-object v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    new-instance v14, Ljava/awt/Rectangle;

    invoke-direct {v14, v8, v8, v8, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    new-instance v7, Ljava/awt/Rectangle;

    invoke-direct {v7, v8, v8, v8, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v7, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    iget v3, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->width:I

    iget v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->height:I

    iget-object v5, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    move-object/from16 v2, p2

    move-object v6, v14

    invoke-static/range {v2 .. v7}, Ljavax/imageio/ImageReader;->computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V

    iput v8, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->minProgressivePass:I

    const v2, 0x7fffffff

    iput v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->maxProgressivePass:I

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v12, v6

    move-object v11, v6

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object v6

    iput-object v6, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageReadParam;->getSourceMinProgressivePass()I

    move-result v6

    iput v6, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->minProgressivePass:I

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageReadParam;->getSourceMaxProgressivePass()I

    move-result v6

    iput v6, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->maxProgressivePass:I

    instance-of v6, v0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;

    if-eqz v6, :cond_5

    check-cast v0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;

    invoke-virtual {v0}, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->areTablesSet()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->getQTables()[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v6

    iput-object v6, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {v0}, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->getDCHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v6

    iput-object v6, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-virtual {v0}, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;->getACHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v0

    iput-object v0, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    :cond_5
    move v7, v5

    move-object v6, v11

    move v5, v12

    move v12, v4

    goto :goto_2

    :cond_6
    move v7, v3

    move-object v6, v11

    move v5, v12

    move v12, v7

    :goto_2
    iget-object v0, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->width:I

    mul-int/2addr v0, v5

    new-instance v15, Ljava/awt/image/DataBufferByte;

    invoke-direct {v15, v0}, Ljava/awt/image/DataBufferByte;-><init>(I)V

    iput-object v15, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->buffer:Ljava/awt/image/DataBufferByte;

    add-int/lit8 v4, v5, -0x1

    aget-object v4, v10, v4

    iget-object v10, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    iget v10, v10, Ljava/awt/Rectangle;->width:I

    const/16 v17, 0x1

    const/16 v21, 0x0

    move/from16 v16, v10

    move/from16 v18, v0

    move/from16 v19, v5

    move-object/from16 v20, v4

    invoke-static/range {v15 .. v21}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v10

    iput-object v10, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->raster:Ljava/awt/image/WritableRaster;

    if-eqz p3, :cond_7

    const/4 v15, 0x0

    iget-object v9, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    iget v10, v9, Ljava/awt/Rectangle;->width:I

    iget v9, v9, Ljava/awt/Rectangle;->height:I

    const/16 v21, 0x0

    move/from16 v16, v10

    move/from16 v17, v9

    move/from16 v18, v0

    move/from16 v19, v5

    move-object/from16 v20, v4

    invoke-static/range {v15 .. v21}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    iput-object v0, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    goto :goto_3

    :cond_7
    iput-object v9, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    :goto_3
    iget-object v0, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v0

    move v4, v8

    :goto_4
    array-length v9, v0

    if-ge v4, v9, :cond_9

    aget v9, v0, v4

    if-lez v9, :cond_8

    const/16 v10, 0x8

    if-gt v9, v10, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Illegal band size: should be 0 < size <= 8"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v4, v13, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v4, :cond_b

    iget-object v4, v13, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move v15, v8

    goto :goto_6

    :cond_b
    :goto_5
    move v15, v3

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->initProgressData()V

    iget v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadataIndex:I

    if-ne v1, v4, :cond_d

    iput v8, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->knownPassCount:I

    iget-object v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-object v4, v4, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    if-eqz v9, :cond_c

    iget v9, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->knownPassCount:I

    add-int/2addr v9, v3

    iput v9, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->knownPassCount:I

    goto :goto_7

    :cond_d
    iget-object v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x14

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->progInterval:I

    iget v9, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->knownPassCount:I

    if-lez v9, :cond_e

    mul-int/2addr v4, v9

    iput v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->progInterval:I

    goto :goto_8

    :cond_e
    iget v9, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->maxProgressivePass:I

    if-eq v9, v2, :cond_f

    iget v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->minProgressivePass:I

    sub-int/2addr v9, v2

    add-int/2addr v9, v3

    mul-int/2addr v4, v9

    iput v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->progInterval:I

    :cond_f
    :goto_8
    iget-boolean v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v2, :cond_13

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "**** Read Data *****"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numRasterBands is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "srcBands:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v2, v8

    :goto_9
    array-length v3, v6

    const-string v4, " "

    if-ge v2, v3, :cond_10

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v6, v2

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_10
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "destination bands is "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    if-eqz v2, :cond_12

    :goto_a
    iget-object v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    array-length v2, v2

    if-ge v8, v2, :cond_11

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    aget v9, v9, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    :cond_12
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sourceROI is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destROI is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "periodX is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "periodY is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minProgressivePass is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->minProgressivePass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxProgressivePass is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->maxProgressivePass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callbackUpdates is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    iget-wide v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {v13, v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearNativeReadAbortFlag(J)V

    iget v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    invoke-virtual {v13, v2}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    iget-wide v2, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    iget-object v4, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->buffer:Ljava/awt/image/DataBufferByte;

    invoke-virtual {v4}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v4

    iget v8, v14, Ljava/awt/Rectangle;->x:I

    iget v9, v14, Ljava/awt/Rectangle;->y:I

    iget v10, v14, Ljava/awt/Rectangle;->width:I

    iget v11, v14, Ljava/awt/Rectangle;->height:I

    iget-object v14, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-object/from16 p2, v0

    iget-object v0, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move/from16 v19, v15

    move-object v15, v0

    iget-object v0, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abbrevACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-object/from16 v16, v0

    iget v0, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->minProgressivePass:I

    move/from16 v17, v0

    iget v0, v13, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->maxProgressivePass:I

    move/from16 v18, v0

    move-object/from16 v20, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v21, v7

    move-object/from16 v7, v20

    move/from16 v13, v21

    invoke-direct/range {v0 .. v19}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readImage(IJ[BI[I[IIIIIII[Ljavax/imageio/plugins/jpeg/JPEGQTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;IIZ)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    goto :goto_b

    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processImageComplete()V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    return-object v0
.end method

.method private readNativeHeader(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->haveSeeked:Z

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readImageHeader(JZZ)Z

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->haveSeeked:Z

    return p1
.end method

.method private resetInternalState()V
    .locals 3

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->resetReader(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numImages:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imagePositions:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->raster:Ljava/awt/image/WritableRaster;

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->buffer:Ljava/awt/image/DataBufferByte;

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destROI:Ljava/awt/Rectangle;

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->destinationBands:[I

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->streamMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadataIndex:I

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->haveSeeked:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->tablesOnlyChecked:Z

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->initProgressData()V

    return-void
.end method

.method private native resetLibraryState(J)V
.end method

.method private native resetReader(J)V
.end method

.method private setImageData(IIIII[B)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->width:I

    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->height:I

    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->colorSpaceCode:I

    iput p4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->outColorSpaceCode:I

    iput p5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->numComponents:I

    const/4 p1, 0x0

    if-nez p6, :cond_0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    return-void

    :cond_0
    const/4 p2, 0x2

    :try_start_0
    invoke-static {p6}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p3}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p4

    iget-object p5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    instance-of p6, p5, Ljava/awt/color/ICC_ColorSpace;

    if-eqz p6, :cond_1

    check-cast p5, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {p5}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object p5

    goto :goto_0

    :cond_1
    move-object p5, p1

    :goto_0
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p5

    goto :goto_1

    :cond_2
    move-object p5, p1

    :goto_1
    if-eqz p5, :cond_3

    invoke-static {p5, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p4

    if-nez p4, :cond_4

    :cond_3
    new-instance p4, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {p4, p3}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    iput-object p4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    const/4 p3, 0x3

    :try_start_1
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p4, p3}, Ljava/awt/color/ColorSpace;->fromRGB([F)[F
    :try_end_1
    .catch Ljava/awt/color/CMMException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_2
    invoke-virtual {p0, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->warningOccurred(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1

    :catch_1
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iccCS:Ljava/awt/color/ColorSpace;

    invoke-virtual {p0, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->warningOccurred(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method private native setOutColorSpace(JI)V
.end method

.method private native setSource(J)V
.end method

.method private declared-synchronized setThreadLock()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theLockCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theLockCount:I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to use instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " locked on thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theThread:Ljava/lang/Thread;

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->theLockCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private skipImage()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "skipImage called"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    const/16 v2, 0xd8

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    const-string v5, "skipImage : Reached EOF before we got EOI marker"

    if-eq v0, v4, :cond_8

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    if-eq v0, v4, :cond_5

    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_6

    const/16 v3, 0xfe

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipImage : Invalid marker starting with ff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->debug:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipImage : Found EOI at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    const/4 p0, 0x2

    int-to-long v4, p0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "skipImage : Found extra SOI marker before getting to EOI"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :pswitch_2
    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v3

    if-eq v3, v4, :cond_4

    iget-object v7, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v7}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v7

    if-eq v7, v4, :cond_3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v7

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4, v3}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    :pswitch_3
    if-ne v0, v1, :cond_7

    move v3, v6

    goto :goto_2

    :cond_7
    move v3, v2

    :goto_2
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "skipImage : Invalid image doesn\'t start with SOI marker"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "skipImage : Invalid image doesn\'t start with 0xff"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private skipInputBytes(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1, p2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-wide p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method

.method private skipPastImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->gotoImage(I)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->skipImage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1

    :catch_0
    :goto_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    invoke-super {p0}, Ljavax/imageio/ImageReader;->abort()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->abortRead(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw v0
.end method

.method public canReadRaster()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public dispose()V
    .locals 4

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->disposerRecord:Lsun/java2d/DisposerRecord;

    invoke-interface {v0}, Lsun/java2d/DisposerRecord;->dispose()V

    iput-wide v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw v0
.end method

.method public getDefaultReadParam()Ljavax/imageio/ImageReadParam;
    .locals 0

    new-instance p0, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;

    invoke-direct {p0}, Ljavax/imageio/plugins/jpeg/JPEGImageReadParam;-><init>()V

    return-object p0
.end method

.method public getHeight(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readHeader(IZ)V

    :cond_0
    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadataIndex:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->gotoImage(I)V

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZLjavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadataIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageTypeSpecifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageTypesOnThread(I)Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public getNumImages(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getNumImagesOnThread(Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public getNumThumbnails(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    iget-object p1, p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v0, v1, p1

    :cond_1
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return v0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readHeader(IZ)V

    :cond_0
    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->colorSpaceCode:I

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageType(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->getType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->tablesOnlyChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->checkTablesOnly()V

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->streamMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw v0
.end method

.method public getThumbnailHeight(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getNumThumbnails(I)I

    move-result p1

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->getThumbnailHeight(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "No such thumbnail"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public getThumbnailWidth(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getNumThumbnails(I)I

    move-result p1

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->getThumbnailWidth(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "No such thumbnail"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public getWidth(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readHeader(IZ)V

    :cond_0
    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readInternal(ILjavax/imageio/ImageReadParam;Z)Ljava/awt/image/Raster;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->image:Ljava/awt/image/BufferedImage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-object p1

    :catch_0
    move-exception p1

    :try_start_3
    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->resetLibraryState(J)V

    throw p1

    :catch_1
    move-exception p1

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->resetLibraryState(J)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getDestinationOffset()Ljava/awt/Point;

    move-result-object v0

    new-instance v1, Ljava/awt/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Ljava/awt/Point;-><init>(II)V

    invoke-virtual {p2, v1}, Ljavax/imageio/IIOParam;->setDestinationOffset(Ljava/awt/Point;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->readInternal(ILjavax/imageio/ImageReadParam;Z)Ljava/awt/image/Raster;

    move-result-object p1

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;

    iget v1, v0, Ljava/awt/Point;->x:I

    iget v0, v0, Ljava/awt/Point;->y:I

    invoke-virtual {p2, v1, v0}, Ljava/awt/image/WritableRaster;->createWritableTranslatedChild(II)Ljava/awt/image/WritableRaster;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->target:Ljava/awt/image/WritableRaster;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->resetLibraryState(J)V

    throw p1

    :catch_1
    move-exception p1

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->resetLibraryState(J)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public readThumbnail(II)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getNumThumbnails(I)I

    move-result p1

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->imageMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {p1, v0, p2, p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->getThumbnail(Ljavax/imageio/stream/ImageInputStream;ILcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Ljava/awt/image/BufferedImage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "No such thumbnail"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public readerSupportsThumbnails()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    invoke-super {p0}, Ljavax/imageio/ImageReader;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw v0
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->check()V

    invoke-super {p0, p1, p2, p3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    iput-boolean p3, p0, Ljavax/imageio/ImageReader;->ignoreMetadata:Z

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->resetInternalState()V

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-wide p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->structPointer:J

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->setSource(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->clearThreadLock()V

    throw p1
.end method

.method public thumbnailComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processThumbnailComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw v0
.end method

.method public thumbnailProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processThumbnailProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method

.method public thumbnailStarted(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->currentImage:I

    invoke-virtual {p0, v0, p1}, Ljavax/imageio/ImageReader;->processThumbnailStarted(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method

.method public warningOccurred(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    :try_start_0
    const-string v0, "com.sun.imageio.plugins.jpeg.JPEGImageReaderResources"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "Invalid warning index"

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method

.method public warningWithMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V

    throw p1
.end method
