.class public final Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J \u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0012H\u0002J.\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00122\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J(\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J(\u0010\u001c\u001a\u00020\u000e2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eH\u0002J(\u0010 \u001a\u00020\u00042\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eH\u0002\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;",
        "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;",
        "()V",
        "loadLargeShapePoint",
        "",
        "channel",
        "Ljava/nio/channels/FileChannel;",
        "shapeRepo",
        "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
        "loadNormalShapePoint",
        "parse",
        "document",
        "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;",
        "start",
        "",
        "count",
        "parseShapePoint",
        "shapeRepoList",
        "",
        "parseShapeRepo",
        "readPartTinyPoints",
        "Lcom/onyx/android/sdk/base/data/TinyPoint;",
        "length",
        "step",
        "readTinyPoint",
        "din",
        "Ljava/io/DataInputStream;",
        "save",
        "saveShapePoint",
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "offset",
        "saveShapeRepo",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final loadLargeShapePoint(Ljava/nio/channels/FileChannel;Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getOffset()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readShort(Ljava/nio/channels/FileChannel;)S

    move-result v1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setAttrA(S)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readShort(Ljava/nio/channels/FileChannel;)S

    move-result v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setAttrB(S)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    div-int/lit8 v1, v0, 0x10

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentUtils;->getPointCountBreakValue(I)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    sub-int v6, v0, v5

    const/high16 v7, 0x5000000

    invoke-static {v7, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v6

    invoke-direct {p0, p1, v6, v2}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->readPartTinyPoints(Ljava/nio/channels/FileChannel;II)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v5, v7

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setTinyPointList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    const/4 p0, 0x1

    if-le v2, p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "large touch point count:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", render count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final loadNormalShapePoint(Ljava/nio/channels/FileChannel;Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getOffset()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setAttrA(S)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setAttrB(S)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->readTinyPoint(Ljava/io/DataInputStream;)Lcom/onyx/android/sdk/base/data/TinyPoint;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setTinyPointList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    return-void
.end method

.method private final parseShapePoint(Ljava/nio/channels/FileChannel;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x10

    const/16 v2, 0x4e20

    if-le v1, v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->loadLargeShapePoint(Ljava/nio/channels/FileChannel;Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->loadNormalShapePoint(Ljava/nio/channels/FileChannel;Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final parseShapeRepo(Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;Ljava/nio/channels/FileChannel;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;",
            "Ljava/nio/channels/FileChannel;",
            "II)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p4, p3

    :goto_0
    if-ge p3, p4, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getXref()I

    move-result v0

    mul-int/lit8 v1, p3, 0x2c

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "array(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "UTF_8"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;-><init>()V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setShapeUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setOffset(I)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setLength(I)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final readPartTinyPoints(Ljava/nio/channels/FileChannel;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "II)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TinyPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    div-int/lit8 v1, p2, 0x10

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_1

    const/4 v2, 0x1

    if-le p3, v2, :cond_0

    if-lez p1, :cond_0

    const/16 v2, 0x10

    int-to-long v2, v2

    int-to-long v4, p3

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    mul-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->readTinyPoint(Ljava/io/DataInputStream;)Lcom/onyx/android/sdk/base/data/TinyPoint;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final readTinyPoint(Ljava/io/DataInputStream;)Lcom/onyx/android/sdk/base/data/TinyPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-instance p0, Lcom/onyx/android/sdk/base/data/TinyPoint;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/base/data/TinyPoint;-><init>(FFSSI)V

    return-object p0
.end method

.method private final saveShapePoint(Ljava/util/List;Ljava/nio/ByteBuffer;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "I)I"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setOffset(I)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getTinyPointList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setLength(I)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getAttrA()S

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getAttrB()S

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getTinyPointList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TinyPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TinyPoint;->getX()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TinyPoint;->getY()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TinyPoint;->getSize()S

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TinyPoint;->getPressure()S

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TinyPoint;->getTime()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    add-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return p3
.end method

.method private final saveShapeRepo(Ljava/util/List;Ljava/nio/ByteBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "I)V"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getLength()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public parse(Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->parse(Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;II)V

    return-void
.end method

.method public parse(Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;II)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getDocumentSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getXref()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const/4 v3, 0x4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const/16 v3, 0x2c

    int-to-long v3, v3

    .line 4
    rem-long v5, v1, v3

    long-to-int v5, v5

    if-nez v5, :cond_0

    .line 5
    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p3

    .line 9
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->parseShapeRepo(Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;Ljava/nio/channels/FileChannel;II)Ljava/util/List;

    move-result-object p2

    .line 10
    invoke-direct {p0, v2, p2}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->parseShapePoint(Ljava/nio/channels/FileChannel;Ljava/util/List;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->setShapeRepoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    .line 12
    :try_start_2
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "error file data"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 16
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public save(Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getShapeRepoList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2c

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getTinyPointList()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    add-int/2addr v6, v3

    const/16 v3, 0x4c

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->addHeaderToBuf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v4, v3}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->saveShapePoint(Ljava/util/List;Ljava/nio/ByteBuffer;I)I

    move-result v3

    invoke-direct {p0, v2, v4, v3}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;->saveShapeRepo(Ljava/util/List;Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_1
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->force(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long p0, v1, v3

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;

    if-lez p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save point document use long time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long p0, v2, v6

    if-gtz p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save point document, file size is zero. filePath = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
