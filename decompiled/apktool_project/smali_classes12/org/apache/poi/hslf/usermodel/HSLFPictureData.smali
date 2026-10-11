.class public abstract Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PictureData;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field protected static final CHECKSUM_SIZE:I = 0x10

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field static final PREAMBLE_SIZE:I = 0x8


# instance fields
.field final bStore:Lorg/apache/poi/ddf/EscherContainerRecord;

.field final bse:Lorg/apache/poi/ddf/EscherBSERecord;

.field private formattedData:[B

.field private index:I

.field private uidInstanceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    new-instance v1, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    .line 2
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "The no-arg constructor is deprecated. Some functionality such as updating pictures won\'t work."

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->uidInstanceCount:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->index:I

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->bStore:Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->bse:Lorg/apache/poi/ddf/EscherBSERecord;

    return-void
.end method

.method public static create(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "HSLFPictureData#create(PictureType) is deprecated. Some functionality such as updating pictures won\'t work."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    new-instance v0, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    const/4 v2, 0x0

    new-array v5, v2, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;[BII)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->setRecord(Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->build()Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public static createFromImageData(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;[B)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->newInstance(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formatImageForSlideshow([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formattedData:[B

    return-object p0
.end method

.method public static createFromSlideshowData(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;[BI)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->newInstance(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object p0

    invoke-virtual {p0, p4}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setSignature(I)V

    iput-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formattedData:[B

    return-object p0
.end method

.method public static getChecksum([B)[B
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method private static newInstance(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData$1;->$SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported picture type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hslf/blip/DIB;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/DIB;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hslf/blip/PNG;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/PNG;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/hslf/blip/JPEG;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/JPEG;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/hslf/blip/PICT;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/PICT;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/hslf/blip/WMF;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/WMF;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/hslf/blip/EMF;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/blip/EMF;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract formatImageForSlideshow([B)[B
.end method

.method public getBseSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formattedData:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getChecksum()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUID()[B

    move-result-object p0

    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/d7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/e7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string v2, "imageDimension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/f7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string v2, "signature"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/g7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string v2, "uidInstanceCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/h7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string v2, "offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/i7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/j7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string v2, "checksum"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/k7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string v2, "index"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/l7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    const-string p0, "rawData"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHeader()[B
    .locals 4

    const/16 v0, 0x18

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getSignature()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getRawData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x4

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formattedData:[B

    const/16 v1, 0x8

    const/16 v3, 0x10

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getImageDimensionInPixels()Ljava/awt/Dimension;
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object p0

    new-instance v0, Ljava/awt/Dimension;

    invoke-virtual {p0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result p0

    invoke-direct {v0, v1, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->index:I

    return p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureData;->getData()[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getOffset()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->bse:Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getOffset()I

    move-result p0

    return p0
.end method

.method public getRawData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formattedData:[B

    return-object p0
.end method

.method public abstract getSignature()I
.end method

.method public getUID()[B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formattedData:[B

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getUIDInstanceCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->uidInstanceCount:I

    return p0
.end method

.method public final setData([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getBseSize()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formatImageForSlideshow([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formattedData:[B

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getBseSize()I

    move-result p1

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getUID()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->bStore:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lcom/sunia/HTREnginev2/m7h;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/m7h;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherBSERecord;->getOffset()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherBSERecord;->setOffset(I)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->bse:Lorg/apache/poi/ddf/EscherBSERecord;

    if-ne v4, v5, :cond_0

    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setUid([B)V

    invoke-virtual {v4, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setSize(I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->index:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "HSLFPictureData#setOffset is deprecated."

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setRawData([B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.3"
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->formattedData:[B

    return-void
.end method

.method public abstract setSignature(I)V
.end method

.method public setUIDInstanceCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->uidInstanceCount:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getSignature()I

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putUShort(ILjava/io/OutputStream;)V

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    iget v0, v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    sget-object v1, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_START:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v1, v1, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putUShort(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getRawData()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
