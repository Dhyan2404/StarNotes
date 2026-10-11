.class public Lorg/apache/poi/hslf/record/InteractiveInfo;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# static fields
.field private static final _type:J


# instance fields
.field private _header:[B

.field private infoAtom:Lorg/apache/poi/hslf/record/InteractiveInfoAtom;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->InteractiveInfo:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/InteractiveInfo;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/hslf/record/InteractiveInfo;->_header:[B

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/hslf/record/Record;

    .line 7
    iput-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 8
    sget-wide v3, Lorg/apache/poi/hslf/record/InteractiveInfo;->_type:J

    long-to-int v1, v3

    int-to-short v1, v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 9
    new-instance v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/InteractiveInfo;->infoAtom:Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    .line 10
    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    aput-object v0, p0, v2

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/InteractiveInfo;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/InteractiveInfo;->findInterestingChildren()V

    return-void
.end method

.method private findInterestingChildren()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    iput-object v0, p0, Lorg/apache/poi/hslf/record/InteractiveInfo;->infoAtom:Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "First child record wasn\'t a InteractiveInfoAtom - leaving this atom in an invalid state..."

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInteractiveInfoAtom()Lorg/apache/poi/hslf/record/InteractiveInfoAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfo;->infoAtom:Lorg/apache/poi/hslf/record/InteractiveInfoAtom;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/InteractiveInfo;->_type:J

    return-wide v0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/InteractiveInfo;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    sget-wide v5, Lorg/apache/poi/hslf/record/InteractiveInfo;->_type:J

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
