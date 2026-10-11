.class public final Lorg/apache/poi/hslf/record/FontEntityAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;


# instance fields
.field private final _header:[B

.field private _recdata:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x400

    const/16 v1, 0x800

    const/4 v2, 0x1

    const/16 v3, 0x100

    const/16 v4, 0x200

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/FontEntityAtom;->FLAGS_MASKS:[I

    const-string v0, "TRUETYPE_FONT"

    const-string v1, "NO_FONT_SUBSTITUTION"

    const-string v2, "EMBED_SUBSETTED"

    const-string v3, "RASTER_FONT"

    const-string v4, "DEVICE_FONT"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/FontEntityAtom;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x44

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_header:[B

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getRecordType()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 8
    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    array-length p0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/record/FontEntityAtom;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/FontEntityAtom;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hslf/record/FontEntityAtom;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/FontEntityAtom;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getPitchAndFamily()I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/FontEntityAtom;->getPitchAndFamily()I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCharSet()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x40

    aget-byte p0, p0, v0

    return p0
.end method

.method public getFontFlags()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x41

    aget-byte p0, p0, v0

    return p0
.end method

.method public getFontIndex()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_header:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    array-length v0, v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE0Terminated([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontType()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x42

    aget-byte p0, p0, v0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "fontName"

    new-instance v1, Lcom/sunia/HTREnginev2/ipg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ipg;-><init>(Lorg/apache/poi/hslf/record/FontEntityAtom;)V

    const-string v2, "fontIndex"

    new-instance v3, Lcom/sunia/HTREnginev2/jpg;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/jpg;-><init>(Lorg/apache/poi/hslf/record/FontEntityAtom;)V

    const-string v4, "charset"

    new-instance v5, Lcom/sunia/HTREnginev2/kpg;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/kpg;-><init>(Lorg/apache/poi/hslf/record/FontEntityAtom;)V

    const-string v6, "fontFlags"

    new-instance v7, Lcom/sunia/HTREnginev2/lpg;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/lpg;-><init>(Lorg/apache/poi/hslf/record/FontEntityAtom;)V

    sget-object v8, Lorg/apache/poi/hslf/record/FontEntityAtom;->FLAGS_MASKS:[I

    sget-object v9, Lorg/apache/poi/hslf/record/FontEntityAtom;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v7

    const-string v8, "fontPitch"

    new-instance v9, Lcom/sunia/HTREnginev2/mpg;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/mpg;-><init>(Lorg/apache/poi/hslf/record/FontEntityAtom;)V

    const-string v10, "fontFamily"

    new-instance v11, Lcom/sunia/HTREnginev2/npg;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/npg;-><init>(Lorg/apache/poi/hslf/record/FontEntityAtom;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPitchAndFamily()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x43

    aget-byte p0, p0, v0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->FontEntityAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setCharSet(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x40

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method

.method public setFontFlags(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x41

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method

.method public setFontIndex(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_header:[B

    const/4 v0, 0x0

    int-to-short p1, p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "\u0000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    array-length p1, p1

    const/16 v0, 0x40

    invoke-static {p0, p1, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "The length of the font name, including null termination, must not exceed 32 characters"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFontType(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x42

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method

.method public setPitchAndFamily(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    const/16 v0, 0x43

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/FontEntityAtom;->_recdata:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
