.class public Lorg/apache/poi/hslf/record/DateTimeMCAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# instance fields
.field private final _header:[B

.field private index:I

.field private position:I

.field private final unused:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->unused:[B

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->_header:[B

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->position:I

    .line 5
    iput v2, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->index:I

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->getRecordType()J

    move-result-wide v2

    long-to-int p0, v2

    int-to-short p0, p0

    const/4 v2, 0x2

    invoke-static {v1, v2, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 p0, 0x4

    .line 7
    invoke-static {v1, p0, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/4 p3, 0x3

    new-array v0, p3, [B

    .line 9
    iput-object v0, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->unused:[B

    add-int/lit8 v1, p2, 0x8

    .line 10
    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->_header:[B

    .line 11
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->position:I

    add-int/lit8 v1, p2, 0xc

    .line 12
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->index:I

    add-int/lit8 p2, p2, 0xd

    const/4 p0, 0x0

    .line 13
    invoke-static {p1, p2, v0, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
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

    new-instance v0, Lcom/sunia/HTREnginev2/lve;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lve;-><init>(Lorg/apache/poi/hslf/record/DateTimeMCAtom;)V

    new-instance v1, Lcom/sunia/HTREnginev2/mve;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mve;-><init>(Lorg/apache/poi/hslf/record/DateTimeMCAtom;)V

    const-string p0, "position"

    const-string v2, "index"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->index:I

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->position:I

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->DateTimeMCAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->index:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->position:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->position:I

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->index:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->unused:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
