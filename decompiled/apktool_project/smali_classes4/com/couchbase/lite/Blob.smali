.class public final Lcom/couchbase/lite/Blob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/fleece/FLEncodable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/Blob$BlobInputStream;
    }
.end annotation


# static fields
.field private static final DOMAIN:Lcom/couchbase/lite/LogDomain;

.field public static final ENCODER_ARG_DB:Ljava/lang/String; = "BLOB.db"

.field public static final ENCODER_ARG_QUERY_PARAM:Ljava/lang/String; = "BLOB.queryParam"

.field private static final MAX_CACHED_CONTENT_LENGTH:I = 0x2000

.field static final META_PROP_TYPE:Ljava/lang/String; = "@type"

.field private static final MIME_UNKNOWN:Ljava/lang/String; = "application/octet-stream"

.field static final PROP_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field static final PROP_DATA:Ljava/lang/String; = "data"

.field static final PROP_DIGEST:Ljava/lang/String; = "digest"

.field static final PROP_LENGTH:Ljava/lang/String; = "length"

.field static final PROP_REVPOS:Ljava/lang/String; = "revpos"

.field static final PROP_STUB:Ljava/lang/String; = "stub"

.field static final TYPE_BLOB:Ljava/lang/String; = "blob"


# instance fields
.field private blobContent:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private blobContentStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private blobDigest:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private blobLength:J

.field private final contentType:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private database:Lcom/couchbase/lite/BaseDatabase;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/Blob;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/BaseDatabase;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/BaseDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/BaseDatabase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    const-string p1, "digest"

    .line 21
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    const-string p1, "length"

    .line 22
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Blob length unspecified for blob %s: using 0."

    invoke-static {p1, v1, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string p1, "content_type"

    .line 25
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 26
    sget-object p1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    const-string v1, "application/octet-stream"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Blob type unspecified for blob %s: using \'%s\'"

    invoke-static {p1, v2, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v1

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    const-string p1, "data"

    .line 28
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    instance-of p2, p1, [B

    if-eqz p2, :cond_2

    check-cast p1, [B

    iput-object p1, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    if-nez p0, :cond_3

    .line 31
    sget-object p0, Lcom/couchbase/lite/Blob;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string p1, "Blob read from database has neither digest nor data."

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "contentType"

    .line 9
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p2}, Lcom/couchbase/lite/Blob;->initStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "contentType"

    .line 13
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fileUrl"

    .line 14
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iput-object p1, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Blob;->initStream(Ljava/io/InputStream;)V

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NotFileBasedURL"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/logging/Log;->formatStandardMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "contentType"

    .line 2
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "content"

    .line 3
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    .line 5
    array-length p1, p2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    .line 6
    invoke-direct {p0, p2}, Lcom/couchbase/lite/Blob;->copyBytes([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    return-void
.end method

.method private copyBytes([B)[B
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p0, p1

    new-array v0, p0, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getBlobKey(Lcom/couchbase/lite/internal/core/C4BlobStore;)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/core/C4BlobStore;->create([B)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Blob;->writeDatabaseFromInitStream(Lcom/couchbase/lite/internal/core/C4BlobStore;)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "BlobContentNull"

    invoke-static {p1}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getContentFromDatabase()[B
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    const-string v1, "database"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->getBlobStore()Lcom/couchbase/lite/internal/core/C4BlobStore;

    move-result-object v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    invoke-static {v1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->create(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/couchbase/lite/internal/core/C4BlobStore;->getContents(Lcom/couchbase/lite/internal/core/C4BlobKey;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getContent()[B

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_0
    :try_start_6
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobStore;->close()V
    :try_end_6
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v3, :cond_1

    array-length v0, v3

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_1

    iput-object v3, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    :cond_1
    return-object v3

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_b
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobStore;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
    :try_end_c
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read content from database for digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/couchbase/lite/Blob;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {v1, p0, v0}, Lcom/couchbase/lite/internal/logging/Log;->e(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/couchbase/lite/CouchbaseLiteError;

    invoke-direct {v1, p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private getStreamFromDatabase(Lcom/couchbase/lite/BaseDatabase;)Ljava/io/InputStream;
    .locals 1
    .param p1    # Lcom/couchbase/lite/BaseDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/couchbase/lite/Blob$BlobInputStream;

    iget-object p0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4BlobKey;->create(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object p0

    invoke-virtual {p1}, Lcom/couchbase/lite/BaseDatabase;->getBlobStore()Lcom/couchbase/lite/internal/core/C4BlobStore;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/Blob$BlobInputStream;-><init>(Lcom/couchbase/lite/internal/core/C4BlobKey;Lcom/couchbase/lite/internal/core/C4BlobStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Failed opening blobContent stream."

    invoke-direct {p1, v0, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private initStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "input stream"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    iput-object p1, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    return-void
.end method

.method private installInDatabase(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/couchbase/lite/Database;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "No database for Blob save"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    :goto_0
    check-cast p1, Lcom/couchbase/lite/Database;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Blob;->installInDatabase(Lcom/couchbase/lite/Database;)V

    return-void
.end method

.method public static isBlob(Ljava/util/Map;)Z
    .locals 4
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const-string v1, "digest"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "@type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "blob"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v1, "content_type"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    const-string v2, "length"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_4

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-ne v1, p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    :goto_1
    return v0
.end method

.method private readContentFromInitStream()V
    .locals 6
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "DE_MIGHT_IGNORE"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    const-string v3, "content stream"

    invoke-static {v2, v3}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0x2000

    :try_start_1
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v1, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v2, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v3, "Failed reading blob content stream"

    invoke-direct {v2, v3, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    iput-object v1, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    throw v0
.end method

.method private writeDatabaseFromInitStream(Lcom/couchbase/lite/internal/core/C4BlobStore;)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 7
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "DE_MIGHT_IGNORE"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobStore;->openWriteStream()Lcom/couchbase/lite/internal/core/C4BlobWriteStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x2000

    :try_start_1
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1, v2, v4}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->write([BI)V

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->install()V

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->computeBlobKey()Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p1, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    iput-object v0, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    int-to-long v5, v3

    iput-wide v5, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    iget-object p1, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    if-eqz p1, :cond_1

    array-length p1, p1

    if-gt p1, v1, :cond_1

    iput-object v2, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    :cond_1
    return-object v4

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_6
    iget-object v1, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    iput-object v0, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    throw p1

    :cond_3
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Blob stream is null"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public digest()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    return-object p0
.end method

.method public encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "BLOB.queryParam"

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getArg(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "BLOB.db"

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getArg(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/couchbase/lite/Blob;->installInDatabase(Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v1, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginDict(J)Z

    const-string v1, "@type"

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    const-string v1, "blob"

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    const-string v1, "length"

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    iget-wide v1, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    const-string v1, "content_type"

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "digest"

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/couchbase/lite/Blob;->getContent()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endDict()Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/couchbase/lite/Blob;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/couchbase/lite/Blob;

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/couchbase/lite/Blob;->getContent()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/couchbase/lite/Blob;->getContent()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContent()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/couchbase/lite/Blob;->readContentFromInitStream()V

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Blob;->copyBytes([B)[B

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/couchbase/lite/Blob;->getContentFromDatabase()[B

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-nez p0, :cond_3

    sget-object p0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v0, "Blob has no digest"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobContentStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/couchbase/lite/Blob;->blobContent:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Blob;->getStreamFromDatabase(Lcom/couchbase/lite/BaseDatabase;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-nez p0, :cond_3

    sget-object p0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v0, "Blob has no digest"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "digest"

    iget-object v2, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_type"

    iget-object p0, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/Blob;->getContent()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public installInDatabase(Lcom/couchbase/lite/Database;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "BlobDifferentDatabase"

    invoke-static {p1}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Blob has no digest"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    iput-object p1, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    .line 6
    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-eqz v0, :cond_4

    return-void

    .line 7
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/BaseDatabase;->getBlobStore()Lcom/couchbase/lite/internal/core/C4BlobStore;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Blob;->getBlobKey(Lcom/couchbase/lite/internal/core/C4BlobStore;)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8
    :try_start_2
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobKey;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobKey;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_5

    :try_start_4
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobStore;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    .line 10
    :try_start_5
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobKey;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_7

    :try_start_7
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4BlobStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    .line 12
    iput-object v0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    .line 13
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Failed reading blob content from database"

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    return-wide v0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "@type"

    const-string v2, "blob"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "digest"

    iget-object v2, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/couchbase/lite/Blob;->blobLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_type"

    iget-object p0, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {v0}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "Could not parse Blob JSON"

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "A Blob may be encoded as JSON only after it has been saved in a database"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/Blob;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Blob;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSize()J
    .locals 8

    iget-object v0, p0, Lcom/couchbase/lite/Blob;->database:Lcom/couchbase/lite/BaseDatabase;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->getBlobStore()Lcom/couchbase/lite/internal/core/C4BlobStore;

    move-result-object v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/couchbase/lite/Blob;->blobDigest:Ljava/lang/String;

    invoke-static {v3}, Lcom/couchbase/lite/internal/core/C4BlobKey;->create(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0, v3}, Lcom/couchbase/lite/internal/core/C4BlobStore;->getSize(Lcom/couchbase/lite/internal/core/C4BlobKey;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    iput-wide v4, p0, Lcom/couchbase/lite/Blob;->blobLength:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Lcom/couchbase/lite/internal/core/C4BlobKey;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobStore;->close()V
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_0

    return-wide v4

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Lcom/couchbase/lite/internal/core/C4BlobKey;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobStore;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_8
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-wide v1
.end method
