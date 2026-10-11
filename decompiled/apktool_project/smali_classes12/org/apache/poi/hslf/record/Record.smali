.class public abstract Lorg/apache/poi/hslf/record/Record;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field protected static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/record/Record;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(JI)Lorg/apache/logging/log4j/message/Message;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/record/Record;->lambda$createRecordForType$0(JI)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(JI)Lorg/apache/logging/log4j/message/Message;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/record/Record;->lambda$createRecordForType$1(JI)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method

.method public static buildRecordAtOffset([BI)Lorg/apache/poi/hslf/record/Record;
    .locals 4

    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    long-to-int v2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v2, v2, 0x8

    invoke-static {v0, v1, p0, p1, v2}, Lorg/apache/poi/hslf/record/Record;->createRecordForType(J[BII)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    return-object p0
.end method

.method public static createRecordForType(J[BII)Lorg/apache/poi/hslf/record/Record;
    .locals 7

    long-to-int v0, p0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/hslf/record/RecordTypes;->forTypeID(I)Lorg/apache/poi/hslf/record/RecordTypes;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/poi/hslf/record/RecordTypes;->recordConstructor:Lorg/apache/poi/hslf/record/RecordTypes$RecordConstructor;

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/oel;

    invoke-direct {v1, p0, p1, p3}, Lcom/sunia/HTREnginev2/oel;-><init>(JI)V

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Lorg/apache/logging/log4j/util/Supplier;)V

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->UnknownRecordPlaceholder:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-object v1, v0, Lorg/apache/poi/hslf/record/RecordTypes;->recordConstructor:Lorg/apache/poi/hslf/record/RecordTypes$RecordConstructor;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->UnknownRecordPlaceholder:Lorg/apache/poi/hslf/record/RecordTypes;

    if-ne v0, v2, :cond_1

    sget-object v0, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/pel;

    invoke-direct {v2, p0, p1, p3}, Lcom/sunia/HTREnginev2/pel;-><init>(JI)V

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Lorg/apache/logging/log4j/util/Supplier;)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1, p2, p3, p4}, Lorg/apache/poi/hslf/record/RecordTypes$RecordConstructor;->apply([BII)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p0, Lorg/apache/poi/hslf/record/PositionDependentRecord;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lorg/apache/poi/hslf/record/PositionDependentRecord;

    invoke-interface {p1, p3}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->setLastOnDiskOffset(I)V

    :cond_2
    return-object p0

    :catch_0
    move-exception v0

    add-int v2, p3, p4

    array-length v3, p2

    if-le v2, v3, :cond_3

    sget-object v0, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Warning: Skipping record of type {} at position {} which claims to be longer than the file! ({} vs {})"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length p0, p2

    sub-int/2addr p0, p3

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p2, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Couldn\'t instantiate the class for type with id "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " on class "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x8

    const/4 v3, 0x0

    if-gt v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    int-to-long v4, v2

    add-int/lit8 v2, v1, 0x4

    invoke-static {p0, v2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v6

    long-to-int v2, v6

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-nez v1, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    const v2, 0xffff

    if-eq v3, v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    const-string p1, "Corrupt document - starts with record of type 0000 and length 0xFFFF"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    add-int/lit8 v2, v3, 0x8

    invoke-static {v4, v5, p0, v1, v2}, Lorg/apache/poi/hslf/record/Record;->createRecordForType(J[BII)Lorg/apache/poi/hslf/record/Record;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    new-array p0, v3, [Lorg/apache/poi/hslf/record/Record;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/Record;

    return-object p0
.end method

.method private static synthetic lambda$createRecordForType$0(JI)Lorg/apache/logging/log4j/message/Message;
    .locals 2

    new-instance v0, Lorg/apache/logging/log4j/message/StringFormattedMessage;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Known but unhandled record type %d (0x%04x) at offset %d"

    invoke-direct {v0, p1, p0}, Lorg/apache/logging/log4j/message/StringFormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$createRecordForType$1(JI)Lorg/apache/logging/log4j/message/Message;
    .locals 2

    new-instance v0, Lorg/apache/logging/log4j/message/StringFormattedMessage;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Unknown placeholder type %d (0x%04x) at offset %d"

    invoke-direct {v0, p1, p0}, Lorg/apache/logging/log4j/message/StringFormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static writeLittleEndian(ILjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeLittleEndian(SLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public abstract getChildRecords()[Lorg/apache/poi/hslf/record/Record;
.end method

.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Record;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/RecordTypes;->forTypeID(I)Lorg/apache/poi/hslf/record/RecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public abstract getRecordType()J
.end method

.method public abstract isAnAtom()Z
.end method

.method public abstract writeOut(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
