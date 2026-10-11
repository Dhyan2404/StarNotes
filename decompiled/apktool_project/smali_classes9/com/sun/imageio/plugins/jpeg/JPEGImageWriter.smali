.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;
.super Ljavax/imageio/ImageWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;,
        Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$JPEGWriterDisposerRecord;
    }
.end annotation


# static fields
.field private static final MAX_WARNING:I = 0xf

.field protected static final WARNING_DEST_IGNORED:I = 0x0

.field protected static final WARNING_DEST_METADATA_ADOBE_MISMATCH:I = 0x4

.field protected static final WARNING_DEST_METADATA_COMP_MISMATCH:I = 0x2

.field protected static final WARNING_DEST_METADATA_JFIF_MISMATCH:I = 0x3

.field protected static final WARNING_FORCING_JFIF:I = 0xb

.field protected static final WARNING_IGNORING_THUMBS:I = 0xa

.field protected static final WARNING_ILLEGAL_THUMBNAIL:I = 0x9

.field protected static final WARNING_IMAGE_METADATA_ADOBE_MISMATCH:I = 0x6

.field protected static final WARNING_IMAGE_METADATA_JFIF_MISMATCH:I = 0x5

.field protected static final WARNING_METADATA_ADJUSTED_FOR_THUMB:I = 0xd

.field protected static final WARNING_METADATA_NOT_JPEG_FOR_RASTER:I = 0x7

.field protected static final WARNING_NO_BANDS_ON_INDEXED:I = 0x8

.field protected static final WARNING_NO_GRAY_THUMB_AS_INDEXED:I = 0xf

.field protected static final WARNING_NO_RGB_THUMB_AS_INDEXED:I = 0xe

.field protected static final WARNING_STREAM_METADATA_IGNORED:I = 0x1

.field protected static final WARNING_THUMB_CLIPPED:I = 0xc

.field static final preferredThumbSizes:[Ljava/awt/Dimension;


# instance fields
.field private cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

.field private convertOp:Ljava/awt/image/ColorConvertOp;

.field private convertTosRGB:Z

.field private converted:Ljava/awt/image/WritableRaster;

.field private currentImage:I

.field private debug:Z

.field private disposerRecord:Lsun/java2d/DisposerRecord;

.field private disposerReferent:Ljava/lang/Object;

.field private forceJFIF:Z

.field private iccProfile:Ljava/awt/color/ICC_Profile;

.field private ignoreAdobe:Z

.field private ignoreJFIF:Z

.field private indexCM:Ljava/awt/image/IndexColorModel;

.field private indexed:Z

.field private ios:Ljavax/imageio/stream/ImageOutputStream;

.field private isAlphaPremultiplied:Z

.field private metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

.field private newAdobeTransform:I

.field private numScans:I

.field private raster:Ljava/awt/image/WritableRaster;

.field private sequencePrepared:Z

.field private sourceHeight:I

.field private sourceWidth:I

.field private sourceXOffset:I

.field private sourceYOffset:I

.field private srcBands:[I

.field private srcCM:Ljava/awt/image/ColorModel;

.field private srcRas:Ljava/awt/image/Raster;

.field private streamACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private streamDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private streamQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

.field private structPointer:J

.field private theLockCount:I

.field private theThread:Ljava/lang/Thread;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation
.end field

.field private writeAdobe:Z

.field private writeDefaultJFIF:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$1;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    const-class v0, Ljavax/imageio/plugins/jpeg/JPEGQTable;

    const-class v1, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-static {v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->initWriterIDs(Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/awt/Dimension;

    new-instance v1, Ljava/awt/Dimension;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Ljava/awt/Dimension;

    const/16 v3, 0xff

    invoke-direct {v1, v3, v3}, Ljava/awt/Dimension;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->preferredThumbSizes:[Ljava/awt/Dimension;

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageWriterSpi;)V
    .locals 2

    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->debug:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->raster:Ljava/awt/image/WritableRaster;

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexed:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexCM:Ljava/awt/image/IndexColorModel;

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertTosRGB:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->converted:Ljava/awt/image/WritableRaster;

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->isAlphaPremultiplied:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcCM:Ljava/awt/image/ColorModel;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnails:Ljava/util/List;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->iccProfile:Ljava/awt/color/ICC_Profile;

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcBands:[I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertOp:Ljava/awt/image/ColorConvertOp;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreJFIF:Z

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->forceJFIF:Z

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreAdobe:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->newAdobeTransform:I

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeDefaultJFIF:Z

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeAdobe:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sequencePrepared:Z

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->numScans:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->disposerReferent:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theThread:Ljava/lang/Thread;

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theLockCount:I

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-direct {p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->initJPEGImageWriter()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$JPEGWriterDisposerRecord;

    invoke-direct {p1, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$JPEGWriterDisposerRecord;-><init>(J)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->disposerRecord:Lsun/java2d/DisposerRecord;

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->disposerReferent:Ljava/lang/Object;

    invoke-static {p0, p1}, Lsun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    return-void
.end method

.method private native abortWrite(J)V
.end method

.method public static synthetic access$200(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->disposeWriter(J)V

    return-void
.end method

.method private checkAdobe(Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;Ljavax/imageio/ImageTypeSpecifier;Z)V
    .locals 0

    if-eqz p1, :cond_2

    invoke-static {p2, p3}, Lcom/sun/imageio/plugins/jpeg/JPEG;->transformForType(Ljavax/imageio/ImageTypeSpecifier;Z)I

    move-result p2

    iget p1, p1, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    if-eq p1, p2, :cond_2

    if-eqz p3, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreAdobe:Z

    goto :goto_1

    :cond_1
    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->newAdobeTransform:I

    :cond_2
    :goto_1
    return-void
.end method

.method private checkJFIF(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljavax/imageio/ImageTypeSpecifier;Z)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {p2, p3}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isJFIFcompliant(Ljavax/imageio/ImageTypeSpecifier;Z)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreJFIF:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_1
    return-void
.end method

.method private checkSOFBands(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p0, p1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length p0, p0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Metadata components != number of destination bands"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized clearThreadLock()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theLockCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theThread:Ljava/lang/Thread;
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

    const-string v3, "Attempt to clear thread lock form wrong thread. Locked thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theThread:Ljava/lang/Thread;

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

.method private collectHTablesFromMetadata(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v2, v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    :goto_0
    iget-object v2, v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    iget v3, v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableClass:I

    xor-int/lit8 v4, p2, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_6

    aput-object p2, v2, v3

    move v4, v1

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    aget-object v5, p1, v4

    iget v5, v5, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableID:I

    if-ne v5, v3, :cond_4

    aget-object v5, v2, v3

    if-nez v5, :cond_3

    new-instance v5, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    aget-object v6, p1, v4

    iget-object v7, v6, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    iget-object v6, v6, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    invoke-direct {v5, v7, v6}, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;-><init>([S[S)V

    aput-object v5, v2, v3

    goto :goto_3

    :cond_3
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Metadata has duplicate Htables!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move-object p2, v2

    :cond_7
    return-object p2
.end method

.method private collectQTablesFromMetadata(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;)[Ljavax/imageio/plugins/jpeg/JPEGQTable;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v1, v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    iget-object v0, v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    new-instance v2, Ljavax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    iget-object v3, v3, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    invoke-direct {v2, v3}, Ljavax/imageio/plugins/jpeg/JPEGQTable;-><init>([I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method private collectScans(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;)[I
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v2, v1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->numScans:I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->numScans:I

    mul-int/lit8 v1, v1, 0x9

    new-array v1, v1, [I

    move v2, p1

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->numScans:I

    if-ge v2, v4, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v6, v6

    aput v6, v1, v3

    move v3, p1

    :goto_2
    const/4 v6, 0x4

    if-ge v3, v6, :cond_5

    iget-object v6, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v7, v6

    if-ge v3, v7, :cond_3

    aget-object v6, v6, v3

    iget v6, v6, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    move v7, p1

    :goto_3
    iget-object v8, p2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v9, v8

    if-ge v7, v9, :cond_4

    aget-object v8, v8, v7

    iget v8, v8, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v6, v8, :cond_2

    add-int/lit8 v6, v5, 0x1

    aput v7, v1, v5

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v5, 0x1

    aput p1, v1, v5

    :goto_4
    move v5, v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v5, 0x1

    iget v6, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->startSpectralSelection:I

    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x1

    iget v6, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->endSpectralSelection:I

    aput v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    iget v6, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxHigh:I

    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x1

    iget v4, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxLow:I

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :cond_7
    return-object v1
.end method

.method private convertImageMetadataOnThread(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 3

    instance-of v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p0, p1

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    invoke-direct {v2, p2, p3, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    :try_start_0
    invoke-virtual {v2, v0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/imageio/metadata/IIOInvalidTreeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_2
    return-object v1
.end method

.method private static native disposeWriter(J)V
.end method

.method private getDefaultDestCSType(Ljava/awt/image/ColorModel;)I
    .locals 2

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/16 v0, 0x9

    const/4 v1, 0x5

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_3

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :cond_3
    :goto_1
    return p1
.end method

.method private getDefaultDestCSType(Ljava/awt/image/RenderedImage;)I
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getDefaultDestCSType(Ljava/awt/image/ColorModel;)I

    move-result p0

    return p0
.end method

.method private getDefaultDestCSType(Ljavax/imageio/ImageTypeSpecifier;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getDefaultDestCSType(Ljava/awt/image/ColorModel;)I

    move-result p0

    return p0
.end method

.method private getDestCSType(Ljavax/imageio/ImageTypeSpecifier;)I
    .locals 0

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/16 p1, 0x9

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    :cond_3
    :goto_0
    return p1
.end method

.method private getSrcCSType(Ljava/awt/image/ColorModel;)I
    .locals 0

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4

    const/16 p1, 0x9

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method private getSrcCSType(Ljava/awt/image/RenderedImage;)I
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getSrcCSType(Ljava/awt/image/ColorModel;)I

    move-result p0

    return p0
.end method

.method private getSrcCSType(Ljavax/imageio/ImageTypeSpecifier;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getSrcCSType(Ljava/awt/image/ColorModel;)I

    move-result p0

    return p0
.end method

.method private grabPixels(I)V
    .locals 11

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    add-int v4, v0, p1

    iget v5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    filled-new-array {v1}, [I

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexCM:Ljava/awt/image/IndexColorModel;

    invoke-virtual {v2}, Ljava/awt/image/IndexColorModel;->getTransparency()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexCM:Ljava/awt/image/IndexColorModel;

    invoke-virtual {v2, v0, v3}, Ljava/awt/image/IndexColorModel;->convertToIntDiscrete(Ljava/awt/image/Raster;Z)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    add-int v4, v0, p1

    iget v5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcBands:[I

    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v0

    :goto_1
    iget-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertTosRGB:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->debug:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Converting to sRGB"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertOp:Ljava/awt/image/ColorConvertOp;

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->converted:Ljava/awt/image/WritableRaster;

    invoke-virtual {v2, v0, v3}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->converted:Ljava/awt/image/WritableRaster;

    :cond_3
    iget-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->isAlphaPremultiplied:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getMinX()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getMinY()I

    move-result v4

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v6

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v8

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getMinX()I

    move-result v4

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getMinY()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v7

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcCM:Ljava/awt/image/ColorModel;

    invoke-virtual {v0, v9, v1}, Ljava/awt/image/ColorModel;->coerceData(Ljava/awt/image/WritableRaster;Z)Ljava/awt/image/ColorModel;

    invoke-virtual {v9}, Ljava/awt/image/Raster;->getMinX()I

    move-result v4

    invoke-virtual {v9}, Ljava/awt/image/Raster;->getMinY()I

    move-result v5

    invoke-virtual {v9}, Ljava/awt/image/Raster;->getWidth()I

    move-result v6

    invoke-virtual {v9}, Ljava/awt/image/Raster;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v10, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcBands:[I

    move v9, v0

    invoke-virtual/range {v3 .. v10}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual {v1, v0}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    const/4 v0, 0x7

    if-le p1, v0, :cond_5

    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    int-to-float p1, p1

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->processImageProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method private native initJPEGImageWriter()J
.end method

.method private static native initWriterIDs(Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method private isSubsampled([Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;)Z
    .locals 6

    const/4 p0, 0x0

    aget-object v0, p1, p0

    iget v1, v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    iget v0, v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget-object v4, p1, v3

    iget v5, v4, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    if-ne v5, v1, :cond_1

    iget v4, v4, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    if-eq v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    :cond_2
    return p0
.end method

.method private jfifOK(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isJFIFcompliant(Ljavax/imageio/ImageTypeSpecifier;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return p3

    :cond_0
    if-eqz p4, :cond_2

    instance-of v1, p4, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz v1, :cond_1

    check-cast p4, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    move-object p4, p0

    check-cast p4, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    :goto_0
    const-class p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {p4, p0, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p0

    if-nez p0, :cond_2

    return p3

    :cond_2
    return v0
.end method

.method private prepareWriteSequenceOnThread(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    instance-of v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-boolean v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sequencePrepared:Z

    if-eq v1, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->collectQTablesFromMetadata(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;)[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->debug:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after collecting from stream metadata, streamQTables.length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultQTables()[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->collectHTablesFromMetadata(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultHuffmanTables(Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->collectHTablesFromMetadata(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-nez p1, :cond_3

    invoke-static {v1}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultHuffmanTables(Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    :cond_3
    iget-wide v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iget-object v5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iget-object v6, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeTables(J[Ljavax/imageio/plugins/jpeg/JPEGQTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Stream metadata already written!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "JPEG Stream metadata must precede all images"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid stream metadata object."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Stream metadata must be JPEG metadata"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sequencePrepared:Z

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Output has not been set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resetInternalState()V
    .locals 2

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->resetWriter(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->raster:Ljava/awt/image/WritableRaster;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertTosRGB:Z

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->numScans:I

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    return-void
.end method

.method private native resetWriter(J)V
.end method

.method private native setDest(J)V
.end method

.method private declared-synchronized setThreadLock()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theLockCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theLockCount:I

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

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theThread:Ljava/lang/Thread;

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->theLockCount:I
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

.method private native writeImage(J[BIII[IIIIII[Ljavax/imageio/plugins/jpeg/JPEGQTable;Z[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZZZI[I[I[I[I[IZI)Z
.end method

.method private writeMetadata()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeDefaultJFIF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnails:Ljava/util/List;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->iccProfile:Ljava/awt/color/ICC_Profile;

    invoke-static {v0, v1, v2, p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeDefaultJFIF(Ljavax/imageio/stream/ImageOutputStream;Ljava/util/List;Ljava/awt/color/ICC_Profile;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeAdobe:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->newAdobeTransform:I

    invoke-static {v0, p0}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->writeAdobeSegment(Ljavax/imageio/stream/ImageOutputStream;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreJFIF:Z

    iget-boolean v3, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->forceJFIF:Z

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnails:Ljava/util/List;

    iget-object v5, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->iccProfile:Ljava/awt/color/ICC_Profile;

    iget-boolean v6, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreAdobe:Z

    iget v7, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->newAdobeTransform:I

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->writeToStream(Ljavax/imageio/stream/ImageOutputStream;ZZLjava/util/List;Ljava/awt/color/ICC_Profile;ZILcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private writeOnThread(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p3

    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v1, :cond_5b

    if-eqz p2, :cond_5a

    const/4 v14, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v15, v14}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->hasRaster()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getRaster()Ljava/awt/image/Raster;

    move-result-object v3

    iput-object v3, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getRenderedImage()Ljava/awt/image/RenderedImage;

    move-result-object v3

    instance-of v4, v3, Ljava/awt/image/BufferedImage;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/awt/image/BufferedImage;

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v4

    iput-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getNumXTiles()I

    move-result v4

    if-ne v4, v14, :cond_4

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getNumYTiles()I

    move-result v4

    if-ne v4, v14, :cond_4

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getMinTileX()I

    move-result v4

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getMinTileY()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v4

    iput-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getWidth()I

    move-result v4

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getHeight()I

    move-result v4

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_5

    :cond_3
    iget-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v6}, Ljava/awt/image/Raster;->getMinX()I

    move-result v7

    iget-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getMinY()I

    move-result v8

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v9

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v10

    iget-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getMinX()I

    move-result v11

    iget-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getMinY()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v4

    iput-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getData()Ljava/awt/image/Raster;

    move-result-object v4

    iput-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    :cond_5
    :goto_0
    iget-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v4

    const/4 v5, 0x0

    iput-boolean v5, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexed:Z

    iput-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexCM:Ljava/awt/image/IndexColorModel;

    iput-boolean v5, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->isAlphaPremultiplied:Z

    iput-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcCM:Ljava/awt/image/ColorModel;

    if-nez v1, :cond_8

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v7

    instance-of v8, v6, Ljava/awt/image/IndexColorModel;

    if-eqz v8, :cond_6

    iput-boolean v14, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexed:Z

    move-object v4, v6

    check-cast v4, Ljava/awt/image/IndexColorModel;

    iput-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexCM:Ljava/awt/image/IndexColorModel;

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v4

    :cond_6
    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v8

    if-eqz v8, :cond_9

    iput-boolean v14, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->isAlphaPremultiplied:Z

    iput-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcCM:Ljava/awt/image/ColorModel;

    goto :goto_1

    :cond_7
    move-object v7, v2

    goto :goto_1

    :cond_8
    move-object v6, v2

    move-object v7, v6

    :cond_9
    :goto_1
    sget-object v8, Lcom/sun/imageio/plugins/jpeg/JPEG;->bandOffsets:[[I

    add-int/lit8 v9, v4, -0x1

    aget-object v8, v8, v9

    iput-object v8, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcBands:[I

    const/16 v8, 0x8

    if-eqz v0, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v9

    if-eqz v9, :cond_c

    iget-boolean v10, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexed:Z

    if-eqz v10, :cond_a

    invoke-virtual {v15, v8}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    goto :goto_2

    :cond_a
    iput-object v9, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcBands:[I

    array-length v9, v9

    if-gt v9, v4, :cond_b

    move v13, v9

    goto :goto_3

    :cond_b
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "ImageWriteParam specifies too many source bands"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_2
    move v13, v4

    :goto_3
    if-eq v13, v4, :cond_d

    move v9, v14

    goto :goto_4

    :cond_d
    move v9, v5

    :goto_4
    if-nez v1, :cond_e

    if-nez v9, :cond_e

    move v10, v14

    goto :goto_5

    :cond_e
    move v10, v5

    :goto_5
    iget-boolean v11, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexed:Z

    if-nez v11, :cond_11

    iget-object v11, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v11}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v11

    if-eqz v9, :cond_10

    new-array v12, v13, [I

    move v2, v5

    :goto_6
    if-ge v2, v13, :cond_f

    iget-object v14, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcBands:[I

    aget v14, v14, v2

    aget v14, v11, v14

    aput v14, v12, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_f
    move-object v14, v12

    goto :goto_8

    :cond_10
    move-object v14, v11

    goto :goto_8

    :cond_11
    iget-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v2

    new-array v11, v4, [I

    move v12, v5

    :goto_7
    if-ge v12, v4, :cond_10

    aget v14, v2, v5

    aput v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :goto_8
    move v2, v5

    :goto_9
    array-length v11, v14

    if-ge v2, v11, :cond_14

    aget v11, v14, v2

    if-lez v11, :cond_13

    if-gt v11, v8, :cond_13

    iget-boolean v11, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->indexed:Z

    if-eqz v11, :cond_12

    aput v8, v14, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Illegal band size: should be 0 < size <= 8"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-boolean v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->debug:Z

    if-eqz v2, :cond_16

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "numSrcBands is "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numBandsUsed is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usingBandSubset is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fullImage is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Band sizes:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v2, v5

    :goto_a
    array-length v4, v14

    if-ge v2, v4, :cond_15

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v14, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    :cond_16
    if-eqz v0, :cond_17

    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getDestinationType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    if-eqz v10, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {v15, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_17
    const/4 v2, 0x0

    :cond_18
    iget-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getMinX()I

    move-result v4

    iput v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    iget-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getMinY()I

    move-result v4

    iput v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    iget-object v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getWidth()I

    move-result v4

    iget-object v8, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->srcRas:Ljava/awt/image/Raster;

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    iput v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    iput v8, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    if-eqz v0, :cond_20

    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object v11

    if-eqz v11, :cond_19

    new-instance v12, Ljava/awt/Rectangle;

    iget v5, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    iget v9, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    move-object/from16 v19, v14

    iget v14, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    move-object/from16 v20, v7

    iget v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    invoke-direct {v12, v5, v9, v14, v7}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v11, v12}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v5

    iget v7, v5, Ljava/awt/Rectangle;->x:I

    iput v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    iget v7, v5, Ljava/awt/Rectangle;->y:I

    iput v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    iget v7, v5, Ljava/awt/Rectangle;->width:I

    iput v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    iget v5, v5, Ljava/awt/Rectangle;->height:I

    iput v5, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    goto :goto_b

    :cond_19
    move-object/from16 v20, v7

    move-object/from16 v19, v14

    :goto_b
    iget v5, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    iget v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    add-int/2addr v5, v7

    if-le v5, v4, :cond_1a

    sub-int/2addr v4, v7

    iput v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    :cond_1a
    iget v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    iget v5, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    add-int/2addr v4, v5

    if-le v4, v8, :cond_1b

    sub-int/2addr v8, v5

    iput v8, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    :cond_1b
    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v9

    if-eqz v9, :cond_1f

    const/4 v11, 0x1

    if-eq v9, v11, :cond_1d

    const/4 v12, 0x2

    if-eq v9, v12, :cond_1c

    move v9, v12

    const/4 v12, 0x0

    goto :goto_c

    :cond_1c
    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/ImageWriteParam;->getCompressionQuality()F

    move-result v9

    invoke-static {v9}, Lcom/sun/imageio/plugins/jpeg/JPEG;->convertToLinearQuality(F)F

    move-result v9

    new-array v14, v12, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    sget-object v12, Ljavax/imageio/plugins/jpeg/JPEGQTable;->K1Luminance:Ljavax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {v12, v9, v11}, Ljavax/imageio/plugins/jpeg/JPEGQTable;->getScaledInstance(FZ)Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v14, v16

    sget-object v12, Ljavax/imageio/plugins/jpeg/JPEGQTable;->K2Chrominance:Ljavax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {v12, v9, v11}, Ljavax/imageio/plugins/jpeg/JPEGQTable;->getScaledInstance(FZ)Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v9

    aput-object v9, v14, v11

    move-object v12, v14

    const/4 v9, 0x2

    goto :goto_c

    :cond_1d
    const/4 v9, 0x2

    const/16 v16, 0x0

    new-array v12, v9, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    sget-object v14, Ljavax/imageio/plugins/jpeg/JPEGQTable;->K1Div2Luminance:Ljavax/imageio/plugins/jpeg/JPEGQTable;

    aput-object v14, v12, v16

    sget-object v14, Ljavax/imageio/plugins/jpeg/JPEGQTable;->K2Div2Chrominance:Ljavax/imageio/plugins/jpeg/JPEGQTable;

    aput-object v14, v12, v11

    :goto_c
    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/ImageWriteParam;->getProgressiveMode()I

    move-result v11

    instance-of v14, v0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    if-eqz v14, :cond_1e

    move-object v14, v0

    check-cast v14, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    invoke-virtual {v14}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getOptimizeHuffmanTables()Z

    move-result v18

    move/from16 v22, v18

    move/from16 v18, v5

    move v5, v11

    move-object/from16 v37, v14

    move v14, v4

    move-object/from16 v4, v37

    goto :goto_e

    :cond_1e
    move v14, v4

    move/from16 v18, v5

    move v5, v11

    const/4 v4, 0x0

    goto :goto_d

    :cond_1f
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "JPEG compression cannot be disabled"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    move-object/from16 v20, v7

    move-object/from16 v19, v14

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/16 v18, 0x1

    :goto_d
    const/16 v22, 0x0

    :goto_e
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v11

    if-eqz v11, :cond_24

    instance-of v9, v11, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz v9, :cond_21

    check-cast v11, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object v11, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-boolean v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->debug:Z

    if-eqz v1, :cond_24

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "We have metadata, and it\'s JPEG metadata"

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_21
    if-nez v1, :cond_23

    if-nez v2, :cond_22

    new-instance v1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v1, v3}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/RenderedImage;)V

    goto :goto_f

    :cond_22
    move-object v1, v2

    :goto_f
    invoke-virtual {v15, v11, v1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    goto :goto_10

    :cond_23
    const/4 v1, 0x7

    invoke-virtual {v15, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_24
    :goto_10
    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreJFIF:Z

    iput-boolean v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreAdobe:Z

    const/4 v9, -0x1

    iput v9, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->newAdobeTransform:I

    iput-boolean v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeDefaultJFIF:Z

    iput-boolean v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeAdobe:Z

    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v11, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const-class v9, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    if-eqz v1, :cond_25

    move/from16 v24, v14

    const/4 v14, 0x1

    invoke-virtual {v1, v9, v14}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    move-object/from16 v25, v1

    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    move/from16 v26, v8

    const-class v8, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-virtual {v1, v8, v14}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    iget-object v8, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    invoke-virtual {v8, v11, v14}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v8

    check-cast v8, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    move-object v14, v8

    move-object v8, v1

    move-object/from16 v1, v25

    move/from16 v25, v7

    const/4 v7, 0x0

    goto :goto_11

    :cond_25
    move/from16 v26, v8

    move/from16 v24, v14

    move/from16 v25, v7

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_11
    iput-object v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->iccProfile:Ljava/awt/color/ICC_Profile;

    move-object/from16 v27, v4

    const/4 v4, 0x0

    iput-boolean v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertTosRGB:Z

    iput-object v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->converted:Ljava/awt/image/WritableRaster;

    const/4 v7, 0x3

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljavax/imageio/ImageTypeSpecifier;->getNumBands()I

    move-result v0

    if-ne v13, v0, :cond_2a

    invoke-virtual {v2}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    iget-object v3, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz v3, :cond_27

    invoke-direct {v15, v14, v13}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->checkSOFBands(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;I)V

    invoke-direct {v15, v1, v2, v4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->checkJFIF(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljavax/imageio/ImageTypeSpecifier;Z)V

    if-eqz v1, :cond_26

    iget-boolean v3, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreJFIF:Z

    if-nez v3, :cond_26

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isNonStandardICC(Ljava/awt/color/ColorSpace;)Z

    move-result v3

    if-eqz v3, :cond_26

    check-cast v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v0}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v0

    iput-object v0, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->iccProfile:Ljava/awt/color/ICC_Profile;

    :cond_26
    const/4 v3, 0x0

    invoke-direct {v15, v8, v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->checkAdobe(Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;Ljavax/imageio/ImageTypeSpecifier;Z)V

    goto :goto_13

    :cond_27
    move v3, v4

    invoke-static {v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isJFIFcompliant(Ljavax/imageio/ImageTypeSpecifier;Z)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeDefaultJFIF:Z

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isNonStandardICC(Ljava/awt/color/ColorSpace;)Z

    move-result v6

    if-eqz v6, :cond_29

    check-cast v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v0}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v0

    iput-object v0, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->iccProfile:Ljava/awt/color/ICC_Profile;

    goto :goto_12

    :cond_28
    const/4 v4, 0x1

    invoke-static {v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEG;->transformForType(Ljavax/imageio/ImageTypeSpecifier;Z)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_29

    iput-boolean v4, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeAdobe:Z

    iput v0, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->newAdobeTransform:I

    :cond_29
    :goto_12
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v15}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    iput-object v0, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    :goto_13
    invoke-direct {v15, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getSrcCSType(Ljavax/imageio/ImageTypeSpecifier;)I

    move-result v0

    invoke-direct {v15, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getDefaultDestCSType(Ljavax/imageio/ImageTypeSpecifier;)I

    move-result v2

    goto :goto_14

    :cond_2a
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Number of source bands != number of destination bands"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-nez v2, :cond_2e

    if-eqz v10, :cond_39

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    new-instance v4, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v4, v3}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/RenderedImage;)V

    invoke-direct {v2, v4, v0, v15}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    iput-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 v0, 0x1

    invoke-virtual {v2, v9, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isNonStandardICC(Ljava/awt/color/ColorSpace;)Z

    move-result v2

    if-eqz v2, :cond_2c

    check-cast v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v0}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v0

    iput-object v0, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->iccProfile:Ljava/awt/color/ICC_Profile;

    :cond_2c
    invoke-direct {v15, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getSrcCSType(Ljava/awt/image/RenderedImage;)I

    move-result v0

    invoke-direct {v15, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getDefaultDestCSType(Ljava/awt/image/RenderedImage;)I

    move-result v2

    :cond_2d
    :goto_14
    move v4, v2

    goto/16 :goto_19

    :cond_2e
    invoke-direct {v15, v14, v13}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->checkSOFBands(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;I)V

    if-eqz v10, :cond_39

    new-instance v0, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, v3}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/RenderedImage;)V

    invoke-direct {v15, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getSrcCSType(Ljava/awt/image/RenderedImage;)I

    move-result v0

    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    invoke-virtual/range {v20 .. v20}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v3

    const/4 v4, 0x5

    const/4 v6, 0x6

    if-eq v3, v4, :cond_32

    if-eq v3, v6, :cond_2f

    goto :goto_18

    :cond_2f
    if-nez v2, :cond_30

    const/4 v2, 0x1

    goto :goto_15

    :cond_30
    if-eqz v1, :cond_31

    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ignoreJFIF:Z

    invoke-virtual {v15, v4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_31
    const/4 v2, 0x0

    :goto_15
    if-eqz v8, :cond_2d

    iget v3, v8, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    iput v3, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->newAdobeTransform:I

    invoke-virtual {v15, v6}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    goto :goto_14

    :cond_32
    if-eqz v1, :cond_35

    invoke-static/range {v20 .. v20}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isNonStandardICC(Ljava/awt/color/ColorSpace;)Z

    move-result v2

    if-nez v2, :cond_33

    move-object/from16 v2, v20

    instance-of v3, v2, Ljava/awt/color/ICC_ColorSpace;

    if-eqz v3, :cond_34

    iget-object v3, v1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    if-eqz v3, :cond_34

    goto :goto_16

    :cond_33
    move-object/from16 v2, v20

    :goto_16
    check-cast v2, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v2}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v2

    iput-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->iccProfile:Ljava/awt/color/ICC_Profile;

    :cond_34
    :goto_17
    move v4, v7

    goto :goto_19

    :cond_35
    if-eqz v8, :cond_37

    iget v2, v8, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    if-eqz v2, :cond_36

    const/4 v3, 0x1

    if-eq v2, v3, :cond_34

    invoke-virtual {v15, v6}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    const/4 v2, 0x0

    iput v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->newAdobeTransform:I

    :cond_36
    const/4 v4, 0x2

    goto :goto_19

    :cond_37
    invoke-virtual {v14}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->getIDencodedCSType()I

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_14

    :cond_38
    iget-object v2, v14, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    invoke-direct {v15, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->isSubsampled([Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_17

    :cond_39
    const/4 v0, 0x0

    :cond_3a
    :goto_18
    const/4 v4, 0x0

    :goto_19
    iget-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz v2, :cond_3f

    if-nez v14, :cond_3b

    const/4 v3, 0x1

    invoke-virtual {v2, v11, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    move-object v14, v2

    :cond_3b
    if-eqz v14, :cond_3d

    iget v2, v14, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    const/16 v3, 0xc2

    if-ne v2, v3, :cond_3d

    if-ne v5, v7, :cond_3c

    iget-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    invoke-direct {v15, v2, v14}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->collectScans(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;)[I

    move-result-object v2

    goto :goto_1a

    :cond_3c
    const/4 v2, 0x0

    iput v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->numScans:I

    const/4 v2, 0x0

    :goto_1a
    const/4 v3, 0x1

    goto :goto_1b

    :cond_3d
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-nez v1, :cond_3e

    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 v6, 0x1

    invoke-virtual {v1, v9, v6}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    :cond_3e
    move-object/from16 v23, v2

    goto :goto_1c

    :cond_3f
    const/4 v3, 0x0

    const/16 v23, 0x0

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getThumbnails()Ljava/util/List;

    move-result-object v2

    iput-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnails:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getNumThumbnails()I

    move-result v2

    const/4 v6, 0x0

    iput-boolean v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->forceJFIF:Z

    iget-boolean v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeDefaultJFIF:Z

    if-nez v6, :cond_44

    iget-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/16 v8, 0xa

    if-nez v6, :cond_40

    const/4 v6, 0x0

    iput-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnails:Ljava/util/List;

    if-eqz v2, :cond_45

    invoke-virtual {v15, v8}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    goto :goto_1e

    :cond_40
    const/4 v6, 0x0

    if-nez v10, :cond_41

    if-nez v1, :cond_45

    iput-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnails:Ljava/util/List;

    if-eqz v2, :cond_45

    invoke-virtual {v15, v8}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    goto :goto_1e

    :cond_41
    if-nez v1, :cond_45

    const/4 v1, 0x1

    if-eq v4, v1, :cond_43

    if-ne v4, v7, :cond_42

    goto :goto_1d

    :cond_42
    iput-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnails:Ljava/util/List;

    if-eqz v2, :cond_45

    invoke-virtual {v15, v8}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    goto :goto_1e

    :cond_43
    :goto_1d
    if-eqz v2, :cond_45

    iput-boolean v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->forceJFIF:Z

    const/16 v1, 0xb

    invoke-virtual {v15, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    goto :goto_1e

    :cond_44
    const/4 v6, 0x0

    :cond_45
    :goto_1e
    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-nez v1, :cond_47

    iget-boolean v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeDefaultJFIF:Z

    if-nez v2, :cond_47

    iget-boolean v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeAdobe:Z

    if-eqz v2, :cond_46

    goto :goto_1f

    :cond_46
    const/16 v28, 0x0

    goto :goto_20

    :cond_47
    :goto_1f
    const/16 v28, 0x1

    :goto_20
    if-eqz v1, :cond_4b

    const-class v2, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v7}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    iget-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v8, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-virtual {v2, v8, v7}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    iget-object v8, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v9, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;

    invoke-virtual {v8, v9, v7}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v8

    check-cast v8, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;

    if-eqz v8, :cond_48

    iget v7, v8, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->restartInterval:I

    goto :goto_21

    :cond_48
    const/4 v7, 0x0

    :goto_21
    if-nez v1, :cond_49

    const/4 v8, 0x0

    goto :goto_22

    :cond_49
    const/4 v8, 0x1

    :goto_22
    move/from16 v30, v7

    move/from16 v20, v8

    if-nez v2, :cond_4a

    const/16 v29, 0x0

    goto :goto_23

    :cond_4a
    const/16 v29, 0x1

    :goto_23
    move-object v7, v1

    goto :goto_24

    :cond_4b
    move-object v2, v6

    move-object v7, v2

    const/16 v20, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    :goto_24
    if-nez v12, :cond_4f

    if-eqz v7, :cond_4c

    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    invoke-direct {v15, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->collectQTablesFromMetadata(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;)[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v1

    :goto_25
    move-object/from16 v31, v1

    goto :goto_26

    :cond_4c
    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamQTables:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz v1, :cond_4d

    goto :goto_25

    :cond_4d
    if-eqz v27, :cond_4e

    invoke-virtual/range {v27 .. v27}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->areTablesSet()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual/range {v27 .. v27}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getQTables()[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v1

    goto :goto_25

    :cond_4e
    invoke-static {}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultQTables()[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v1

    goto :goto_25

    :cond_4f
    move-object/from16 v31, v12

    :goto_26
    if-nez v22, :cond_53

    if-eqz v2, :cond_50

    if-nez v3, :cond_50

    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 v2, 0x1

    invoke-direct {v15, v1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->collectHTablesFromMetadata(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v1

    iget-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->metadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 v3, 0x0

    invoke-direct {v15, v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->collectHTablesFromMetadata(Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v2

    goto :goto_27

    :cond_50
    iget-object v1, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamDCHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz v1, :cond_51

    iget-object v2, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->streamACHuffmanTables:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    :goto_27
    move-object/from16 v27, v1

    move-object/from16 v32, v2

    goto :goto_28

    :cond_51
    if-eqz v27, :cond_52

    invoke-virtual/range {v27 .. v27}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->areTablesSet()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual/range {v27 .. v27}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getDCHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v1

    invoke-virtual/range {v27 .. v27}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getACHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v2

    goto :goto_27

    :cond_52
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultHuffmanTables(Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultHuffmanTables(Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v3

    move-object/from16 v27, v2

    move-object/from16 v32, v3

    goto :goto_28

    :cond_53
    move-object/from16 v27, v6

    move-object/from16 v32, v27

    :goto_28
    new-array v2, v13, [I

    new-array v3, v13, [I

    new-array v1, v13, [I

    new-array v12, v13, [I

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v13, :cond_54

    add-int/lit8 v7, v6, 0x1

    aput v7, v2, v6

    const/4 v8, 0x1

    aput v8, v3, v6

    aput v8, v1, v6

    const/16 v17, 0x0

    aput v17, v12, v6

    move v6, v7

    goto :goto_29

    :cond_54
    const/16 v17, 0x0

    if-eqz v14, :cond_56

    move/from16 v6, v17

    :goto_2a
    if-ge v6, v13, :cond_56

    iget-boolean v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->forceJFIF:Z

    if-nez v7, :cond_55

    iget-object v7, v14, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    aput v7, v2, v6

    :cond_55
    iget-object v7, v14, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-object v7, v7, v6

    iget v8, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    aput v8, v3, v6

    iget v8, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    aput v8, v1, v6

    iget v7, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->QtableSelector:I

    aput v7, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_56
    iget v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    add-int v6, v6, v25

    iput v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceXOffset:I

    iget v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    sub-int v6, v6, v25

    iput v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    iget v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    add-int v7, v7, v26

    iput v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceYOffset:I

    iget v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    sub-int v7, v7, v26

    iput v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceHeight:I

    add-int v14, v6, v24

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    div-int v14, v14, v24

    add-int v7, v7, v18

    add-int/lit8 v7, v7, -0x1

    div-int v25, v7, v18

    mul-int v9, v6, v13

    new-instance v11, Ljava/awt/image/DataBufferByte;

    invoke-direct {v11, v9}, Ljava/awt/image/DataBufferByte;-><init>(I)V

    sget-object v6, Lcom/sun/imageio/plugins/jpeg/JPEG;->bandOffsets:[[I

    add-int/lit8 v7, v13, -0x1

    aget-object v21, v6, v7

    iget v7, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    const/4 v8, 0x1

    const/16 v26, 0x0

    move-object v6, v11

    move v10, v13

    move-object/from16 v33, v11

    move-object/from16 v11, v21

    move-object/from16 v34, v12

    move-object/from16 v12, v26

    invoke-static/range {v6 .. v12}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v6

    iput-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->raster:Ljava/awt/image/WritableRaster;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearAbortRequest()V

    iget-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v6}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    :try_start_0
    iget v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    invoke-virtual {v15, v6}, Ljavax/imageio/ImageWriter;->processImageStarted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v6}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    iget-boolean v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->debug:Z

    if-eqz v6, :cond_57

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inCsType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "outCsType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_57
    iget-wide v6, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    invoke-virtual/range {v33 .. v33}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v8

    iget v9, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sourceWidth:I

    if-eqz v5, :cond_58

    move/from16 v26, v16

    goto :goto_2b

    :cond_58
    move/from16 v26, v17

    :goto_2b
    iget v5, v15, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->numScans:I

    move/from16 v21, v5

    move-object/from16 v33, v1

    move-object/from16 v1, p0

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-wide v2, v6

    move v7, v4

    move-object v4, v8

    move v5, v0

    move v6, v7

    move v7, v13

    move-object/from16 v8, v19

    move v10, v14

    move/from16 v11, v25

    move/from16 v12, v24

    move/from16 v13, v18

    move/from16 v0, v16

    move-object/from16 v14, v31

    move/from16 v15, v20

    move-object/from16 v16, v27

    move-object/from16 v17, v32

    move/from16 v18, v29

    move/from16 v19, v22

    move/from16 v20, v26

    move-object/from16 v22, v23

    move-object/from16 v23, v35

    move-object/from16 v24, v36

    move-object/from16 v25, v33

    move-object/from16 v26, v34

    move/from16 v27, v28

    move/from16 v28, v30

    invoke-direct/range {v1 .. v28}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeImage(J[BIII[IIIIII[Ljavax/imageio/plugins/jpeg/JPEGQTable;Z[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZZZI[I[I[I[I[IZI)Z

    move-result v1

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    if-eqz v1, :cond_59

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->processWriteAborted()V

    goto :goto_2c

    :cond_59
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->processImageComplete()V

    :goto_2c
    iget-object v1, v2, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v2, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    iget v1, v2, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v2, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v15

    iget-object v1, v2, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw v0

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Output has not been set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeOutputData([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, p1, p2, p3}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw p1
.end method

.method private native writeTables(J[Ljavax/imageio/plugins/jpeg/JPEGQTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;)V
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Ljavax/imageio/ImageWriter;->abort()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->abortWrite(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canWriteRasters()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canWriteSequence()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized clearAbortRequest()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->check()V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljavax/imageio/ImageWriter;->clearAbortRequest()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->resetWriter(J)V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setDest(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->convertImageMetadataOnThread(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw p1
.end method

.method public convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    instance-of p0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public dispose()V
    .locals 4

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->check()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->disposerRecord:Lsun/java2d/DisposerRecord;

    invoke-interface {v0}, Lsun/java2d/DisposerRecord;->dispose()V

    iput-wide v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw v0
.end method

.method public endWriteSequence()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->check()V

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sequencePrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sequencePrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sequencePrepared not called!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw v0
.end method

.method public getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    invoke-direct {v0, p1, p2, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw p1
.end method

.method public getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    invoke-direct {v0, p1, p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(Ljavax/imageio/ImageWriteParam;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw p1
.end method

.method public getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;
    .locals 1

    new-instance p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-object p0
.end method

.method public getNumThumbnailsSupported(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->jfifOK(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getPreferredThumbnailSizes(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)[Ljava/awt/Dimension;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->jfifOK(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->preferredThumbSizes:[Ljava/awt/Dimension;

    invoke-virtual {p0}, [Ljava/awt/Dimension;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/awt/Dimension;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public prepareWriteSequence(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->check()V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->prepareWriteSequenceOnThread(Ljavax/imageio/metadata/IIOMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw p1
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->check()V

    invoke-super {p0}, Ljavax/imageio/ImageWriter;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw v0
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->check()V

    invoke-super {p0, p1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->resetInternalState()V

    check-cast p1, Ljavax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->ios:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->structPointer:J

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setDest(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw p1
.end method

.method public thumbnailComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    :try_start_0
    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->processThumbnailComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw v0
.end method

.method public thumbnailProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->processThumbnailProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw p1
.end method

.method public thumbnailStarted(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    invoke-virtual {p0, v0, p1}, Ljavax/imageio/ImageWriter;->processThumbnailStarted(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw p1
.end method

.method public warningOccurred(I)V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    const-string v1, "com.sun.imageio.plugins.jpeg.JPEGImageWriterResources"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

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

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw p1
.end method

.method public warningWithMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->currentImage:I

    invoke-virtual {p0, v0, p1}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-static {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;)V

    throw p1
.end method

.method public write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->check()V

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->writeOnThread(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw p1
.end method

.method public writeToSequence(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->cbLock:Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter$CallBackLock;->check()V

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->sequencePrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "sequencePrepared not called!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->clearThreadLock()V

    throw p1
.end method
