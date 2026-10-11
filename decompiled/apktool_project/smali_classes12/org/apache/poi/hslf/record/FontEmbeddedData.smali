.class public Lorg/apache/poi/hslf/record/FontEmbeddedData;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontFacet;


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x4c4b40

.field private static MAX_RECORD_LENGTH:I = 0x4c4b40


# instance fields
.field private _data:[B

.field private _header:[B

.field private fontHeader:Lorg/apache/poi/common/usermodel/fonts/FontHeader;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_header:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 3
    iput-object v2, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_data:[B

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontEmbeddedData;->getRecordType()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_data:[B

    array-length p0, p0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 7
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 8
    sget p2, Lorg/apache/poi/hslf/record/FontEmbeddedData;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_data:[B

    .line 9
    array-length p1, p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The length of the data for a ExObjListAtom must be at least 4 bytes, but was only "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_data:[B

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getFontData()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getFontHeader()Lorg/apache/poi/common/usermodel/fonts/FontHeader;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->fontHeader:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-direct {v0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_data:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->init([BII)V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->fontHeader:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->fontHeader:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hpg;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/hpg;-><init>(Lorg/apache/poi/hslf/record/FontEmbeddedData;)V

    const-string p0, "fontHeader"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->FontEmbeddedData:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontEmbeddedData;->getFontHeader()Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getFamilyName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontEmbeddedData;->getFontHeader()Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->getWeight()I

    move-result p0

    return p0
.end method

.method public isItalic()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontEmbeddedData;->getFontHeader()Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontHeader;->isItalic()Z

    move-result p0

    return p0
.end method

.method public setFontData([B)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->fontHeader:Lorg/apache/poi/common/usermodel/fonts/FontHeader;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_data:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_header:[B

    const/4 v0, 0x4

    array-length p1, p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEmbeddedData;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
