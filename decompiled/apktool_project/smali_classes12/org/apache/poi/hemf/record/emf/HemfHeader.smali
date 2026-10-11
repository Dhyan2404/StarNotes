.class public Lorg/apache/poi/hemf/record/emf/HemfHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private bOpenGL:J

.field private final boundsRectangle:Ljava/awt/geom/Rectangle2D;

.field private bytes:J

.field private cbPixelFormat:J

.field private description:Ljava/lang/String;

.field private final deviceDimension:Ljava/awt/geom/Dimension2D;

.field private final frameRectangle:Ljava/awt/geom/Rectangle2D;

.field private handles:I

.field private hasExtension1:Z

.field private hasExtension2:Z

.field private final microDimension:Ljava/awt/geom/Dimension2D;

.field private final milliDimension:Ljava/awt/geom/Dimension2D;

.field private nPalEntries:J

.field private offPixelFormat:J

.field private records:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->boundsRectangle:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->frameRectangle:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->deviceDimension:Ljava/awt/geom/Dimension2D;

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->milliDimension:Ljava/awt/geom/Dimension2D;

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->microDimension:Ljava/awt/geom/Dimension2D;

    return-void
.end method


# virtual methods
.method public getBoundsRectangle()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->boundsRectangle:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->bytes:J

    return-wide v0
.end method

.method public getCbPixelFormat()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->cbPixelFormat:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceDimension()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->deviceDimension:Ljava/awt/geom/Dimension2D;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->header:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getFrameRectangle()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->frameRectangle:Ljava/awt/geom/Rectangle2D;

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

    new-instance v1, Lcom/sunia/HTREnginev2/xjh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xjh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "boundsRectangle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ikh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ikh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "frameRectangle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "bytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/kkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "records"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "handles"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/yjh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yjh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zjh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zjh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "nPalEntries"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/akh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/akh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "hasExtension1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "cbPixelFormat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ckh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ckh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "offPixelFormat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "bOpenGL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ekh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ekh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "hasExtension2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "deviceDimension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string v2, "milliDimension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hkh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hkh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    const-string p0, "microDimension"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHandles()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->handles:I

    return p0
.end method

.method public getMicroDimension()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->microDimension:Ljava/awt/geom/Dimension2D;

    return-object p0
.end method

.method public getMilliDimension()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->milliDimension:Ljava/awt/geom/Dimension2D;

    return-object p0
.end method

.method public getNPalEntries()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->nPalEntries:J

    return-wide v0
.end method

.method public getOffPixelFormat()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->offPixelFormat:J

    return-wide v0
.end method

.method public getRecords()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->records:J

    return-wide v0
.end method

.method public getbOpenGL()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->bOpenGL:J

    return-wide v0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->header:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    iget-wide v0, v0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->id:J

    cmp-long v0, p4, v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    iget-object p4, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->boundsRectangle:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p4}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide p4

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->frameRectangle:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v0

    add-long/2addr p4, v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    const v1, 0x464d4520

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->bytes:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->records:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->handles:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->nPalEntries:J

    const-wide/16 v3, 0x20

    add-long/2addr p4, v3

    iget-object v3, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->deviceDimension:Ljava/awt/geom/Dimension2D;

    invoke-static {p1, v3}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readDimensionInt(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)J

    move-result-wide v3

    add-long/2addr p4, v3

    iget-object v3, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->milliDimension:Ljava/awt/geom/Dimension2D;

    invoke-static {p1, v3}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readDimensionInt(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)J

    move-result-wide v3

    add-long/2addr p4, v3

    const-wide/16 v3, 0x8

    const/4 v5, 0x1

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    int-to-long v6, v2

    add-long v8, p4, v3

    sub-long/2addr v6, v8

    long-to-int v2, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Lorg/apache/poi/util/LittleEndianInputStream;->mark(I)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    sub-int/2addr v1, v5

    mul-int/2addr v1, v0

    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v0, 0x0

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->description:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->reset()V

    :cond_0
    const-wide/16 v0, 0xc

    add-long/2addr v0, p4

    cmp-long v2, v0, p2

    if-gtz v2, :cond_1

    iput-boolean v5, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->hasExtension1:Z

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    iput-wide p4, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->cbPixelFormat:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    iput-wide p4, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->offPixelFormat:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    iput-wide p4, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->bOpenGL:J

    move-wide p4, v0

    :cond_1
    add-long/2addr v3, p4

    cmp-long p2, v3, p2

    if-gtz p2, :cond_2

    iput-boolean v5, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->hasExtension2:Z

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->microDimension:Ljava/awt/geom/Dimension2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readDimensionInt(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)J

    move-result-wide p0

    add-long/2addr p4, p0

    :cond_2
    return-wide p4

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad record signature: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not a valid EMF header. Record type:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isHasExtension1()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->hasExtension1:Z

    return p0
.end method

.method public isHasExtension2()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;->hasExtension2:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
