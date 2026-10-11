.class public Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x5f5e100

.field private static MAX_RECORD_LENGTH:I = 0x5f5e100


# instance fields
.field private current:Ljava/lang/Object;

.field private final iterStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hemf/record/emf/HemfRecord;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getRecords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private checkEmfCommentDataFormat()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;

    new-instance v1, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    invoke-direct {v1}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->getSignature()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;->ENHMETA_SIGNATURE:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfFormatSignature;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    sget-object v3, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->EMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->EPS:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    :goto_1
    invoke-virtual {v1, v3}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setEmbeddedType(Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;->getRawData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setData([B)V

    iput-object v2, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    return-object v1
.end method

.method private checkEmfCommentDataGeneric()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->getCommentData()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->getCommentData()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;

    new-instance v1, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    invoke-direct {v1}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;-><init>()V

    sget-object v3, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->UNKNOWN:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    invoke-virtual {v1, v3}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setEmbeddedType(Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;->getPrivateData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setData([B)V

    iput-object v2, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    return-object v1

    :cond_1
    :goto_0
    return-object v2
.end method

.method private checkEmfCommentDataWMF()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->getCommentData()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->getCommentData()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;

    new-instance v1, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    invoke-direct {v1}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;-><init>()V

    sget-object v3, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->WMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    invoke-virtual {v1, v3}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setEmbeddedType(Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;->getWMFData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setData([B)V

    iput-object v2, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    return-object v1

    :cond_1
    :goto_0
    return-object v2
.end method

.method private checkEmfPlusObject()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    check-cast v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getObjectData()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->getEmfPlusImageData()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    sget-object v2, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusImageDataType:[I

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getImageDataType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_2

    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->UNKNOWN:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusMetafileDataType:[I

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getMetafileType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->UNKNOWN:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->EMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_4
    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->WMF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getBitmapType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    move-result-object v2

    sget-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;->COMPRESSED:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    if-ne v2, v7, :cond_a

    sget-object p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->getRawData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_6

    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->BITMAP:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_6
    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->TIFF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_7
    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->PNG:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_8
    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->GIF:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_9
    sget-object p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->JPEG:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    goto :goto_0

    :cond_a
    sget-object v2, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->PNG:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->compressGDIBitmap(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V

    move-object p0, v2

    :goto_0
    invoke-virtual {v1, p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setEmbeddedType(Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V

    return-object v1
.end method

.method private checkWmfStretchDib()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    check-cast v2, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->getBitmap()Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getBMPData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setData([B)V

    sget-object v2, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->BMP:Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setEmbeddedType(Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V

    iput-object v1, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    return-object v0
.end method

.method private compressGDIBitmap(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;)V
    .locals 0

    invoke-virtual {p2}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->getRawData()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->readGDIImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p0

    :try_start_0
    new-instance p1, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p1}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getEmfPlusImageData()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result v1

    new-instance v2, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    invoke-direct {v2}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getTotalObjectSize()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getObjectData()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

    invoke-virtual {v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getImageData()[B

    move-result-object v3

    array-length v3, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getTotalObjectSize()I

    move-result v3

    :goto_0
    int-to-long v4, v3

    sget v6, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->MAX_RECORD_LENGTH:I

    invoke-static {v4, v5, v6}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v5, v3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getObjectData()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

    invoke-virtual {v6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getImageData()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    iput-object v4, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->moveNext()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    instance-of v7, v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    if-eqz v7, :cond_2

    move-object v0, v6

    check-cast v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result v6

    if-ne v6, v1, :cond_2

    invoke-virtual {v5}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result v6

    add-int/lit8 v7, v3, -0x10

    if-ge v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_1

    invoke-virtual {v5}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->setData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v5}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v4
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private moveNext()Z
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    invoke-virtual {v4}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->getCommentData()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataWMF;

    if-nez v5, :cond_5

    instance-of v5, v4, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataGeneric;

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    instance-of v5, v4, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;

    invoke-virtual {v5}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataMultiformats;->getFormats()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v3, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v3, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of v5, v4, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;

    if-eqz v5, :cond_6

    check-cast v4, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;

    invoke-virtual {v4}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataPlus;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_0

    :cond_5
    :goto_1
    iput-object v3, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    return v2

    :cond_6
    instance-of v4, v3, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataFormat;

    if-eqz v4, :cond_7

    iput-object v3, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    return v2

    :cond_7
    instance-of v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    if-eqz v4, :cond_8

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    invoke-virtual {v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getObjectType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->IMAGE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    if-ne v4, v5, :cond_8

    iput-object v3, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    return v2

    :cond_8
    instance-of v4, v3, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;

    invoke-virtual {v4}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;->getBitmap()Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->current:Ljava/lang/Object;

    return v2

    :cond_9
    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->iterStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->moveNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->next()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->checkEmfCommentDataWMF()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->checkEmfCommentDataGeneric()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->checkEmfCommentDataFormat()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->checkEmfPlusObject()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;->checkWmfStretchDib()Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    .line 7
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "no further embedded wmf records found."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
