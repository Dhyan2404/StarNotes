.class public final Lorg/apache/poi/extractor/ExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;,
        Lorg/apache/poi/extractor/ExtractorFactory$Singleton;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field public static final OOXML_PACKAGE:Ljava/lang/String; = "Package"

.field private static allPreferEventExtractors:Ljava/lang/Boolean;

.field private static final threadPreferEventExtractors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final provider:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/extractor/ExtractorProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/extractor/ExtractorFactory;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Lorg/apache/poi/extractor/ExtractorFactory$1;

    invoke-direct {v0}, Lorg/apache/poi/extractor/ExtractorFactory$1;-><init>()V

    sput-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/extractor/ExtractorFactory;->provider:Ljava/util/List;

    .line 4
    const-class p0, Lorg/apache/poi/extractor/ExtractorFactory;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 5
    const-class v1, Lorg/apache/poi/extractor/ExtractorProvider;

    invoke-static {v1, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/b7g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/b7g;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/extractor/ExtractorFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/extractor/ExtractorFactory;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/io/InputStream;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->lambda$createExtractor$0(Ljava/io/InputStream;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static addProvider(Lorg/apache/poi/extractor/ExtractorProvider;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory$Singleton;->access$100()Lorg/apache/poi/extractor/ExtractorFactory;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/extractor/ExtractorFactory;->provider:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->lambda$createExtractor$3(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->lambda$createExtractor$5(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Ljava/io/File;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 20
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    .line 21
    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v1, v0, :cond_0

    .line 22
    new-instance v1, Lorg/apache/poi/extractor/a;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/extractor/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/poi/extractor/ExtractorFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    sget-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v2, v0, :cond_4

    const/4 v2, 0x0

    .line 24
    :try_start_0
    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    const-string v2, "EncryptedPackage"

    .line 26
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Package"

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    move-object v0, v1

    .line 27
    :cond_3
    new-instance v1, Lorg/apache/poi/extractor/b;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/extractor/b;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/poi/extractor/ExtractorFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p0

    .line 28
    :goto_1
    invoke-static {v2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    throw p0

    .line 30
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t create extractor - unsupported file type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_5
    new-instance p1, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EmptyFileException;-><init>(Ljava/io/File;)V

    throw p1
.end method

.method public static createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 6
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lt v1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 8
    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v1

    .line 9
    sget-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v2, v1, :cond_0

    .line 10
    new-instance v0, Lorg/apache/poi/extractor/c;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/extractor/c;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/poi/extractor/ExtractorFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    sget-object v3, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v3, v1, :cond_4

    .line 12
    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v3, p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 13
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    const-string v3, "EncryptedPackage"

    .line 14
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Package"

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    move-object v1, v2

    .line 15
    :cond_3
    new-instance v0, Lorg/apache/poi/extractor/d;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/extractor/d;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/poi/extractor/ExtractorFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0

    .line 16
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t create extractor - unsupported file type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_5
    new-instance p0, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p0}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "EncryptedPackage"

    .line 33
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Package"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v1, Lorg/apache/poi/extractor/f;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/extractor/f;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/poi/extractor/ExtractorFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    new-instance v1, Lorg/apache/poi/extractor/e;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/extractor/e;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/poi/extractor/ExtractorFactory;->wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Class;Lorg/apache/poi/extractor/ExtractorProvider;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/extractor/ExtractorFactory;->lambda$removeProvider$7(Ljava/lang/Class;Lorg/apache/poi/extractor/ExtractorProvider;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/io/File;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->lambda$createExtractor$2(Ljava/io/File;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->lambda$createExtractor$4(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/poifs/filesystem/Entry;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/extractor/ExtractorFactory;->lambda$getEmbeddedDocsTextExtractors$6(Lorg/apache/poi/poifs/filesystem/Entry;)Z

    move-result p0

    return p0
.end method

.method public static getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getEmbeddedDocsTextExtractors(Lorg/apache/poi/extractor/POIOLE2TextExtractor;)[Lorg/apache/poi/extractor/POITextExtractor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/extractor/POIOLE2TextExtractor;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v3, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/y6g;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/y6g;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/z6g;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/z6g;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory$Singleton;->access$100()Lorg/apache/poi/extractor/ExtractorFactory;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/poi/extractor/ExtractorFactory;->provider:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/extractor/ExtractorProvider;

    sget-object v5, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    invoke-interface {v3, v5}, Lorg/apache/poi/extractor/ExtractorProvider;->accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, p0, v0, v1}, Lorg/apache/poi/extractor/ExtractorProvider;->identifyEmbeddedResources(Lorg/apache/poi/extractor/POIOLE2TextExtractor;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    new-array p0, v4, [Lorg/apache/poi/extractor/POITextExtractor;

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/filesystem/Entry;

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-static {v2}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    :try_start_0
    invoke-static {v1}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lorg/apache/poi/extractor/ExtractorFactory;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "Format not supported yet ({})"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-array v0, v4, [Lorg/apache/poi/extractor/POITextExtractor;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/extractor/POITextExtractor;

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The extractor didn\'t know which POIFS it came from!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "extractor must be given"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPreferEventExtractor()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getThreadPrefersEventExtractors()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic h(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->lambda$createExtractor$1(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createExtractor$0(Ljava/io/InputStream;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/extractor/ExtractorProvider;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createExtractor$1(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/extractor/ExtractorProvider;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createExtractor$2(Ljava/io/File;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/extractor/ExtractorProvider;->create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createExtractor$3(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/extractor/ExtractorProvider;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createExtractor$4(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/extractor/ExtractorProvider;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createExtractor$5(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lorg/apache/poi/extractor/ExtractorProvider;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEmbeddedDocsTextExtractors$6(Lorg/apache/poi/poifs/filesystem/Entry;)Z
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MBD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$removeProvider$7(Ljava/lang/Class;Lorg/apache/poi/extractor/ExtractorProvider;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static removeProvider(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/extractor/ExtractorProvider;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory$Singleton;->access$100()Lorg/apache/poi/extractor/ExtractorFactory;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/extractor/ExtractorFactory;->provider:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/a7g;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a7g;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/extractor/ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    return-void
.end method

.method public static setThreadPrefersEventExtractors(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/extractor/ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static wp(Lorg/apache/poi/poifs/filesystem/FileMagic;Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory$Singleton;->access$100()Lorg/apache/poi/extractor/ExtractorFactory;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/extractor/ExtractorFactory;->provider:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/extractor/ExtractorProvider;

    invoke-interface {v1, p0}, Lorg/apache/poi/extractor/ExtractorProvider;->accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;->create(Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Your InputStream was neither an OLE2 stream, nor an OOXML stream or you haven\'t provide the poi-ooxml*.jar and/or poi-scratchpad*.jar in the classpath/modulepath - FileMagic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", providers: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory$Singleton;->access$100()Lorg/apache/poi/extractor/ExtractorFactory;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/extractor/ExtractorFactory;->provider:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
