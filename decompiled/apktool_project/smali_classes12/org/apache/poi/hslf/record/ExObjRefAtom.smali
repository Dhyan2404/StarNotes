.class public final Lorg/apache/poi/hslf/record/ExObjRefAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# instance fields
.field private _header:[B

.field private exObjIdRef:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->_header:[B

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 4
    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->_header:[B

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExObjRefAtom;->getRecordType()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->_header:[B

    const/4 v2, 0x4

    invoke-static {v0, v2, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 6
    iput v1, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->exObjIdRef:I

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

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->_header:[B

    .line 9
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->exObjIdRef:I

    return-void
.end method


# virtual methods
.method public getExObjIdRef()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->exObjIdRef:I

    return p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/txf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/txf;-><init>(Lorg/apache/poi/hslf/record/ExObjRefAtom;)V

    const-string p0, "exObjIdRef"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->ExObjRefAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setExObjIdRef(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->exObjIdRef:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget p0, p0, Lorg/apache/poi/hslf/record/ExObjRefAtom;->exObjIdRef:I

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
