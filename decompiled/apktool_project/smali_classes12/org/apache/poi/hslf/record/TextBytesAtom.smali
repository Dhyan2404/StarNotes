.class public final Lorg/apache/poi/hslf/record/TextBytesAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field public static final _type:J


# instance fields
.field private _header:[B

.field private _text:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->TextBytesAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_header:[B

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 7
    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_header:[B

    sget-wide v2, Lorg/apache/poi/hslf/record/TextBytesAtom;->_type:J

    long-to-int v2, v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 8
    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_header:[B

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    new-array v0, v1, [B

    .line 9
    iput-object v0, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_text:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    add-int/lit8 v1, p2, 0x8

    .line 2
    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_header:[B

    sub-int/2addr p3, v0

    .line 3
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v1, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_text:[B

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

    new-instance v0, Lcom/sunia/HTREnginev2/acn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/acn;-><init>(Lorg/apache/poi/hslf/record/TextBytesAtom;)V

    const-string p0, "text"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_type:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_text:[B

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setText([B)V
    .locals 1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_text:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_header:[B

    const/4 v0, 0x4

    array-length p1, p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

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

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextBytesAtom;->_text:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
