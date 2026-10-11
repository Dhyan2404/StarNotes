.class public Lorg/apache/commons/compress/compressors/CompressorStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/compressors/CompressorStreamProvider;


# static fields
.field public static final BROTLI:Ljava/lang/String; = "br"

.field public static final BZIP2:Ljava/lang/String; = "bzip2"

.field public static final DEFLATE:Ljava/lang/String; = "deflate"

.field public static final DEFLATE64:Ljava/lang/String; = "deflate64"

.field public static final GZIP:Ljava/lang/String; = "gz"

.field public static final LZ4_BLOCK:Ljava/lang/String; = "lz4-block"

.field public static final LZ4_FRAMED:Ljava/lang/String; = "lz4-framed"

.field public static final LZMA:Ljava/lang/String; = "lzma"

.field public static final PACK200:Ljava/lang/String; = "pack200"

.field public static final SNAPPY_FRAMED:Ljava/lang/String; = "snappy-framed"

.field public static final SNAPPY_RAW:Ljava/lang/String; = "snappy-raw"

.field public static final XZ:Ljava/lang/String; = "xz"

.field public static final Z:Ljava/lang/String; = "z"

.field public static final ZSTANDARD:Ljava/lang/String; = "zstd"

.field public static final f:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/Boolean;

.field public b:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->f:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    const-string v0, "Google Brotli Dec"

    const-string v1, "https://github.com/google/brotli/"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->g:Ljava/lang/String;

    const-string v0, "XZ for Java"

    const-string v1, "https://tukaani.org/xz/java.html"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->h:Ljava/lang/String;

    const-string v0, "Zstd JNI"

    const-string v1, "https://github.com/luben/zstd-jni"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->a:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->e:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->a:Ljava/lang/Boolean;

    .line 6
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->d:Z

    .line 7
    iput p2, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->e:I

    return-void
.end method

.method public static synthetic a()Ljava/util/SortedMap;
    .locals 1

    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->i()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Ljava/util/SortedMap;
    .locals 1

    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->h()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->k(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->j(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V

    return-void
.end method

.method public static detect(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    new-array v1, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "bzip2"

    return-object p0

    :cond_0
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "gz"

    return-object p0

    :cond_1
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "pack200"

    return-object p0

    :cond_2
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "snappy-framed"

    return-object p0

    :cond_3
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "z"

    return-object p0

    :cond_4
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "deflate"

    return-object p0

    :cond_5
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "xz"

    return-object p0

    :cond_6
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "lzma"

    return-object p0

    :cond_7
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "lz4-framed"

    return-object p0

    :cond_8
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "zstd"

    return-object p0

    :cond_9
    new-instance p0, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v0, "No Compressor found for the stream signature."

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v1, "IOException while reading signature."

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mark is not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->l(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/lang/String;)V

    return-void
.end method

.method public static f()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    return-object v0
.end method

.method public static findAvailableCompressorInputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/r7e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/r7e;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public static findAvailableCompressorOutputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/s7e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/s7e;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public static getBrotli()Ljava/lang/String;
    .locals 1

    const-string v0, "br"

    return-object v0
.end method

.method public static getBzip2()Ljava/lang/String;
    .locals 1

    const-string v0, "bzip2"

    return-object v0
.end method

.method public static getDeflate()Ljava/lang/String;
    .locals 1

    const-string v0, "deflate"

    return-object v0
.end method

.method public static getDeflate64()Ljava/lang/String;
    .locals 1

    const-string v0, "deflate64"

    return-object v0
.end method

.method public static getGzip()Ljava/lang/String;
    .locals 1

    const-string v0, "gz"

    return-object v0
.end method

.method public static getLZ4Block()Ljava/lang/String;
    .locals 1

    const-string v0, "lz4-block"

    return-object v0
.end method

.method public static getLZ4Framed()Ljava/lang/String;
    .locals 1

    const-string v0, "lz4-framed"

    return-object v0
.end method

.method public static getLzma()Ljava/lang/String;
    .locals 1

    const-string v0, "lzma"

    return-object v0
.end method

.method public static getPack200()Ljava/lang/String;
    .locals 1

    const-string v0, "pack200"

    return-object v0
.end method

.method public static getSingleton()Lorg/apache/commons/compress/compressors/CompressorStreamFactory;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->f:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    return-object v0
.end method

.method public static getSnappyFramed()Ljava/lang/String;
    .locals 1

    const-string v0, "snappy-framed"

    return-object v0
.end method

.method public static getSnappyRaw()Ljava/lang/String;
    .locals 1

    const-string v0, "snappy-raw"

    return-object v0
.end method

.method public static getXz()Ljava/lang/String;
    .locals 1

    const-string v0, "xz"

    return-object v0
.end method

.method public static getZ()Ljava/lang/String;
    .locals 1

    const-string v0, "z"

    return-object v0
.end method

.method public static getZstandard()Ljava/lang/String;
    .locals 1

    const-string v0, "zstd"

    return-object v0
.end method

.method public static synthetic h()Ljava/util/SortedMap;
    .locals 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sget-object v1, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->f:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getInputStreamCompressorNames()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->m(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->f()Ljava/lang/Iterable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/u7e;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/u7e;-><init>(Ljava/util/TreeMap;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic i()Ljava/util/SortedMap;
    .locals 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sget-object v1, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->f:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getOutputStreamCompressorNames()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->m(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->f()Ljava/lang/Iterable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/t7e;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/t7e;-><init>(Ljava/util/TreeMap;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic j(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->getInputStreamCompressorNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->m(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->getOutputStreamCompressorNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->m(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    return-void
.end method

.method public static synthetic l(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    return-void
.end method

.method public static m(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/q7e;

    invoke-direct {v0, p2, p1}, Lcom/sunia/HTREnginev2/q7e;-><init>(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " In addition to Apache Commons Compress you need the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " library - see "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createCompressorInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p0

    return-object p0
.end method

.method public createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->d:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p0

    return-object p0
.end method

.method public createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    :try_start_0
    const-string v0, "gz"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object p0

    :cond_0
    const-string v0, "bzip2"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object p0

    :cond_1
    const-string v0, "br"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->isBrotliCompressionAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    new-instance p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    .line 10
    :cond_2
    new-instance p0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Brotli compression is not available."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v0, "xz"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->isXZCompressionAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    new-instance p1, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    iget p0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->e:I

    invoke-direct {p1, p2, p3, p0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;ZI)V

    return-object p1

    .line 14
    :cond_4
    new-instance p0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "XZ compression is not available."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v0, "zstd"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->isZstdCompressionAvailable()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 17
    new-instance p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    .line 18
    :cond_6
    new-instance p0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Zstandard compression is not available."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v0, "lzma"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->isLZMACompressionAvailable()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    new-instance p1, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;

    iget p0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->e:I

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p1

    .line 22
    :cond_8
    new-instance p0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LZMA compression is not available"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v0, "pack200"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    new-instance p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_a
    const-string v0, "snappy-raw"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    new-instance p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_b
    const-string v0, "snappy-framed"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    new-instance p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_c
    const-string v0, "z"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    new-instance p1, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;

    iget p0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->e:I

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p1

    :cond_d
    const-string v0, "deflate"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 32
    new-instance p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_e
    const-string v0, "deflate64"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    new-instance p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_f
    const-string v0, "lz4-block"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 36
    new-instance p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_10
    const-string v0, "lz4-framed"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    new-instance p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 39
    :cond_11
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getCompressorInputStreamProviders()Ljava/util/SortedMap;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    if-eqz p0, :cond_12

    .line 40
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p0

    return-object p0

    .line 41
    :cond_12
    new-instance p0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Compressor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string p2, "Could not create CompressorInputStream."

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 43
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Compressor name and stream must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    :try_start_0
    const-string v0, "gz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_0
    const-string v0, "bzip2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_1
    const-string v0, "xz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_2
    const-string v0, "pack200"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_3
    const-string v0, "lzma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_4
    const-string v0, "deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_5
    const-string v0, "snappy-framed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_6
    const-string v0, "lz4-block"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_7
    const-string v0, "lz4-framed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_8
    const-string v0, "zstd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getCompressorOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Compressor: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string p2, "Could not create CompressorOutputStream"

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Compressor name and stream must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->d:Z

    return p0
.end method

.method public getCompressorInputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->b:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->findAvailableCompressorInputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->b:Ljava/util/SortedMap;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->b:Ljava/util/SortedMap;

    return-object p0
.end method

.method public getCompressorOutputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->c:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->findAvailableCompressorOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->c:Ljava/util/SortedMap;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->c:Ljava/util/SortedMap;

    return-object p0
.end method

.method public getDecompressUntilEOF()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getInputStreamCompressorNames()Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "gz"

    const-string v1, "br"

    const-string v2, "bzip2"

    const-string v3, "xz"

    const-string v4, "lzma"

    const-string v5, "pack200"

    const-string v6, "deflate"

    const-string v7, "snappy-raw"

    const-string v8, "snappy-framed"

    const-string v9, "z"

    const-string v10, "lz4-block"

    const-string v11, "lz4-framed"

    const-string v12, "zstd"

    const-string v13, "deflate64"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStreamCompressorNames()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "gz"

    const-string v1, "bzip2"

    const-string v2, "xz"

    const-string v3, "lzma"

    const-string v4, "pack200"

    const-string v5, "deflate"

    const-string v6, "snappy-framed"

    const-string v7, "lz4-block"

    const-string v8, "lz4-framed"

    const-string v9, "zstd"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public setDecompressConcatenated(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->d:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot override the setting defined by the constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
