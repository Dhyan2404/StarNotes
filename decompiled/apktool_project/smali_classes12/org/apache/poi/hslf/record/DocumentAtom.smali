.class public final Lorg/apache/poi/hslf/record/DocumentAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;
    }
.end annotation


# static fields
.field private static final _type:J


# instance fields
.field private final _header:[B

.field private final firstSlideNum:I

.field private final handoutMasterPersist:J

.field private final notesMasterPersist:J

.field private notesSizeX:J

.field private notesSizeY:J

.field private final omitTitlePlace:B

.field private final reserved:[B

.field private final rightToLeft:B

.field private saveWithFonts:B

.field private serverZoomFrom:J

.field private serverZoomTo:J

.field private final showComments:B

.field private slideSizeType:I

.field private slideSizeX:J

.field private slideSizeY:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->DocumentAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/DocumentAtom;->_type:J

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->_header:[B

    const/16 v1, 0x30

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeX:J

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeY:J

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesSizeX:J

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesSizeY:J

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->serverZoomFrom:J

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->serverZoomTo:J

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesMasterPersist:J

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->handoutMasterPersist:J

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->firstSlideNum:I

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeType:I

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->saveWithFonts:B

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->omitTitlePlace:B

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->rightToLeft:B

    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->showComments:B

    int-to-long p1, p3

    const-wide/16 v2, 0x30

    sub-long/2addr p1, v2

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p3

    invoke-static {p1, p2, p3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->reserved:[B

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([B)V

    return-void
.end method


# virtual methods
.method public getFirstSlideNum()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->firstSlideNum:I

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

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/v9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v9f;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "slideSizeX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/eaf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eaf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "slideSizeY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/faf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/faf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "notesSizeX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gaf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gaf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "notesSizeY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/haf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/haf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "serverZoomFrom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/iaf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/iaf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "serverZoomTo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/w9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w9f;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "notesMasterPersist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/x9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x9f;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "handoutMasterPersist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/y9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y9f;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "firstSlideNum"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/z9f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z9f;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "slideSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/aaf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/aaf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "saveWithFonts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/baf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/baf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "omitTitlePlace"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/caf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/caf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string v2, "rightToLeft"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/daf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/daf;-><init>(Lorg/apache/poi/hslf/record/DocumentAtom;)V

    const-string p0, "showComments"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHandoutMasterPersist()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->handoutMasterPersist:J

    return-wide v0
.end method

.method public getNotesMasterPersist()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesMasterPersist:J

    return-wide v0
.end method

.method public getNotesSizeX()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesSizeX:J

    return-wide v0
.end method

.method public getNotesSizeY()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesSizeY:J

    return-wide v0
.end method

.method public getOmitTitlePlace()Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->omitTitlePlace:B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/DocumentAtom;->_type:J

    return-wide v0
.end method

.method public getRightToLeft()Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->rightToLeft:B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSaveWithFonts()Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->saveWithFonts:B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getServerZoomFrom()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->serverZoomFrom:J

    return-wide v0
.end method

.method public getServerZoomTo()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->serverZoomTo:J

    return-wide v0
.end method

.method public getShowComments()Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->showComments:B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSlideSizeType()Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->values()[Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    move-result-object v0

    iget p0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeType:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getSlideSizeTypeEnum()Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    invoke-static {}, Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;->values()[Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;

    move-result-object v0

    iget p0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeType:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getSlideSizeX()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeX:J

    return-wide v0
.end method

.method public getSlideSizeY()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeY:J

    return-wide v0
.end method

.method public setNotesSizeX(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesSizeX:J

    return-void
.end method

.method public setNotesSizeY(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesSizeY:J

    return-void
.end method

.method public setSaveWithFonts(Z)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->saveWithFonts:B

    return-void
.end method

.method public setServerZoomFrom(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->serverZoomFrom:J

    return-void
.end method

.method public setServerZoomTo(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->serverZoomTo:J

    return-void
.end method

.method public setSlideSize(Lorg/apache/poi/hslf/record/DocumentAtom$SlideSize;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeType:I

    return-void
.end method

.method public setSlideSizeX(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeX:J

    return-void
.end method

.method public setSlideSizeY(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeY:J

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeX:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeY:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesSizeX:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesSizeY:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->serverZoomFrom:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->serverZoomTo:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->notesMasterPersist:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->handoutMasterPersist:J

    long-to-int v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->firstSlideNum:I

    int-to-short v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->slideSizeType:I

    int-to-short v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    iget-byte v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->saveWithFonts:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-byte v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->omitTitlePlace:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-byte v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->rightToLeft:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-byte v0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->showComments:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/DocumentAtom;->reserved:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
