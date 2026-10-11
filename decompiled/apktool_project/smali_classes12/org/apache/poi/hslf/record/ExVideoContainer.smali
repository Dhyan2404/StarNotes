.class public final Lorg/apache/poi/hslf/record/ExVideoContainer;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# instance fields
.field private _header:[B

.field private mediaAtom:Lorg/apache/poi/hslf/record/ExMediaAtom;

.field private pathAtom:Lorg/apache/poi/hslf/record/CString;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->_header:[B

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExVideoContainer;->getRecordType()J

    move-result-wide v3

    long-to-int v1, v3

    int-to-short v1, v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    new-array v0, v3, [Lorg/apache/poi/hslf/record/Record;

    .line 8
    iput-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 9
    new-instance v1, Lorg/apache/poi/hslf/record/ExMediaAtom;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/ExMediaAtom;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->mediaAtom:Lorg/apache/poi/hslf/record/ExMediaAtom;

    aput-object v1, v0, v2

    .line 10
    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    new-instance v1, Lorg/apache/poi/hslf/record/CString;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/CString;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->pathAtom:Lorg/apache/poi/hslf/record/CString;

    const/4 p0, 0x1

    aput-object v1, v0, p0

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

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/ExVideoContainer;->findInterestingChildren()V

    return-void
.end method

.method private findInterestingChildren()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/apache/poi/hslf/record/ExMediaAtom;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hslf/record/ExMediaAtom;

    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->mediaAtom:Lorg/apache/poi/hslf/record/ExMediaAtom;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "First child record wasn\'t a ExMediaAtom, was of type {}"

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/apache/poi/hslf/record/CString;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/hslf/record/CString;

    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->pathAtom:Lorg/apache/poi/hslf/record/CString;

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/util/Unbox;->box(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Second child record wasn\'t a CString, was of type {}"

    invoke-interface {p0, v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getExMediaAtom()Lorg/apache/poi/hslf/record/ExMediaAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->mediaAtom:Lorg/apache/poi/hslf/record/ExMediaAtom;

    return-object p0
.end method

.method public getPathAtom()Lorg/apache/poi/hslf/record/CString;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->pathAtom:Lorg/apache/poi/hslf/record/CString;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->ExVideoContainer:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExVideoContainer;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExVideoContainer;->getRecordType()J

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
