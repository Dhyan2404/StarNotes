.class public final Lorg/apache/poi/hslf/record/HeadersFootersAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final PLACEHOLDER_MASKS:[I

.field private static final PLACEHOLDER_NAMES:[Ljava/lang/String;

.field public static final fHasDate:I = 0x1

.field public static final fHasFooter:I = 0x20

.field public static final fHasHeader:I = 0x10

.field public static final fHasSlideNumber:I = 0x8

.field public static final fHasTodayDate:I = 0x2

.field public static final fHasUserDate:I = 0x4


# instance fields
.field private final _header:[B

.field private final _recdata:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->PLACEHOLDER_MASKS:[I

    const-string v1, "DATE"

    const-string v2, "TODAY_DATE"

    const-string v3, "USER_DATE"

    const-string v4, "SLIDE_NUMBER"

    const-string v5, "HEADER"

    const-string v6, "FOOTER"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->PLACEHOLDER_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 5
    iput-object v1, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_recdata:[B

    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 6
    iput-object v2, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_header:[B

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getRecordType()J

    move-result-wide v3

    long-to-int p0, v3

    int-to-short p0, p0

    const/4 v3, 0x2

    invoke-static {v2, v3, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 8
    array-length p0, v1

    invoke-static {v2, v0, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

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

    iput-object p2, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_recdata:[B

    return-void
.end method


# virtual methods
.method public getFlag(I)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getMask()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFormatId()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_recdata:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    return p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/ufh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ufh;-><init>(Lorg/apache/poi/hslf/record/HeadersFootersAtom;)V

    new-instance v1, Lcom/sunia/HTREnginev2/vfh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vfh;-><init>(Lorg/apache/poi/hslf/record/HeadersFootersAtom;)V

    sget-object p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->PLACEHOLDER_MASKS:[I

    sget-object v2, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->PLACEHOLDER_NAMES:[Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v1, "formatIndex"

    const-string v2, "flags"

    invoke-static {v1, v0, v2, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMask()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_recdata:[B

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->HeadersFootersAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setFlag(IZ)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getMask()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->setMask(I)V

    return-void
.end method

.method public setFormatId(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_recdata:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    return-void
.end method

.method public setMask(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_recdata:[B

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeadersFootersAtom\n\tFormatId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFormatId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tMask    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getMask()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\t  fHasDate        : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFlag(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t  fHasTodayDate   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFlag(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t  fHasUserDate    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFlag(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t  fHasSlideNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFlag(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t  fHasHeader      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFlag(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\t  fHasFooter      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFlag(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->_recdata:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
