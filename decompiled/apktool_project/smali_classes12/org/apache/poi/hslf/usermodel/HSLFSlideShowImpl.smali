.class public final Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;
.super Lorg/apache/poi/POIDocument;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;,
        Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xbebc200

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final MAX_DOCUMENT_SIZE:I = 0x5f5e100

.field private static MAX_RECORD_LENGTH:I = 0x0

.field static final UNSET_OFFSET:I = -0x1


# instance fields
.field private _docstream:[B

.field private _objects:[Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

.field private _pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private _records:[Lorg/apache/poi/hslf/record/Record;

.field private currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    const v0, 0xbebc200

    sput v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->handleDualStorage(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 5
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->readCurrentUserStream()V

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->readPowerPointStream()V

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->buildRecords()V

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->readOtherStreams()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    .line 10
    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public static synthetic I(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->lambda$write$1(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private buildRecords()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_docstream:[B

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/CurrentUserAtom;->getCurrentEditOffset()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->read([BI)[Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    return-void
.end method

.method public static create()Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;
    .locals 3

    :try_start_0
    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    const-string v1, "/org/apache/poi/hslf/data/empty.ppt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;

    invoke-direct {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance v1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string v2, "Missing resource \'empty.ppt\'"

    invoke-direct {v1, v2}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {v1, v0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encryptOnePicture(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->encryptPicture([BI)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getBlipStore()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 7

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v3

    sget-object v5, Lorg/apache/poi/hslf/record/RecordTypes;->Document:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v5, v5, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    instance-of p0, v2, Lorg/apache/poi/hslf/record/Document;

    if-eqz p0, :cond_0

    check-cast v2, Lorg/apache/poi/hslf/record/Document;

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not have a Document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not have a valid record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/Document;->getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/Document;->getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawingGroup;->getDggContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->BSTORE_CONTAINER:S

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-nez v1, :cond_4

    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    sget-short v0, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildBefore(Lorg/apache/poi/ddf/EscherRecord;I)V

    :cond_4
    return-object v1

    :cond_5
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    const-string v0, "Drawing group is missing"

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    const-string v0, "Document record is missing"

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method private static handleDualStorage(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PP97_DUALSTORAGE"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object p0
.end method

.method private initRecordOffsets([BILjava/util/NavigableMap;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :cond_0
    :goto_0
    if-eqz p2, :cond_7

    invoke-static {p1, p2}, Lorg/apache/poi/hslf/record/Record;->buildRecordAtOffset([BI)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;

    if-eqz v0, :cond_6

    check-cast p0, Lorg/apache/poi/hslf/record/UserEditAtom;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/UserEditAtom;->getPersistPointersOffset()I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/poi/hslf/record/Record;->buildRecordAtOffset([BI)Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->getSlideLocationsLookup()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/UserEditAtom;->getLastUserEditAtomOffset()I

    move-result p2

    if-lez p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, -0x24

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    if-nez v0, :cond_3

    const/16 v0, 0xff5

    if-ne v1, v0, :cond_3

    const/16 v0, 0x1c

    if-eq v2, v0, :cond_2

    const/16 v0, 0x20

    if-ne v2, v0, :cond_3

    :cond_2
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Repairing invalid user edit atom"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/record/UserEditAtom;->setLastUserEditAtomOffset(I)V

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    const-string p1, "Powerpoint document contains invalid user edit atom"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Record is not a PersistPtrHolder: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " at "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Powerpoint document is missing a PersistPtrHolder at "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p1, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Did not have a user edit atom: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method

.method public static synthetic j(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->lambda$matchPicturesAndRecords$0(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$matchPicturesAndRecords$0(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$write$1(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->encryptOnePicture(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static matchPicturesAndRecords(Ljava/util/List;Lorg/apache/poi/ddf/EscherContainerRecord;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;",
            ">;",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lorg/apache/poi/hslf/usermodel/c;

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/c;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v3, v2, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherBSERecord;->getOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/u7h;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/u7h;-><init>()V

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not have a EscherBSERecord: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->getOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v5, :cond_4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->setRecord(Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherBSERecord;->getUid()[B

    move-result-object v6

    iget-object v8, v2, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->imageData:[B

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->setRecord(Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "No records with offset {}"

    invoke-static {v6}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/dyo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/dyo;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    move v6, v4

    :goto_5
    if-ltz v2, :cond_a

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v7}, Lorg/apache/poi/ddf/EscherBSERecord;->getUid()[B

    move-result-object v8

    iget-object v9, v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->imageData:[B

    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->setRecord(Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->getOffset()I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/apache/poi/ddf/EscherBSERecord;->setOffset(I)V

    move v6, v5

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_a
    if-nez v6, :cond_8

    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->access$000(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;)I

    move-result v6

    invoke-static {v6}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "No record found for picture at offset {}"

    invoke-interface {v2, v7, v6}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->access$100(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v2

    iget-object v6, v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->imageData:[B

    invoke-static {v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->access$000(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;)I

    move-result v7

    invoke-static {p1, v2, v6, v7}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addNewEscherBseRecord(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;[BI)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->setRecord(Lorg/apache/poi/ddf/EscherBSERecord;)Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    goto :goto_4

    :cond_b
    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "Found {} unmatched records."

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private read([BI)[Lorg/apache/poi/hslf/record/Record;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->initRecordOffsets([BILjava/util/NavigableMap;Ljava/util/Map;)V

    new-instance p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;-><init>([BLjava/util/NavigableMap;)V

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hslf/record/Record;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, p1, v4, v6}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptRecord([BII)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v3}, Lorg/apache/poi/hslf/record/Record;->buildRecordAtOffset([BI)Lorg/apache/poi/hslf/record/Record;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v2, v4, Lorg/apache/poi/hslf/record/PersistRecord;

    if-eqz v2, :cond_0

    check-cast v4, Lorg/apache/poi/hslf/record/PersistRecord;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v4, v2}, Lorg/apache/poi/hslf/record/PersistRecord;->setPersistId(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->close()V

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/apache/poi/hslf/record/Record;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/Record;

    return-object p0
.end method

.method private readCurrentUserStream()V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/poi/hslf/record/CurrentUserAtom;

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hslf/record/CurrentUserAtom;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Error finding Current User Atom"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/hslf/record/CurrentUserAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/CurrentUserAtom;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;

    :goto_0
    return-void
.end method

.method private readOtherStreams()V
    .locals 0

    return-void
.end method

.method private readPictures()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    const-string v1, "Pictures"

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getBlipStore()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v1

    :try_start_0
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v0

    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getDocumentEncryptionAtom()Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;-><init>(Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;)V

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    :try_start_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x8

    if-gt v5, v1, :cond_6

    invoke-virtual {v9, v0, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->decryptPicture([BI)V

    invoke-static {v0, v5}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v6

    add-int/lit8 v1, v5, 0x2

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v10

    add-int/lit8 v11, v1, 0x4

    const v1, 0xf007

    const v3, 0xf018

    if-eq v2, v1, :cond_2

    if-lt v2, v3, :cond_6

    const v1, 0xf117

    if-le v2, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v10, :cond_5

    sub-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->forNativeID(I)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Problem reading picture: Invalid image type 0, on picture with length {}.\nYour document will probably become corrupted if you save it! Position: {}"

    invoke-static {v10}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    add-int v1, v11, v10

    array-length v2, v0

    if-le v1, v2, :cond_4

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "\"Pictures\" stream may have ended early. In some circumstances, this is not a problem; in others, this could indicate a corrupt file"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget v1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v11, v10, v1}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object v4

    new-instance v12, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    move-object v1, v12

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;[BII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int v5, v11, v10

    goto :goto_0

    :cond_5
    new-instance p0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The file contains a picture, at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", which has a negatively sized data length, so we can\'t trust any of the picture data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_2
    invoke-virtual {v9}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->close()V

    invoke-static {v8, v7}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->matchPicturesAndRecords(Ljava/util/List;Lorg/apache/poi/ddf/EscherContainerRecord;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->build()Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setIndex(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "Problem reading picture. Your document will probably become corrupted if you save it!"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v9}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    :catchall_3
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw v0
.end method

.method private readPowerPointStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    const-string v1, "PowerPoint Document"

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PP40"

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/OldPowerPointFormatException;

    const-string v0, "You seem to have supplied a PowerPoint95 file, which isn\'t supported"

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/OldPowerPointFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    const v1, 0x5f5e100

    :try_start_0
    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_docstream:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method private write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Pictures"

    const-string v1, "PowerPoint Document"

    .line 18
    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    if-nez v2, :cond_0

    .line 19
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->readPictures()V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getDocumentEncryptionAtom()Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;-><init>(Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;)V

    .line 23
    :try_start_0
    iget-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v4, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->updateEncryptionRecord([Lorg/apache/poi/hslf/record/Record;)[Lorg/apache/poi/hslf/record/Record;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    .line 24
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    .line 25
    new-instance v5, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v5}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v6, 0x0

    .line 26
    :try_start_1
    invoke-virtual {p0, v5, v6}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->updateAndWriteDependantRecords(Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 27
    invoke-virtual {v5}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_docstream:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 28
    :try_start_2
    invoke-virtual {v5}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    .line 29
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_docstream:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 30
    invoke-virtual {p1, v5, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 31
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->getDocumentEncryptionAtom()Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/apache/poi/hslf/record/CurrentUserAtom;->setEncrypted(Z)V

    .line 33
    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hslf/record/CurrentUserAtom;->writeToFS(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    const-string v1, "Current User"

    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 36
    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/sunia/HTREnginev2/t7h;

    invoke-direct {v3, v4}, Lcom/sunia/HTREnginev2/t7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    invoke-static {v1}, Lorg/apache/commons/collections4/IteratorUtils;->asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 39
    :try_start_3
    new-instance v3, Ljava/io/SequenceInputStream;

    invoke-direct {v3, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 40
    :try_start_4
    invoke-virtual {p1, v3, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 41
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 42
    :try_start_5
    invoke-virtual {v3}, Ljava/io/SequenceInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 43
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 44
    :try_start_7
    invoke-virtual {v3}, Ljava/io/SequenceInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_8
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catch_0
    move-exception p0

    .line 45
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 46
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->close()V

    if-eqz p2, :cond_3

    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p0

    invoke-static {p0, p1, v2}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    :cond_3
    return-void

    :catchall_3
    move-exception p0

    .line 48
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    .line 49
    :try_start_b
    invoke-virtual {v5}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p0

    .line 50
    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception p1

    .line 51
    :try_start_e
    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method


# virtual methods
.method public addPicture(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->readPictures()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getOffset()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getBseSize()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->setIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public declared-synchronized appendRootLevelRecord(Lorg/apache/poi/hslf/record/Record;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/apache/poi/hslf/record/Record;

    array-length v0, v0

    sub-int/2addr v0, v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ltz v0, :cond_2

    if-eqz v4, :cond_0

    iget-object v5, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    aget-object v5, v5, v0

    aput-object v5, v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    aget-object v7, v6, v0

    aput-object v7, v1, v5

    aget-object v5, v6, v0

    instance-of v5, v5, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    if-eqz v5, :cond_1

    aput-object p1, v1, v0

    move v3, v0

    move v4, v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearDirectoryImpl()V
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/POIDocument;->clearDirectory()V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PP97_DUALSTORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    :cond_1
    return-void
.end method

.method public getCurrentUserAtom()Lorg/apache/poi/hslf/record/CurrentUserAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;

    return-object p0
.end method

.method public getDocumentEncryptionAtom()Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEmbeddedObjects()[Lorg/apache/poi/hslf/usermodel/HSLFObjectData;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_objects:[Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    instance-of v6, v5, Lorg/apache/poi/hslf/record/ExOleObjStg;

    if-eqz v6, :cond_0

    new-instance v6, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    check-cast v5, Lorg/apache/poi/hslf/record/ExOleObjStg;

    invoke-direct {v6, v5}, Lorg/apache/poi/hslf/usermodel/HSLFObjectData;-><init>(Lorg/apache/poi/hslf/record/ExOleObjStg;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v3, [Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_objects:[Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_objects:[Lorg/apache/poi/hslf/usermodel/HSLFObjectData;

    return-object p0
.end method

.method public getEncryptedPropertyStreamName()Ljava/lang/String;
    .locals 0

    const-string p0, "EncryptedSummary"

    return-object p0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getDocumentEncryptionAtom()Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPictureData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFPictureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->readPictures()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_pictures:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPropertySetImpl(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p0

    return-object p0
.end method

.method public getPropertySetImpl(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p0

    return-object p0
.end method

.method public getRecords()[Lorg/apache/poi/hslf/record/Record;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    return-object p0
.end method

.method public getUnderlyingBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_docstream:[B

    return-object p0
.end method

.method public initDirectoryImpl()Z
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/POIDocument;->initDirectory()Z

    move-result p0

    return p0
.end method

.method public normalizeRecords()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->updateAndWriteDependantRecords(Ljava/io/OutputStream;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    invoke-static {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->normalizeRecords([Lorg/apache/poi/hslf/record/Record;)[Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public replaceDirectoryImpl(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/poi/POIDocument;->replaceDirectory(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public updateAndWriteDependantRecords(Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hslf/record/RecordTypes;",
            "Lorg/apache/poi/hslf/record/PositionDependentRecord;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$1;)V

    iget-object v6, v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    array-length v7, v6

    const/4 v8, 0x0

    move-object v10, v5

    move-object v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_5

    aget-object v12, v6, v9

    instance-of v13, v12, Lorg/apache/poi/hslf/record/PositionDependentRecord;

    if-eqz v13, :cond_4

    move-object v13, v12

    check-cast v13, Lorg/apache/poi/hslf/record/PositionDependentRecord;

    invoke-interface {v13}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->getLastOnDiskOffset()I

    move-result v14

    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$CountingOS;->size()I

    move-result v15

    invoke-interface {v13, v15}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->setLastOnDiskOffset(I)V

    const/4 v5, -0x1

    if-eq v14, v5, :cond_0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v12}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v14

    long-to-int v5, v14

    sget-object v14, Lorg/apache/poi/hslf/record/RecordTypes;->PersistPtrIncrementalBlock:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v15, v14, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    if-ne v5, v15, :cond_1

    move-object v11, v13

    check-cast v11, Lorg/apache/poi/hslf/record/PersistPtrHolder;

    goto :goto_1

    :cond_1
    sget-object v14, Lorg/apache/poi/hslf/record/RecordTypes;->UserEditAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v15, v14, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    if-ne v5, v15, :cond_2

    move-object v10, v13

    check-cast v10, Lorg/apache/poi/hslf/record/UserEditAtom;

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v14, :cond_3

    invoke-interface {v2, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v12, v4}, Lorg/apache/poi/hslf/record/Record;->writeOut(Ljava/io/OutputStream;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record is not a position dependent record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hslf/exceptions/CorruptPowerPointFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    if-eqz v10, :cond_b

    if-eqz v11, :cond_b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Lorg/apache/poi/hslf/record/PersistPtrHolder;->getSlideLocationsLookup()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    new-instance v4, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->getDocumentEncryptionAtom()Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;-><init>(Lorg/apache/poi/hslf/record/DocumentEncryptionAtom;)V

    :try_start_0
    iget-object v5, v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->_records:[Lorg/apache/poi/hslf/record/Record;

    array-length v6, v5

    move v7, v8

    :goto_3
    if-ge v7, v6, :cond_9

    aget-object v9, v5, v7

    move-object v11, v9

    check-cast v11, Lorg/apache/poi/hslf/record/PositionDependentRecord;

    invoke-interface {v11}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->getLastOnDiskOffset()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :cond_7
    invoke-interface {v11, v3}, Lorg/apache/poi/hslf/record/PositionDependentRecord;->updateOtherRecordReferences(Ljava/util/Map;)V

    if-eqz v1, :cond_8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v1, v11, v9}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->encryptRecord(Ljava/io/OutputStream;ILorg/apache/poi/hslf/record/Record;)Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/apache/poi/hslf/record/Record;->writeOut(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->close()V

    iget-object v1, v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/CurrentUserAtom;->getCurrentEditOffset()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v10}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_a

    iget-object v0, v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->currentUser:Lorg/apache/poi/hslf/record/CurrentUserAtom;

    invoke-virtual {v10}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;->getLastOnDiskOffset()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hslf/record/CurrentUserAtom;->setCurrentEditOffset(J)V

    return-void

    :cond_a
    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find the new location of the last UserEditAtom that used to be at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowEncrypted;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2

    :cond_b
    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string v1, "UserEditAtom or PersistPtr can\'t be determined."

    invoke-direct {v0, v1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateInPlaceWritePossibleImpl()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    return-void
.end method

.method public write()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V

    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->write(Ljava/io/File;Z)V

    return-void
.end method

.method public write(Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_0

    .line 10
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->write(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public write(Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 13
    :try_start_0
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl;->write(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 14
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public writePropertiesImpl()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/poi/POIDocument;->writeProperties()V

    return-void
.end method

.method public writePropertiesImpl(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    return-void
.end method
