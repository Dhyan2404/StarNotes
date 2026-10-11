.class public final Lorg/apache/poi/hsmf/datatypes/NameIdChunks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hsmf/datatypes/ChunkGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PredefinedPropertySet;,
        Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "__nameid_version1.0"


# instance fields
.field private allChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hsmf/datatypes/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private entryStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

.field private guidStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

.field private stringStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->allChunks:Ljava/util/List;

    return-void
.end method

.method public static synthetic a([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->lambda$getPropertyTag$0([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b([JLjava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->lambda$getPropertyTag$1([JLjava/lang/Long;)V

    return-void
.end method

.method private static calculateCRC32([BII)J
    .locals 4

    new-instance v0, Lorg/apache/commons/codec/digest/PureJavaCrc32;

    invoke-direct {v0}, Lorg/apache/commons/codec/digest/PureJavaCrc32;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/commons/codec/digest/PureJavaCrc32;->update([BII)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/codec/digest/PureJavaCrc32;->update([BII)V

    invoke-virtual {v0}, Lorg/apache/commons/codec/digest/PureJavaCrc32;->getValue()J

    move-result-wide p0

    not-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private getPropertyGUID(I)Lorg/apache/poi/hpsf/ClassID;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->PS_MAPI:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    invoke-static {p0}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->access$000(Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;)Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->PS_PUBLIC_STRINGS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    invoke-static {p0}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->access$000(Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;)Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-lt p1, v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->guidStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object p0

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x10

    array-length v0, p0

    add-int/lit8 v1, p1, 0x10

    if-lt v0, v1, :cond_2

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPropertyTag(JJJ)J
    .locals 9

    .line 13
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->allChunks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/Chunk;

    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/hsmf/datatypes/Types;->BINARY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    .line 17
    :goto_1
    array-length v3, v0

    div-int/lit8 v3, v3, 0x8

    if-ge v2, v3, :cond_0

    .line 18
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v3

    .line 19
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v5

    .line 20
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v6

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    move-wide v7, p3

    goto :goto_2

    :cond_3
    move-wide v7, p5

    :goto_2
    cmp-long v3, v3, v7

    if-nez v3, :cond_4

    const-wide/32 p0, 0x8000

    int-to-long p2, v6

    add-long/2addr p2, p0

    return-wide p2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getStreamID(IILorg/apache/poi/hpsf/ClassID;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/apache/poi/hpsf/ClassID;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x1000

    if-nez p1, :cond_0

    shl-int/lit8 p0, p4, 0x1

    xor-int/2addr p0, p2

    rem-int/lit8 p0, p0, 0x1f

    int-to-long p0, p0

    :goto_0
    add-long/2addr p0, v0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->stringStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object p0

    array-length p1, p0

    if-le p1, p2, :cond_2

    invoke-static {p0, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    array-length p1, p0

    int-to-long v4, p1

    add-int/lit8 p2, p2, 0x4

    int-to-long v6, p2

    add-long/2addr v6, v2

    cmp-long p1, v4, v6

    if-ltz p1, :cond_2

    new-instance p1, Ljava/lang/String;

    long-to-int v2, v2

    sget-object v3, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    sget-object v4, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->PS_INTERNET_HEADERS:Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;

    invoke-static {v4}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;->access$000(Lorg/apache/poi/hsmf/datatypes/NameIdChunks$PropertySetType;)Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    invoke-virtual {v4, p3}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p2, p0

    const/4 p3, 0x0

    invoke-static {p0, p3, p2}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->calculateCRC32([BII)J

    move-result-wide p2

    goto :goto_1

    :cond_1
    invoke-static {p0, p2, v2}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->calculateCRC32([BII)J

    move-result-wide p2

    :goto_1
    invoke-interface {p5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p6, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-wide/16 p2, -0x1

    :goto_2
    shl-int/lit8 p0, p4, 0x1

    or-int/lit8 p0, p0, 0x1

    int-to-long p0, p0

    xor-long/2addr p0, p2

    const-wide/16 p2, 0x1f

    rem-long/2addr p0, p2

    goto :goto_0
.end method

.method private static synthetic lambda$getPropertyTag$0([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method

.method private static synthetic lambda$getPropertyTag$1([JLjava/lang/Long;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, p0, v0

    return-void
.end method

.method private static matchesProperty(IJLjava/lang/String;Ljava/lang/String;J)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-ltz v1, :cond_0

    cmp-long p1, p5, p1

    if-eqz p1, :cond_2

    :cond_0
    if-ne p0, v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public chunksComplete()V
    .locals 0

    return-void
.end method

.method public getAll()[Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->allChunks:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hsmf/datatypes/Chunk;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hsmf/datatypes/Chunk;

    return-object p0
.end method

.method public getChunks()[Lorg/apache/poi/hsmf/datatypes/Chunk;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->getAll()[Lorg/apache/poi/hsmf/datatypes/Chunk;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyTag(Lorg/apache/poi/hpsf/ClassID;Ljava/lang/String;J)J
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    iget-object v0, v7, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->entryStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    const/4 v9, 0x0

    if-nez v0, :cond_0

    move-object v10, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object v0

    move-object v10, v0

    .line 2
    :goto_0
    iget-object v0, v7, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->guidStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    if-eqz v0, :cond_6

    iget-object v0, v7, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->entryStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    if-eqz v0, :cond_6

    iget-object v0, v7, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->stringStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    if-eqz v0, :cond_6

    if-eqz v8, :cond_6

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    new-instance v13, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v13, v10}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    const/4 v14, 0x0

    move v15, v14

    .line 4
    :goto_1
    array-length v0, v10

    div-int/lit8 v0, v0, 0x8

    if-ge v15, v0, :cond_5

    .line 5
    invoke-virtual {v13}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUInt()J

    move-result-wide v5

    .line 6
    invoke-virtual {v13}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v0

    and-int/lit8 v4, v0, 0x1

    const/4 v3, 0x1

    ushr-int/lit8 v2, v0, 0x1

    .line 7
    invoke-virtual {v13}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readUShort()I

    move-result v1

    .line 8
    invoke-direct {v7, v2}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->getPropertyGUID(I)Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [J

    const-wide/16 v16, -0x1

    aput-wide v16, v9, v14

    long-to-int v3, v5

    .line 10
    new-instance v11, Lcom/sunia/HTREnginev2/orj;

    invoke-direct {v11, v0}, Lcom/sunia/HTREnginev2/orj;-><init>([Ljava/lang/String;)V

    new-instance v12, Lcom/sunia/HTREnginev2/prj;

    invoke-direct {v12, v9}, Lcom/sunia/HTREnginev2/prj;-><init>([J)V

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v23, v1

    move v1, v4

    move/from16 v18, v2

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v24, v4

    move/from16 v4, v18

    move-wide/from16 v25, v5

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->getStreamID(IILorg/apache/poi/hpsf/ClassID;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)J

    move-result-wide v1

    .line 11
    aget-object v20, v17, v14

    move/from16 v16, v24

    move-wide/from16 v17, v25

    move-object/from16 v19, p2

    move-wide/from16 v21, p3

    invoke-static/range {v16 .. v22}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->matchesProperty(IJLjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    move/from16 v0, v24

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    aget-wide v3, v9, v14

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    const-wide/32 v0, 0x8000

    move/from16 v2, v23

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_4
    aget-wide v5, v9, v14

    move-object/from16 v0, p0

    move-wide/from16 v3, v25

    .line 12
    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->getPropertyTag(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_6
    :goto_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public record(Lorg/apache/poi/hsmf/datatypes/Chunk;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getType()Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hsmf/datatypes/Types;->BINARY:Lorg/apache/poi/hsmf/datatypes/Types$MAPIType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/datatypes/Chunk;->getChunkId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->stringStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->entryStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    iput-object v0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->guidStream:Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    :cond_3
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hsmf/datatypes/NameIdChunks;->allChunks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
