.class public final Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# instance fields
.field private _header:[B

.field private _placeholderId:B


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_header:[B

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 4
    iget-object v1, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_header:[B

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->getRecordType()J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v1, v4, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 5
    iget-object v1, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_header:[B

    const/4 v3, 0x4

    invoke-static {v1, v3, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 6
    iput-byte v2, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_placeholderId:B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 p3, p2, 0x8

    .line 8
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_header:[B

    .line 9
    aget-byte p1, p1, p3

    iput-byte p1, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_placeholderId:B

    return-void
.end method


# virtual methods
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

    new-instance v0, Lcom/sunia/HTREnginev2/gsl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gsl;-><init>(Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;)V

    const-string p0, "placeholderId"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderId()I
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_placeholderId:B

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->RoundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setPlaceholderId(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_placeholderId:B

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->_placeholderId:B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
