.class public Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/StscImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;,
        Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final emptyNamespaceSchemas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;",
            ">;"
        }
    .end annotation
.end field

.field private final failedDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scanNeeded:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;",
            ">;"
        }
    .end annotation
.end field

.field private final scannedAlready:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;",
            "Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaByDigestKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaByNsLocPair:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByDigestKey:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scanNeeded:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scannedAlready:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->failedDownloads:Ljava/util/Set;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->access$000(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addSuccessfulDownload(Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addFailedDownload(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->failedDownloads:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scannedAlready:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scannedAlready:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scanNeeded:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scannedAlready:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    return-object p0
.end method

.method private addSuccessfulDownload(Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V
    .locals 4

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getMessageDigest()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSchemaDigest([B)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;

    invoke-direct {v2, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;-><init>([B)V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByDigestKey:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByDigestKey:Ljava/util/Map;

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;

    invoke-direct {v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;-><init>([B)V

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSchemaDigest([B)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;->getLocationURL()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private static copy(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 3
    invoke-virtual {v2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method

.method private static copy(Ljava/io/Reader;)Ljava/io/CharArrayReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [C

    .line 8
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_0
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, v1, v3, v0}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-lez v4, :cond_0

    .line 10
    invoke-virtual {v2, v1, v3, v4}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/io/CharArrayReader;

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/CharArrayReader;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    :try_start_2
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method

.method private static copySchemaSource(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/xmlbeans/impl/schema/StscState;)Ljava/io/InputStream;
    .locals 2

    .line 16
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sourceNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 20
    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 21
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 22
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copy(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object p0

    .line 23
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->copyCompletely(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 26
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 27
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 28
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 29
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IO Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p1
.end method

.method private static copySchemaSource(Ljava/lang/String;Ljava/io/Reader;Lorg/apache/xmlbeans/impl/schema/StscState;)Ljava/io/Reader;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sourceNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 5
    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 7
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copy(Ljava/io/Reader;)Ljava/io/CharArrayReader;

    move-result-object p0

    .line 8
    new-instance v1, Lorg/apache/xmlbeans/impl/common/XmlEncodingSniffer;

    invoke-direct {v1, p0, p2}, Lorg/apache/xmlbeans/impl/common/XmlEncodingSniffer;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 9
    new-instance p2, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/common/XmlEncodingSniffer;->getXmlEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/common/IOUtil;->copyCompletely(Ljava/io/Reader;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    .line 12
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    :try_start_4
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 15
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IO Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p1
.end method

.method private static copySchemaSource(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscState;Z)V
    .locals 3

    .line 30
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sourceNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getSchemasDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_0
    const/4 p1, 0x0

    .line 34
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 36
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 38
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_0
    if-eqz p1, :cond_1

    .line 40
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 41
    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/common/IOUtil;->copyCompletely(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz p1, :cond_4

    .line 42
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 43
    :cond_2
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 44
    :try_start_5
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IO Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_4

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_3

    .line 45
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 46
    :catch_2
    :cond_3
    throw p0

    :catch_3
    :cond_4
    :goto_3
    return-void
.end method

.method public static downloadDocument(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    :try_start_0
    invoke-interface {v1, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    invoke-virtual {v0, p2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p2, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Ljava/io/Reader;Lorg/apache/xmlbeans/impl/schema/StscState;)Ljava/io/Reader;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentSourceName(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {p0, p1, v3, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {p2, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/xmlbeans/impl/schema/StscState;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentSourceName(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/XmlOptions;->setCharacterEncoding(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    :cond_1
    invoke-interface {p0, p1, v3, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p2, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscState;Z)V

    new-instance p1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentSourceName(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2, v3, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntityResolver unable to resolve "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (for namespace "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    invoke-virtual {v0, p2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscState;Z)V

    new-instance p1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, v3, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method private downloadSchema(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->access$000(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->access$100(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    const/16 v3, 0x38

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v2, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    invoke-virtual {v1, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->isFileProcessed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-direct {v4, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    if-eqz p2, :cond_5

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->shouldDownloadURI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-direct {v4, p2, v0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->linkerDefinesNamespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByNsLocPair:Ljava/util/Map;

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-direct {v4, v0, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->previouslyFailedToDownload(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {v1, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->shouldDownloadURI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load resource \""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (network downloads disabled)."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addFailedDownload(Ljava/lang/String;)V

    return-object v0

    :cond_8
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getS4SLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadDocument(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->findMatchByDigest(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v2

    invoke-virtual {v1, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->relativize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->relativize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is the same as "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (ignoring the duplicate file)"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is the same as another schema"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getErrorListener()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    instance-of v5, p2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    if-eqz v5, :cond_c

    invoke-interface {p2, v2}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    check-cast p2, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading referenced file "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->info(Ljava/lang/String;)V

    :goto_1
    new-instance p2, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addSuccessfulDownload(Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$NsLocPair;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    return-object v2

    :cond_c
    :goto_2
    const-string p2, "Referenced document is not a valid schema"

    invoke-virtual {v1, p2, v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem parsing referenced XML resource - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_3

    :catch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL \""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not well-formed"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :goto_3
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addFailedDownload(Ljava/lang/String;)V

    return-object v0

    :catch_3
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find resource - invalid location URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    return-object v0
.end method

.method private static emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private fetchRemainingEmptyNamespaceSchemas()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method private findMatchByDigest(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getMessageDigest()[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->schemaByDigestKey:Ljava/util/Map;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable$DigestKey;-><init>([B)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    return-object p0
.end method

.method private hasNextToScan()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scanNeeded:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private nextToScan()Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->scanNeeded:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    return-object p0
.end method

.method private static nullableStringsMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private previouslyFailedToDownload(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->failedDownloads:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private usedEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyNamespaceSchemas:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public resolveImportsAndIncludes(Z)[Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->hasNextToScan()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->nextToScan()Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSourceName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/apache/xmlbeans/impl/schema/StscState;->addSourceUri(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v8, p1

    invoke-static {v6, v1, v8}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->copySchemaSource(Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/StscState;Z)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getImportArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x4

    const-string v12, "\""

    if-ge v10, v9, :cond_2

    aget-object v13, v6, v10

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;->getNamespace()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;->getSchemaLocation()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v13, v14, v15}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadSchema(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v14

    if-nez v14, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->nullableStringsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Imported schema has a target namespace \""

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" that does not match the specified \""

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ImportDocument$Import;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v11, v13}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_2

    :cond_1
    new-instance v3, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    const/4 v7, 0x0

    invoke-direct {v3, v14, v7}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getIncludeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;

    move-result-object v3

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    array-length v7, v3

    const/4 v9, 0x0

    :goto_3
    const-string v10, "\" that does not match the source namespace \""

    if-ge v9, v7, :cond_7

    aget-object v13, v3, v9

    invoke-interface {v13}, Lorg/apache/xmlbeans/impl/xb/xsdschema/IncludeDocument$Include;->getSchemaLocation()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v0, v13, v15, v14}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadSchema(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v14

    if-nez v14, :cond_4

    :goto_4
    move-object/from16 v17, v1

    goto :goto_5

    :cond_4
    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v10, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v10, v14, v15}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v10

    invoke-static {v5, v10}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$200(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)V

    goto :goto_4

    :cond_5
    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    const-string v1, "Included schema has a target namespace \""

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x4

    invoke-virtual {v11, v1, v10, v13}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_5

    :cond_6
    move-object/from16 v17, v1

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v1, v14, v6}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v1

    invoke-static {v5, v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$200(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)V

    invoke-direct {v0, v14}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->usedEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v17

    const/4 v11, 0x4

    goto :goto_3

    :cond_7
    move-object/from16 v17, v1

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getRedefineArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;

    move-result-object v1

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_8
    array-length v6, v1

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_e

    aget-object v9, v1, v7

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;->getSchemaLocation()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-direct {v0, v9, v13, v11}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadSchema(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v11

    if-nez v11, :cond_9

    goto :goto_7

    :cond_9
    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->emptyStringIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_a

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v4, v11, v13}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v4

    invoke-static {v5, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$300(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V

    move v4, v15

    :goto_7
    const/4 v13, 0x4

    goto :goto_8

    :cond_a
    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Redefined schema has a target namespace \""

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getTargetNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    invoke-virtual {v14, v11, v13, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_8

    :cond_b
    const/4 v13, 0x4

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-direct {v4, v11, v3}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;-><init>(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->addScanNeeded(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object v4

    invoke-static {v5, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$300(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;Lorg/apache/xmlbeans/impl/xb/xsdschema/RedefineDocument$Redefine;)V

    invoke-direct {v0, v11}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->usedEmptyNamespaceSchema(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    move v4, v15

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    move/from16 v8, p1

    move-object/from16 v17, v1

    invoke-direct/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->fetchRemainingEmptyNamespaceSchemas()Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;->access$400(Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)V

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    new-array v0, v1, [Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    return-object v0

    :cond_e
    move-object/from16 v1, v17

    goto/16 :goto_0
.end method
