.class public Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/ExtractorProvider;


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final OUTLOOK_ENTRY_NAMES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-class v0, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;->LOG:Lorg/apache/logging/log4j/Logger;

    const-string v1, "__substg1.0_1000001E"

    const-string v2, "__substg1.0_1000001F"

    const-string v3, "__substg1.0_0047001E"

    const-string v4, "__substg1.0_0047001F"

    const-string v5, "__substg1.0_0037001E"

    const-string v6, "__substg1.0_0037001F"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;->OUTLOOK_ENTRY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/poifs/filesystem/Entry;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;->lambda$identifyEmbeddedResources$1(Lorg/apache/poi/poifs/filesystem/Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/poi/poifs/filesystem/Entry;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;->lambda$identifyEmbeddedResources$0(Lorg/apache/poi/poifs/filesystem/Entry;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$identifyEmbeddedResources$0(Lorg/apache/poi/poifs/filesystem/Entry;)Z
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MBD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$identifyEmbeddedResources$1(Lorg/apache/poi/poifs/filesystem/Entry;)Z
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    const-string p2, "WordDocument"

    .line 5
    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 6
    :try_start_1
    new-instance p2, Lorg/apache/poi/hwpf/extractor/WordExtractor;

    invoke-direct {p2, p1}, Lorg/apache/poi/hwpf/extractor/WordExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_1
    .catch Lorg/apache/poi/hwpf/OldWordFileFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-object p2

    .line 8
    :catch_0
    :try_start_2
    new-instance p2, Lorg/apache/poi/hwpf/extractor/Word6Extractor;

    invoke-direct {p2, p1}, Lorg/apache/poi/hwpf/extractor/Word6Extractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-object p2

    :cond_0
    :try_start_3
    const-string p2, "PowerPoint Document"

    .line 10
    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "PP97_DUALSTORAGE"

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "VisioDocument"

    .line 11
    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    new-instance p2, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;

    invoke-direct {p2, p1}, Lorg/apache/poi/hdgf/extractor/VisioTextExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-object p2

    :cond_2
    :try_start_4
    const-string p2, "Quill"

    .line 14
    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    new-instance p2, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;

    invoke-direct {p2, p1}, Lorg/apache/poi/hpbf/extractor/PublisherTextExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-object p2

    .line 17
    :cond_3
    :try_start_5
    sget-object p2, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;->OUTLOOK_ENTRY_NAMES:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p2, v1

    .line 18
    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    new-instance p2, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;

    invoke-direct {p2, p1}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 20
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-object p2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_6
    :goto_1
    :try_start_6
    new-instance p2, Lorg/apache/poi/sl/extractor/SlideShowExtractor;

    invoke-static {p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    invoke-direct {p2, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;-><init>(Lorg/apache/poi/sl/usermodel/SlideShow;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 22
    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public identifyEmbeddedResources(Lorg/apache/poi/extractor/POIOLE2TextExtractor;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/extractor/POIOLE2TextExtractor;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/poi/extractor/POIOLE2TextExtractor;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p0

    if-eqz p0, :cond_5

    instance-of v0, p1, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/r6k;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/r6k;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/sunia/HTREnginev2/z6g;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/z6g;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hwpf/extractor/WordExtractor;

    if-eqz v0, :cond_1

    :try_start_0
    const-string p1, "ObjectPool"

    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/s6k;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/s6k;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/sunia/HTREnginev2/z6g;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/z6g;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/extractor/ole2/OLE2ScratchpadExtractorFactory;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Ignoring FileNotFoundException while extracting Word document"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    instance-of p0, p1, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;

    if-eqz p0, :cond_4

    check-cast p1, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;

    invoke-virtual {p1}, Lorg/apache/poi/hsmf/extractor/OutlookTextExtractor;->getMAPIMessage()Lorg/apache/poi/hsmf/MAPIMessage;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hsmf/MAPIMessage;->getAttachmentFiles()[Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;

    move-result-object p0

    array-length p1, p0

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v0, p0, v1

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachData()Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachData()Lorg/apache/poi/hsmf/datatypes/ByteChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/ByteChunk;->getValue()[B

    move-result-object v0

    new-instance v2, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachmentDirectory()Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/AttachmentChunks;->getAttachmentDirectory()Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hsmf/datatypes/DirectoryChunk;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The extractor didn\'t know which POIFS it came from!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
