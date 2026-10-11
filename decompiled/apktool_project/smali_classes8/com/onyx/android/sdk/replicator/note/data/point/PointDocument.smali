.class public final Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointDocument.kt\ncom/onyx/android/sdk/replicator/note/data/point/PointDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1#2:160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0003J\u0008\u0010\u0018\u001a\u00020\u0007H\u0002J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0003J\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rJ\u0006\u0010\u001c\u001a\u00020\u0011J\u0006\u0010\u001d\u001a\u00020\u0000J\u0016\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0008\u0010$\u001a\u00020!H\u0002J\u0010\u0010%\u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0006\u0010&\u001a\u00020\'J\u0010\u0010(\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003J\u0010\u0010)\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003J\u0016\u0010*\u001a\u00020\u00002\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rJ\u0012\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0003H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;",
        "",
        "path",
        "",
        "(Ljava/lang/String;)V",
        "filePath",
        "loader",
        "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;",
        "magic",
        "",
        "pageUniqueId",
        "revisionId",
        "shapeRepoList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
        "version",
        "xref",
        "",
        "addHeaderToBuf",
        "Ljava/nio/ByteBuffer;",
        "byteBuffer",
        "getDocumentSize",
        "",
        "getFilePath",
        "getLoader",
        "getPageUniqueId",
        "getRevisionId",
        "getShapeRepoList",
        "getXref",
        "parse",
        "start",
        "count",
        "parseHeader",
        "",
        "fin",
        "Ljava/io/FileInputStream;",
        "parseMetadata",
        "parseXref",
        "save",
        "",
        "setPageUniqueId",
        "setRevisionId",
        "setShapeRepoList",
        "uuidByte",
        "",
        "uuid",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPointDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointDocument.kt\ncom/onyx/android/sdk/replicator/note/data/point/PointDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1#2:160\n*E\n"
    }
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loader:Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private magic:S

.field private pageUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapeRepoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private version:S

.field private xref:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->filePath:Ljava/lang/String;

    const/4 p1, 0x1

    iput-short p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->version:S

    return-void
.end method

.method private final getLoader()Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;
    .locals 2

    iget-short v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->version:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->loader:Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->loader:Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->version:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final parseHeader(Ljava/io/FileInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4c

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->magic:S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->version:S

    const/16 p1, 0x24

    new-array v1, p1, [B

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/DataInputStream;->read([BII)I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "UTF_8"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->pageUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/DataInputStream;->read([BII)I

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->revisionId:Ljava/lang/String;

    return-void
.end method

.method private final parseMetadata()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->parseHeader(Ljava/io/FileInputStream;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->parseXref(Ljava/io/FileInputStream;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final parseXref(Ljava/io/FileInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getDocumentSize()J

    move-result-wide v0

    const/4 v2, 0x4

    int-to-long v3, v2

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->xref:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final uuidByte(Ljava/lang/String;)[B
    .locals 3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x24

    const-string v0, "this as java.lang.String).getBytes(charset)"

    if-gtz p0, :cond_0

    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addHeaderToBuf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "byteBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-short v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->magic:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->version:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->pageUniqueId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->uuidByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->revisionId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->uuidByte(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final getDocumentSize()J
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->pageUniqueId:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->revisionId:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getShapeRepoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->shapeRepoList:Ljava/util/List;

    return-object p0
.end method

.method public final getXref()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->xref:I

    return p0
.end method

.method public final parse()Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->parse(II)Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;

    move-result-object p0

    return-object p0
.end method

.method public final parse(II)Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getDocumentSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error document size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getDocumentSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->parseMetadata()V

    .line 5
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getLoader()Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;->parse(Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;II)V

    return-object p0
.end method

.method public final save()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->shapeRepoList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->getLoader()Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;->save(Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;)V

    return v2
.end method

.method public final setPageUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->pageUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final setShapeRepoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;->shapeRepoList:Ljava/util/List;

    return-object p0
.end method
