.class public Lcom/sun/imageio/plugins/tiff/TIFFIFD;
.super Ljavax/imageio/plugins/tiff/TIFFDirectory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;
    }
.end annotation


# static fields
.field private static final MAX_ASCII_SIZE:J = 0xffffL

.field private static final MAX_SAMPLES_PER_PIXEL:J = 0xffffL

.field private static volatile essentialTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastPosition:J

.field private stripOrTileByteCountsPosition:J

.field private stripOrTileOffsetsPosition:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;Ljavax/imageio/plugins/tiff/TIFFTag;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljavax/imageio/plugins/tiff/TIFFTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;",
            "Ljavax/imageio/plugins/tiff/TIFFTag;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-direct {p0, p1, p2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;-><init>([Ljavax/imageio/plugins/tiff/TIFFTagSet;Ljavax/imageio/plugins/tiff/TIFFTag;)V

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileByteCountsPosition:J

    .line 3
    iput-wide p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileOffsetsPosition:J

    .line 4
    iput-wide p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->lastPosition:J

    return-void
.end method

.method private calculateByteCounts(ILjava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFField;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x11c

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getFieldAsInt(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const/16 v1, 0x103

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getFieldAsInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getFieldAsLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    return v3

    :cond_2
    const/16 v1, 0x101

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getFieldAsLong(I)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-gez v1, :cond_3

    return v3

    :cond_3
    const/16 v1, 0x142

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getFieldAsLong(I)J

    move-result-wide v10

    cmp-long v1, v10, v6

    if-gez v1, :cond_4

    move-wide v10, v4

    :cond_4
    const/16 v1, 0x143

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getFieldAsLong(I)J

    move-result-wide v12

    cmp-long v1, v12, v6

    if-gez v1, :cond_5

    const/16 v1, 0x116

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getFieldAsLong(I)J

    move-result-wide v12

    cmp-long v1, v12, v6

    if-gez v1, :cond_5

    move-wide v12, v8

    :cond_5
    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/16 v14, 0x8

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInts()[I

    move-result-object v1

    goto :goto_0

    :cond_6
    const/16 v1, 0x115

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getFieldAsInt(I)I

    move-result v1

    if-gez v1, :cond_7

    move v1, v2

    :cond_7
    new-array v1, v1, [I

    invoke-static {v1, v14}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    array-length v15, v1

    move v2, v3

    move v6, v2

    :goto_1
    if-ge v2, v15, :cond_8

    aget v7, v1, v2

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    int-to-long v1, v6

    mul-long/2addr v1, v10

    const-wide/16 v6, 0x7

    add-long/2addr v1, v6

    long-to-int v1, v1

    div-int/2addr v1, v14

    long-to-int v2, v12

    mul-int/2addr v2, v1

    add-long v6, v4, v10

    const-wide/16 v14, 0x1

    sub-long/2addr v6, v14

    div-long/2addr v6, v10

    add-long v16, v8, v12

    sub-long v16, v16, v14

    div-long v16, v16, v12

    mul-long v6, v6, v16

    move/from16 v14, p1

    int-to-long v14, v14

    cmp-long v14, v6, v14

    if-eqz v14, :cond_9

    return v3

    :cond_9
    const/16 v14, 0x145

    invoke-virtual {v0, v14}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v15

    if-eqz v15, :cond_a

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_2

    :cond_b
    const/16 v14, 0x117

    :goto_2
    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    invoke-virtual {v0, v14}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v0, v14}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    :cond_c
    long-to-int v6, v6

    new-array v7, v6, [J

    int-to-long v14, v2

    invoke-static {v7, v14, v15}, Ljava/util/Arrays;->fill([JJ)V

    cmp-long v2, v10, v4

    if-gtz v2, :cond_d

    rem-long v4, v8, v12

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-eqz v2, :cond_d

    const-wide/16 v4, 0x1

    sub-long v16, v16, v4

    mul-long v16, v16, v12

    sub-long v8, v8, v16

    long-to-int v2, v8

    add-int/lit8 v4, v6, -0x1

    mul-int/2addr v2, v1

    int-to-long v1, v2

    aput-wide v1, v7, v4

    :cond_d
    new-instance v1, Ljavax/imageio/plugins/tiff/TIFFField;

    const/4 v2, 0x4

    invoke-direct {v1, v3, v2, v6, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCounts is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkFieldOffsets(J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x111

    invoke-virtual {p0, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/16 v1, 0x144

    invoke-virtual {p0, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v5

    if-lez v4, :cond_3

    if-ne v5, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "StripOffsets count != TileOffsets count"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    move v3, v5

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    const/16 v4, 0x117

    invoke-virtual {p0, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v5

    if-ne v5, v3, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "StripByteCounts count != number of offsets"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    const/16 v4, 0x145

    invoke-virtual {p0, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v5

    if-ne v5, v3, :cond_8

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "TileByteCounts count != number of offsets"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/imageio/plugins/tiff/TIFFField;

    move v8, v2

    :goto_4
    if-ge v8, v3, :cond_b

    invoke-virtual {v5, v8}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v9

    invoke-virtual {v7, v8}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v11

    add-long/2addr v9, v11

    cmp-long v9, v9, p1

    if-gtz v9, :cond_c

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Data segment out of stream"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const/16 v3, 0x201

    invoke-virtual {p0, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v3

    if-eqz v3, :cond_f

    const/16 v4, 0x202

    invoke-virtual {p0, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v3, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v4, v5, p1

    if-gtz v4, :cond_e

    goto :goto_5

    :cond_e
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "JPEGInterchangeFormat data out of stream"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_5
    if-nez v3, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_13

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->calculateByteCounts(ILjava/util/List;)Z

    move-result v0

    xor-int/2addr v4, v0

    :cond_11
    if-nez v4, :cond_12

    goto :goto_6

    :cond_12
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Insufficient data offsets or byte counts"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_6
    const/16 v0, 0x207

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-wide v4, v0, v3

    const-wide/16 v6, 0x40

    add-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-gtz v4, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_14
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "JPEGQTables data out of stream"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    const/16 v0, 0x208

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    const-wide/16 v3, 0x10

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object v0

    array-length v1, v0

    move v5, v2

    :goto_8
    if-ge v5, v1, :cond_17

    aget-wide v6, v0, v5

    add-long/2addr v6, v3

    cmp-long v6, v6, p1

    if-gtz v6, :cond_16

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_16
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "JPEGDCTables data out of stream"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    const/16 v0, 0x209

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object p0

    array-length v0, p0

    :goto_9
    if-ge v2, v0, :cond_19

    aget-wide v5, p0, v2

    add-long/2addr v5, v3

    cmp-long v1, v5, p1

    if-gtz v1, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "JPEGACTables data out of stream"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    return-void
.end method

.method public static getDirectoryAsIFD(Ljavax/imageio/plugins/tiff/TIFFDirectory;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;
    .locals 11

    instance-of v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    return-object p0

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTagSets()[Ljavax/imageio/plugins/tiff/TIFFTagSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getParentTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;Ljavax/imageio/plugins/tiff/TIFFTag;)V

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFFields()[Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/imageio/plugins/tiff/TIFFTag;->isIFDPointer()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->hasDirectory()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getDirectory()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getData()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljavax/imageio/plugins/tiff/TIFFDirectory;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/imageio/plugins/tiff/TIFFDirectory;

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getDirectoryAsIFD(Ljavax/imageio/plugins/tiff/TIFFDirectory;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v9

    new-instance v10, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getType()I

    move-result v6

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v3

    int-to-long v7, v3

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IJLjavax/imageio/plugins/tiff/TIFFDirectory;)V

    move-object v3, v10

    goto :goto_2

    :cond_3
    move-object v3, v6

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private getFieldAsInt(I)I
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getFieldAsLong(I)J
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getTag(ILjava/util/List;)Ljavax/imageio/plugins/tiff/TIFFTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;)",
            "Ljavax/imageio/plugins/tiff/TIFFTag;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    .line 4
    invoke-virtual {v0, p0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTag(Ljava/lang/String;Ljava/util/List;)Ljavax/imageio/plugins/tiff/TIFFTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;)",
            "Ljavax/imageio/plugins/tiff/TIFFTag;"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    .line 8
    invoke-virtual {v0, p0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(Ljava/lang/String;)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static initializeEssentialTags()V
    .locals 3

    sget-object v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->essentialTags:Ljava/util/Set;

    if-nez v0, :cond_0

    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x8773

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0x203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0x15b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x11c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x13d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v1, 0x214

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v1, 0x115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v1, 0x153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/16 v1, 0x117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v1, 0x111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/16 v1, 0x124

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/16 v1, 0x125

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const/16 v1, 0x145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/16 v1, 0x143

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/16 v1, 0x144

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/16 v1, 0x142

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const/16 v1, 0x211

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/16 v1, 0x212

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Sets;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->essentialTags:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method private static readFieldValue(Ljavax/imageio/stream/ImageInputStream;II[Ljava/lang/Object;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const v3, 0xfa000

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto/16 :goto_23

    :pswitch_0
    const/16 v1, 0xc

    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    new-array v1, v2, [D

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_1e

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v5, v6

    :goto_1
    if-eqz v4, :cond_1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [D

    invoke-interface {p0, v8, v4, v7}, Ljavax/imageio/stream/ImageInputStream;->readFully([DII)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    sub-int/2addr v4, v7

    goto :goto_1

    :cond_1
    new-array v0, v5, [D

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    array-length v5, v4

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_2

    :pswitch_1
    const/16 v1, 0xb

    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    new-array v1, v2, [F

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_1e

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readFloat()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v5, v6

    :goto_4
    if-eqz v4, :cond_3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [F

    invoke-interface {p0, v8, v4, v7}, Ljavax/imageio/stream/ImageInputStream;->readFully([FII)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    sub-int/2addr v4, v7

    goto :goto_4

    :cond_3
    new-array v0, v5, [F

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    array-length v5, v4

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_5

    :pswitch_2
    const/16 v1, 0xa

    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    filled-new-array {v2, v4}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    move v3, v6

    :goto_6
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v7

    aput v7, v4, v6

    aget-object v4, v1, v3

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v7

    aput v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v7, v2

    move v8, v6

    :goto_7
    if-eqz v7, :cond_5

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int/lit8 v10, v9, 0x2

    new-array v11, v10, [I

    mul-int/lit8 v12, v7, 0x2

    invoke-interface {p0, v11, v12, v10}, Ljavax/imageio/stream/ImageInputStream;->readFully([III)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v9

    sub-int/2addr v7, v9

    goto :goto_7

    :cond_5
    filled-new-array {v8, v4}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move v8, v6

    :goto_9
    array-length v9, v7

    if-ge v8, v9, :cond_6

    add-int v9, v3, v8

    aget-object v9, v0, v9

    aget v10, v7, v8

    aput v10, v9, v6

    add-int/lit8 v10, v8, 0x1

    aget v10, v7, v10

    aput v10, v9, v5

    add-int/lit8 v8, v8, 0x2

    goto :goto_9

    :cond_6
    array-length v7, v7

    div-int/2addr v7, v4

    add-int/2addr v3, v7

    goto :goto_8

    :pswitch_3
    const/16 v1, 0x9

    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_7

    new-array v1, v2, [I

    move v3, v6

    :goto_a
    if-ge v3, v2, :cond_1e

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v5, v6

    :goto_b
    if-eqz v4, :cond_8

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [I

    invoke-interface {p0, v8, v4, v7}, Ljavax/imageio/stream/ImageInputStream;->readFully([III)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    sub-int/2addr v4, v7

    goto :goto_b

    :cond_8
    new-array v0, v5, [I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_c

    :pswitch_4
    const/16 v1, 0x8

    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_9

    new-array v1, v2, [S

    move v3, v6

    :goto_d
    if-ge v3, v2, :cond_1e

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readShort()S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v5, v6

    :goto_e
    if-eqz v4, :cond_a

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [S

    invoke-interface {p0, v8, v5, v7}, Ljavax/imageio/stream/ImageInputStream;->readFully([SII)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    sub-int/2addr v4, v7

    goto :goto_e

    :cond_a
    new-array v0, v5, [S

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [S

    array-length v5, v4

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_f

    :pswitch_5
    const/4 v1, 0x5

    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_b

    filled-new-array {v2, v4}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    move v3, v6

    :goto_10
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v7

    aput-wide v7, v4, v6

    aget-object v4, v1, v3

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v7

    aput-wide v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v7, v2

    move v8, v6

    :goto_11
    if-eqz v7, :cond_d

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int/lit8 v10, v9, 0x2

    new-array v11, v10, [J

    move v12, v6

    :goto_12
    if-ge v12, v10, :cond_c

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v13

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_c
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v9

    sub-int/2addr v7, v9

    goto :goto_11

    :cond_d
    filled-new-array {v8, v4}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    move v8, v6

    :goto_14
    array-length v9, v7

    if-ge v8, v9, :cond_e

    add-int v9, v3, v8

    aget-object v9, v0, v9

    aget-wide v10, v7, v8

    aput-wide v10, v9, v6

    add-int/lit8 v10, v8, 0x1

    aget-wide v10, v7, v10

    aput-wide v10, v9, v5

    add-int/lit8 v8, v8, 0x2

    goto :goto_14

    :cond_e
    array-length v7, v7

    div-int/2addr v7, v4

    add-int/2addr v3, v7

    goto :goto_13

    :pswitch_6
    const/4 v1, 0x4

    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_f

    new-array v1, v2, [J

    move v3, v6

    :goto_15
    if-ge v3, v2, :cond_1e

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v5, v6

    :goto_16
    if-eqz v4, :cond_11

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [J

    move v9, v6

    :goto_17
    if-ge v9, v7, :cond_10

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_10
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    sub-int/2addr v4, v7

    goto :goto_16

    :cond_11
    new-array v0, v5, [J

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    array-length v5, v4

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_18

    :pswitch_7
    const/4 v1, 0x3

    invoke-static {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v1

    div-int/2addr v3, v1

    if-ge v2, v3, :cond_12

    new-array v1, v2, [C

    move v3, v6

    :goto_19
    if-ge v3, v2, :cond_1e

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v5, v6

    :goto_1a
    if-eqz v4, :cond_14

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [C

    move v9, v6

    :goto_1b
    if-ge v9, v7, :cond_13

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v10

    int-to-char v10, v10

    aput-char v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_13
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    sub-int/2addr v4, v7

    goto :goto_1a

    :cond_14
    new-array v0, v5, [C

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    array-length v5, v4

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_1c

    :pswitch_8
    if-ne v1, v4, :cond_1b

    new-array v1, v2, [B

    invoke-interface {p0, v1, v6, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v6

    move v4, v3

    move v7, v4

    :goto_1d
    if-gt v3, v2, :cond_17

    if-ge v3, v2, :cond_15

    aget-byte v8, v1, v3

    if-eqz v8, :cond_15

    if-nez v4, :cond_16

    move v7, v3

    move v4, v5

    goto :goto_1e

    :cond_15
    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/String;

    sub-int v8, v3, v7

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    :cond_16
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_19

    new-array v2, v1, [Ljava/lang/String;

    move v3, v6

    :goto_1f
    if-ge v3, v1, :cond_18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_18
    move-object v0, v2

    goto :goto_20

    :cond_19
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move v1, v5

    :goto_20
    move v2, v1

    :cond_1a
    move-object v1, v0

    goto :goto_23

    :cond_1b
    if-ge v2, v3, :cond_1c

    new-array v1, v2, [B

    invoke-interface {p0, v1, v6, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    goto :goto_23

    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v5, v6

    :goto_21
    if-eqz v4, :cond_1d

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [B

    invoke-interface {p0, v8, v5, v7}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    sub-int/2addr v4, v7

    goto :goto_21

    :cond_1d
    new-array v0, v5, [B

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v6

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_22

    :cond_1e
    :goto_23
    aput-object v1, p3, v6

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static writeTIFFFieldToStream(Ljavax/imageio/plugins/tiff/TIFFField;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v0

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getType()I

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-interface {p1, v3}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    goto/16 :goto_5

    :pswitch_1
    check-cast v1, [D

    array-length p0, v1

    invoke-interface {p1, v1, v3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeDoubles([DII)V

    goto/16 :goto_5

    :pswitch_2
    check-cast v1, [F

    array-length p0, v1

    invoke-interface {p1, v1, v3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeFloats([FII)V

    goto/16 :goto_5

    :pswitch_3
    move p0, v3

    :goto_0
    if-ge p0, v0, :cond_1

    move-object v4, v1

    check-cast v4, [[I

    aget-object v5, v4, p0

    aget v5, v5, v3

    invoke-interface {p1, v5}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    aget-object v4, v4, p0

    aget v4, v4, v2

    invoke-interface {p1, v4}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :pswitch_4
    check-cast v1, [I

    array-length p0, v1

    invoke-interface {p1, v1, v3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeInts([III)V

    goto :goto_5

    :pswitch_5
    check-cast v1, [S

    array-length p0, v1

    invoke-interface {p1, v1, v3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeShorts([SII)V

    goto :goto_5

    :pswitch_6
    move p0, v3

    :goto_1
    if-ge p0, v0, :cond_1

    move-object v4, v1

    check-cast v4, [[J

    aget-object v4, v4, p0

    aget-wide v5, v4, v3

    aget-wide v7, v4, v2

    long-to-int v4, v5

    invoke-interface {p1, v4}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    long-to-int v4, v7

    invoke-interface {p1, v4}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :goto_2
    :pswitch_7
    if-ge v3, v0, :cond_1

    move-object p0, v1

    check-cast p0, [J

    aget-wide v4, p0, v3

    long-to-int p0, v4

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_8
    check-cast v1, [C

    array-length p0, v1

    invoke-interface {p1, v1, v3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeChars([CII)V

    goto :goto_5

    :pswitch_9
    move p0, v3

    :goto_3
    if-ge p0, v0, :cond_1

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v3

    :goto_4
    if-ge v5, v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-interface {p1, v6}, Ljavax/imageio/stream/ImageOutputStream;->writeByte(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_0
    invoke-interface {p1, v3}, Ljavax/imageio/stream/ImageOutputStream;->writeByte(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :pswitch_a
    check-cast v1, [B

    invoke-interface {p1, v1}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    :cond_1
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLastPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->lastPosition:J

    return-wide v0
.end method

.method public getShallowClone()Lcom/sun/imageio/plugins/tiff/TIFFIFD;
    .locals 10

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTagSetList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getParentTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;Ljavax/imageio/plugins/tiff/TIFFTag;)V

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTagNumbers()Ljava/util/SortedSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getTagNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    move-object v6, v4

    check-cast v6, [D

    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_1
    move-object v6, v4

    check-cast v6, [F

    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_2
    move-object v6, v4

    check-cast v6, [[I

    invoke-virtual {v6}, [[I->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_3
    move-object v6, v4

    check-cast v6, [I

    invoke-virtual {v6}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_4
    move-object v6, v4

    check-cast v6, [S

    invoke-virtual {v6}, [S->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_5
    move-object v6, v4

    check-cast v6, [[J

    invoke-virtual {v6}, [[J->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_6
    move-object v6, v4

    check-cast v6, [J

    invoke-virtual {v6}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_7
    move-object v6, v4

    check-cast v6, [C

    invoke-virtual {v6}, [C->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_8
    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v6}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :pswitch_9
    move-object v6, v4

    check-cast v6, [B

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    new-instance v6, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v3

    invoke-direct {v6, v7, v5, v3, v4}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    move-object v3, v6

    :cond_1
    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto/16 :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileOffsetsPosition:J

    iget-wide v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileByteCountsPosition:J

    iget-wide v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->lastPosition:J

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->setPositions(JJJ)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getStripOrTileByteCountsPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileByteCountsPosition:J

    return-wide v0
.end method

.method public getStripOrTileOffsetsPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileOffsetsPosition:J

    return-wide v0
.end method

.method public getTagSetList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTagSets()[Ljavax/imageio/plugins/tiff/TIFFTagSet;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public initialize(Ljavax/imageio/stream/ImageInputStream;ZZZ)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFFields()V

    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTagSetList()Ljava/util/List;

    move-result-object v10

    if-eqz p2, :cond_2

    if-nez v3, :cond_1

    if-nez v4, :cond_2

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->initializeEssentialTags()V

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v0

    move-object v12, v0

    move v13, v8

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-array v15, v8, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v11

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v11, :cond_15

    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v8

    move/from16 v23, v11

    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v11

    :try_start_0
    invoke-static {v11}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    invoke-static {v8, v10}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTag(ILjava/util/List;)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v18

    if-nez v18, :cond_3

    if-eqz v13, :cond_3

    move-object/from16 v24, v10

    sget-object v10, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->essentialTags:Ljava/util/Set;

    move/from16 v25, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v12, v8}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v18

    goto :goto_3

    :cond_3
    move/from16 v25, v7

    move-object/from16 v24, v10

    :cond_4
    :goto_3
    move-object/from16 v7, v18

    if-eqz v3, :cond_7

    if-eqz v13, :cond_5

    sget-object v10, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->essentialTags:Ljava/util/Set;

    move-object/from16 v26, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_5
    move-object/from16 v26, v12

    :cond_6
    :goto_4
    move-object/from16 v1, p1

    const/4 v2, 0x4

    goto :goto_6

    :cond_7
    move-object/from16 v26, v12

    :goto_5
    if-nez v7, :cond_8

    if-eqz v4, :cond_6

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7, v11}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_9
    const-wide/32 v18, 0x7fffffff

    cmp-long v10, v1, v18

    if-lez v10, :cond_a

    goto :goto_4

    :goto_6
    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    move/from16 v27, v13

    goto/16 :goto_a

    :cond_a
    move-wide/from16 v28, v1

    move-object/from16 v1, p1

    move v2, v13

    move-wide/from16 v12, v28

    long-to-int v10, v12

    if-nez v7, :cond_b

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFTag;

    move/from16 v27, v2

    const-string v2, "UnknownTag"

    const/16 v16, 0x1

    shl-int v3, v16, v11

    invoke-direct {v7, v2, v8, v3, v10}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;III)V

    goto :goto_7

    :cond_b
    move/from16 v27, v2

    invoke-virtual {v7}, Ljavax/imageio/plugins/tiff/TIFFTag;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    if-ne v10, v2, :cond_c

    goto :goto_7

    :cond_c
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljavax/imageio/plugins/tiff/TIFFTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v2, 0x2

    if-ne v11, v2, :cond_e

    invoke-static {v2}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v2

    mul-int v3, v10, v2

    int-to-long v3, v3

    const-wide/32 v20, 0xffff

    cmp-long v3, v3, v20

    if-lez v3, :cond_e

    int-to-long v2, v2

    div-long v2, v20, v2

    long-to-int v2, v2

    move v10, v2

    :cond_e
    :goto_7
    int-to-long v2, v0

    mul-long/2addr v2, v12

    cmp-long v0, v2, v18

    if-lez v0, :cond_f

    const/4 v4, 0x4

    invoke-interface {v1, v4}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_a

    :cond_f
    const/4 v4, 0x4

    long-to-int v2, v2

    if-gt v2, v4, :cond_13

    invoke-virtual {v7}, Ljavax/imageio/plugins/tiff/TIFFTag;->isIFDPointer()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    :try_start_1
    invoke-static {v1, v11, v10, v15}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->readFieldValue(Ljavax/imageio/stream/ImageInputStream;II[Ljava/lang/Object;)I

    move-result v10

    const/4 v3, 0x0

    aget-object v0, v15, v3
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    if-eqz v3, :cond_12

    const/4 v0, 0x0

    :goto_8
    const/4 v3, 0x4

    if-ge v2, v3, :cond_11

    rsub-int/lit8 v2, v2, 0x4

    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :cond_11
    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-direct {v2, v7, v11, v10, v0}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    throw v0

    :cond_13
    :goto_9
    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v21

    if-eqz v9, :cond_14

    int-to-long v2, v2

    add-long v2, v21, v2

    cmp-long v0, v2, v5

    if-lez v0, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move/from16 v19, v11

    move/from16 v20, v10

    invoke-direct/range {v17 .. v22}, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IIJ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catch_1
    move-object v1, v2

    move/from16 v25, v7

    move-object/from16 v24, v10

    move-object/from16 v26, v12

    move/from16 v27, v13

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_a
    add-int/lit8 v7, v25, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v2, v1

    move/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v12, v26

    move/from16 v13, v27

    const/4 v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_15
    move-object v1, v2

    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljavax/imageio/plugins/tiff/TIFFField;

    if-eqz v8, :cond_16

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFField;

    move-object/from16 v8, p0

    invoke-virtual {v8, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    move-object/from16 v17, v4

    const/4 v4, 0x0

    const/16 v16, 0x1

    goto/16 :goto_10

    :cond_16
    move-object/from16 v8, p0

    check-cast v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;

    iget-object v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->tag:Ljavax/imageio/plugins/tiff/TIFFTag;

    invoke-virtual {v11}, Ljavax/imageio/plugins/tiff/TIFFTag;->getNumber()I

    move-result v10

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->type:I

    iget v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->count:I

    iget-wide v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->offset:J

    invoke-interface {v1, v14, v15}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-virtual {v11}, Ljavax/imageio/plugins/tiff/TIFFTag;->isIFDPointer()Z

    move-result v14

    if-eqz v14, :cond_17

    new-instance v10, Ljava/util/ArrayList;

    const/4 v15, 0x1

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11}, Ljavax/imageio/plugins/tiff/TIFFTag;->getTagSet()Ljavax/imageio/plugins/tiff/TIFFTagSet;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-direct {v13, v10}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;)V

    move/from16 v14, p3

    move/from16 v10, p4

    const/4 v15, 0x0

    invoke-virtual {v13, v1, v15, v14, v10}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->initialize(Ljavax/imageio/stream/ImageInputStream;ZZZ)V

    new-instance v15, Ljavax/imageio/plugins/tiff/TIFFField;

    move-object/from16 v17, v13

    iget-wide v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->offset:J

    move-object v10, v15

    move-object/from16 v0, v17

    move-object/from16 v17, v4

    move-object v4, v15

    const/16 v16, 0x1

    move-object v15, v0

    invoke-direct/range {v10 .. v15}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IJLjavax/imageio/plugins/tiff/TIFFDirectory;)V

    invoke-virtual {v8, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    const/4 v4, 0x0

    goto :goto_10

    :cond_17
    move-object/from16 v17, v4

    const/16 v16, 0x1

    const/16 v0, 0x117

    if-eq v10, v0, :cond_1a

    const/16 v0, 0x145

    if-eq v10, v0, :cond_1a

    const/16 v0, 0x202

    if-ne v10, v0, :cond_18

    goto :goto_c

    :cond_18
    const/16 v0, 0x111

    if-eq v10, v0, :cond_19

    const/16 v0, 0x144

    if-eq v10, v0, :cond_19

    const/16 v0, 0x201

    if-ne v10, v0, :cond_1b

    :cond_19
    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileOffsetsPosition:J

    goto :goto_d

    :cond_1a
    :goto_c
    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileByteCountsPosition:J

    :cond_1b
    :goto_d
    :try_start_2
    invoke-static {v1, v12, v13, v7}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->readFieldValue(Ljavax/imageio/stream/ImageInputStream;II[Ljava/lang/Object;)I

    move-result v13
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v4, 0x0

    :try_start_3
    aget-object v0, v7, v4
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    const/4 v4, 0x0

    :goto_e
    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v10

    if-nez v10, :cond_1d

    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1c

    goto :goto_10

    :cond_1c
    new-instance v10, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-direct {v10, v11, v12, v13, v0}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v8, v10}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :goto_10
    move-object/from16 v4, v17

    goto/16 :goto_b

    :cond_1d
    throw v0

    :cond_1e
    move-object/from16 v8, p0

    if-eqz p2, :cond_1f

    if-eqz v9, :cond_1f

    invoke-direct {v8, v5, v6}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->checkFieldOffsets(J)V

    :cond_1f
    invoke-interface {v1, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-interface/range {p1 .. p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->lastPosition:J

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/plugins/tiff/TIFFField;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFFields()[Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setPositions(JJJ)V
    .locals 0

    iput-wide p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileOffsetsPosition:J

    iput-wide p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileByteCountsPosition:J

    iput-wide p5, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->lastPosition:J

    return-void
.end method

.method public writeToStream(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getNumTIFFFields()I

    move-result v0

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0xc

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v4

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getType()I

    move-result v5

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v6

    if-nez v5, :cond_0

    const/4 v5, 0x7

    :cond_0
    invoke-static {v5}, Ljavax/imageio/plugins/tiff/TIFFTag;->getSizeOfType(I)I

    move-result v7

    mul-int/2addr v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v5, v8, :cond_2

    move v7, v9

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_1

    invoke-virtual {v3, v8}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v6, v7

    :cond_2
    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getTagNumber()I

    move-result v8

    invoke-interface {p1, v8}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-interface {p1, v5}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-interface {p1, v6}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-interface {p1, v9}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    const/4 v5, -0x4

    invoke-interface {p1, v5}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    const/4 v5, 0x4

    if-gt v7, v5, :cond_4

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFTag;->isIFDPointer()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v4

    invoke-static {v3, p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->writeTIFFFieldToStream(Ljavax/imageio/plugins/tiff/TIFFField;Ljavax/imageio/stream/ImageOutputStream;)V

    goto :goto_4

    :cond_4
    :goto_2
    const-wide/16 v5, 0x3

    add-long/2addr v1, v5

    const-wide/16 v5, -0x4

    and-long/2addr v1, v5

    long-to-int v5, v1

    invoke-interface {p1, v5}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-interface {p1, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFTag;->isIFDPointer()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->hasDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getDirectory()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getDirectoryAsIFD(Ljavax/imageio/plugins/tiff/TIFFDirectory;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->writeToStream(Ljavax/imageio/stream/ImageOutputStream;)V

    iget-wide v3, v3, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->lastPosition:J

    goto :goto_3

    :cond_5
    invoke-static {v3, p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->writeTIFFFieldToStream(Ljavax/imageio/plugins/tiff/TIFFField;Ljavax/imageio/stream/ImageOutputStream;)V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v3

    :goto_3
    move-wide v11, v1

    move-wide v1, v3

    move-wide v4, v11

    :goto_4
    const/16 v3, 0x117

    if-eq v8, v3, :cond_8

    const/16 v3, 0x145

    if-eq v8, v3, :cond_8

    const/16 v3, 0x202

    if-ne v8, v3, :cond_6

    goto :goto_5

    :cond_6
    const/16 v3, 0x111

    if-eq v8, v3, :cond_7

    const/16 v3, 0x144

    if-eq v8, v3, :cond_7

    const/16 v3, 0x201

    if-ne v8, v3, :cond_9

    :cond_7
    iput-wide v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileOffsetsPosition:J

    goto :goto_6

    :cond_8
    :goto_5
    iput-wide v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->stripOrTileByteCountsPosition:J

    :cond_9
    :goto_6
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    goto/16 :goto_0

    :cond_a
    iput-wide v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->lastPosition:J

    return-void
.end method
