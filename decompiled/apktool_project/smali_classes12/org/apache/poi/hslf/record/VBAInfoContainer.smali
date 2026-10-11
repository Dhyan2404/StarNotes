.class public final Lorg/apache/poi/hslf/record/VBAInfoContainer;
.super Lorg/apache/poi/hslf/record/RecordContainer;
.source "SourceFile"


# static fields
.field private static final _type:J


# instance fields
.field private _header:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->VBAInfo:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/VBAInfoContainer;->_type:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/hslf/record/VBAInfoContainer;->_header:[B

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/apache/poi/hslf/record/Record;

    .line 7
    iput-object v2, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    .line 8
    sget-wide v1, Lorg/apache/poi/hslf/record/VBAInfoContainer;->_type:J

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/VBAInfoContainer;->findInterestingChildren()V

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

    iput-object p2, p0, Lorg/apache/poi/hslf/record/VBAInfoContainer;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/VBAInfoContainer;->findInterestingChildren()V

    return-void
.end method

.method private findInterestingChildren()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/VBAInfoContainer;->_type:J

    return-wide v0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/VBAInfoContainer;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    sget-wide v5, Lorg/apache/poi/hslf/record/VBAInfoContainer;->_type:J

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
