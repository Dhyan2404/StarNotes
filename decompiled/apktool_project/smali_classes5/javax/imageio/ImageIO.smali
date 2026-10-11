.class public final Ljavax/imageio/ImageIO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/ImageIO$i;,
        Ljavax/imageio/ImageIO$g;,
        Ljavax/imageio/ImageIO$h;,
        Ljavax/imageio/ImageIO$e;,
        Ljavax/imageio/ImageIO$d;,
        Ljavax/imageio/ImageIO$c;,
        Ljavax/imageio/ImageIO$f;,
        Ljavax/imageio/ImageIO$SpiInfo;,
        Ljavax/imageio/ImageIO$b;
    }
.end annotation


# static fields
.field public static final a:Ljavax/imageio/spi/IIORegistry;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/reflect/Method;

.field public static f:Ljava/lang/reflect/Method;

.field public static g:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "getMIMETypes"

    const-string v1, "getFileSuffixes"

    const-string v2, "getFormatNames"

    const-class v3, Ljavax/imageio/spi/ImageWriterSpi;

    const-class v4, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-static {}, Ljavax/imageio/spi/IIORegistry;->getDefaultInstance()Ljavax/imageio/spi/IIORegistry;

    move-result-object v5

    sput-object v5, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const/4 v5, 0x0

    :try_start_0
    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Ljavax/imageio/ImageIO;->b:Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Ljavax/imageio/ImageIO;->c:Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Ljavax/imageio/ImageIO;->d:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ljavax/imageio/ImageIO;->e:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ljavax/imageio/ImageIO;->f:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ljavax/imageio/ImageIO;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljavax/imageio/spi/IIORegistry;
    .locals 1

    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    return-object v0
.end method

.method public static synthetic b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Ljavax/imageio/ImageIO;->c([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v2, Ljavax/imageio/spi/ImageInputStreamSpi;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Ljavax/imageio/ImageIO;->getUseCache()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljavax/imageio/ImageIO;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/spi/ImageInputStreamSpi;

    invoke-virtual {v2}, Ljavax/imageio/spi/ImageInputStreamSpi;->getInputClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {}, Ljavax/imageio/ImageIO;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, p0, v3, v0}, Ljavax/imageio/spi/ImageInputStreamSpi;->createInputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Can\'t create cache file!"

    invoke-direct {v0, v1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v2, Ljavax/imageio/spi/ImageOutputStreamSpi;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Ljavax/imageio/ImageIO;->getUseCache()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljavax/imageio/ImageIO;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/spi/ImageOutputStreamSpi;

    invoke-virtual {v2}, Ljavax/imageio/spi/ImageOutputStreamSpi;->getOutputClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {}, Ljavax/imageio/ImageIO;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, p0, v3, v0}, Ljavax/imageio/spi/ImageOutputStreamSpi;->createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Can\'t create cache file!"

    invoke-direct {v0, v1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "output == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriter;Ljavax/imageio/stream/ImageOutputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1, p0}, Ljavax/imageio/ImageWriter;->write(Ljava/awt/image/RenderedImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljavax/imageio/ImageWriter;->dispose()V

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->flush()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljavax/imageio/ImageWriter;->dispose()V

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->flush()V

    throw p0
.end method

.method public static declared-synchronized e()Ljavax/imageio/ImageIO$b;
    .locals 4

    const-class v0, Ljavax/imageio/ImageIO;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v1

    const-class v2, Ljavax/imageio/ImageIO$b;

    invoke-virtual {v1, v2}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/ImageIO$b;

    if-nez v2, :cond_0

    new-instance v2, Ljavax/imageio/ImageIO$b;

    invoke-direct {v2}, Ljavax/imageio/ImageIO$b;-><init>()V

    const-class v3, Ljavax/imageio/ImageIO$b;

    invoke-virtual {v1, v3, v2}, Lsun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f(Ljava/lang/Class;Ljavax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljavax/imageio/spi/ImageReaderWriterSpi;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljavax/imageio/ImageIO$SpiInfo;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/imageio/spi/ImageReaderWriterSpi;

    invoke-virtual {p1, v1}, Ljavax/imageio/ImageIO$SpiInfo;->info(Ljavax/imageio/spi/ImageReaderWriterSpi;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.io.tmpdir"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getCacheDirectory()Ljava/io/File;
    .locals 1

    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/imageio/ImageIO$b;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getImageReader(Ljavax/imageio/ImageWriter;)Ljavax/imageio/ImageReader;
    .locals 6

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOriginatingProvider()Ljavax/imageio/spi/ImageWriterSpi;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :try_start_0
    sget-object v3, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v4, Ljavax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v3, v4, v1}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v4, p0}, Ljavax/imageio/spi/ImageWriterSpi;->isOwnWriter(Ljavax/imageio/ImageWriter;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :cond_1
    if-nez v0, :cond_2

    :catch_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljavax/imageio/spi/ImageWriterSpi;->getImageReaderSpiNames()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v2

    :cond_3
    :try_start_1
    aget-object p0, p0, v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    invoke-virtual {v0, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviderByClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/spi/ImageReaderSpi;

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderSpi;->createReaderInstance()Ljavax/imageio/ImageReader;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v0, p0, v1}, Ljavax/imageio/spi/ServiceRegistry;->deregisterServiceProvider(Ljava/lang/Object;Ljava/lang/Class;)Z

    :catch_2
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "writer == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageReader;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageReaderSpi;

    new-instance v2, Ljavax/imageio/ImageIO$c;

    invoke-direct {v2, p0}, Ljavax/imageio/ImageIO$c;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljavax/imageio/ImageIO$f;

    invoke-direct {v0, p0}, Ljavax/imageio/ImageIO$f;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageReadersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageReader;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageReaderSpi;

    new-instance v2, Ljavax/imageio/ImageIO$e;

    sget-object v3, Ljavax/imageio/ImageIO;->b:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Ljavax/imageio/ImageIO$e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljavax/imageio/ImageIO$f;

    invoke-direct {v0, p0}, Ljavax/imageio/ImageIO$f;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "formatName == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageReadersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageReader;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageReaderSpi;

    new-instance v2, Ljavax/imageio/ImageIO$e;

    sget-object v3, Ljavax/imageio/ImageIO;->d:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Ljavax/imageio/ImageIO$e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljavax/imageio/ImageIO$f;

    invoke-direct {v0, p0}, Ljavax/imageio/ImageIO$f;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "MIMEType == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageReadersBySuffix(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageReader;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageReaderSpi;

    new-instance v2, Ljavax/imageio/ImageIO$e;

    sget-object v3, Ljavax/imageio/ImageIO;->c:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Ljavax/imageio/ImageIO$e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljavax/imageio/ImageIO$f;

    invoke-direct {v0, p0}, Ljavax/imageio/ImageIO$f;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileSuffix == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageTranscoders(Ljavax/imageio/ImageReader;Ljavax/imageio/ImageWriter;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/ImageReader;",
            "Ljavax/imageio/ImageWriter;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageTranscoder;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getOriginatingProvider()Ljavax/imageio/spi/ImageReaderSpi;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/imageio/ImageWriter;->getOriginatingProvider()Ljavax/imageio/spi/ImageWriterSpi;

    move-result-object p1

    new-instance v0, Ljavax/imageio/ImageIO$i;

    invoke-direct {v0, p0, p1}, Ljavax/imageio/ImageIO$i;-><init>(Ljavax/imageio/spi/ImageReaderSpi;Ljavax/imageio/spi/ImageWriterSpi;)V

    :try_start_0
    sget-object p0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class p1, Ljavax/imageio/spi/ImageTranscoderSpi;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljavax/imageio/ImageIO$g;

    invoke-direct {p1, p0}, Ljavax/imageio/ImageIO$g;-><init>(Ljava/util/Iterator;)V

    return-object p1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "writer == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reader == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWriter(Ljavax/imageio/ImageReader;)Ljavax/imageio/ImageWriter;
    .locals 6

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getOriginatingProvider()Ljavax/imageio/spi/ImageReaderSpi;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :try_start_0
    sget-object v3, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v4, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v3, v4, v1}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v4, p0}, Ljavax/imageio/spi/ImageReaderSpi;->isOwnReader(Ljavax/imageio/ImageReader;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :cond_1
    if-nez v0, :cond_2

    :catch_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljavax/imageio/spi/ImageReaderSpi;->getImageWriterSpiNames()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v2

    :cond_3
    :try_start_1
    aget-object p0, p0, v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    invoke-virtual {v0, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviderByClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/spi/ImageWriterSpi;

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Ljavax/imageio/spi/ImageWriterSpi;->createWriterInstance()Ljavax/imageio/ImageWriter;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v0, p0, v1}, Ljavax/imageio/spi/ServiceRegistry;->deregisterServiceProvider(Ljava/lang/Object;Ljava/lang/Class;)Z

    :catch_2
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "reader == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWriters(Ljavax/imageio/ImageTypeSpecifier;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/ImageTypeSpecifier;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageWriter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageWriterSpi;

    new-instance v2, Ljavax/imageio/ImageIO$d;

    invoke-direct {v2, p0, p1}, Ljavax/imageio/ImageIO$d;-><init>(Ljavax/imageio/ImageTypeSpecifier;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljavax/imageio/ImageIO$h;

    invoke-direct {p1, p0}, Ljavax/imageio/ImageIO$h;-><init>(Ljava/util/Iterator;)V

    return-object p1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "formatName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWritersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageWriter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageWriterSpi;

    new-instance v2, Ljavax/imageio/ImageIO$e;

    sget-object v3, Ljavax/imageio/ImageIO;->e:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Ljavax/imageio/ImageIO$e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljavax/imageio/ImageIO$h;

    invoke-direct {v0, p0}, Ljavax/imageio/ImageIO$h;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "formatName == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWritersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageWriter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageWriterSpi;

    new-instance v2, Ljavax/imageio/ImageIO$e;

    sget-object v3, Ljavax/imageio/ImageIO;->g:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Ljavax/imageio/ImageIO$e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljavax/imageio/ImageIO$h;

    invoke-direct {v0, p0}, Ljavax/imageio/ImageIO$h;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "MIMEType == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWritersBySuffix(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageWriter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    const-class v1, Ljavax/imageio/spi/ImageWriterSpi;

    new-instance v2, Ljavax/imageio/ImageIO$e;

    sget-object v3, Ljavax/imageio/ImageIO;->f:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Ljavax/imageio/ImageIO$e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljavax/imageio/ImageIO$h;

    invoke-direct {v0, p0}, Ljavax/imageio/ImageIO$h;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileSuffix == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getReaderFileSuffixes()[Ljava/lang/String;
    .locals 2

    const-class v0, Ljavax/imageio/spi/ImageReaderSpi;

    sget-object v1, Ljavax/imageio/ImageIO$SpiInfo;->FILE_SUFFIXES:Ljavax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Ljavax/imageio/ImageIO;->f(Ljava/lang/Class;Ljavax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReaderFormatNames()[Ljava/lang/String;
    .locals 2

    const-class v0, Ljavax/imageio/spi/ImageReaderSpi;

    sget-object v1, Ljavax/imageio/ImageIO$SpiInfo;->FORMAT_NAMES:Ljavax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Ljavax/imageio/ImageIO;->f(Ljava/lang/Class;Ljavax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReaderMIMETypes()[Ljava/lang/String;
    .locals 2

    const-class v0, Ljavax/imageio/spi/ImageReaderSpi;

    sget-object v1, Ljavax/imageio/ImageIO$SpiInfo;->MIME_TYPES:Ljavax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Ljavax/imageio/ImageIO;->f(Ljava/lang/Class;Ljavax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseCache()Z
    .locals 1

    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/imageio/ImageIO$b;->c()Z

    move-result v0

    return v0
.end method

.method public static getWriterFileSuffixes()[Ljava/lang/String;
    .locals 2

    const-class v0, Ljavax/imageio/spi/ImageWriterSpi;

    sget-object v1, Ljavax/imageio/ImageIO$SpiInfo;->FILE_SUFFIXES:Ljavax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Ljavax/imageio/ImageIO;->f(Ljava/lang/Class;Ljavax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWriterFormatNames()[Ljava/lang/String;
    .locals 2

    const-class v0, Ljavax/imageio/spi/ImageWriterSpi;

    sget-object v1, Ljavax/imageio/ImageIO$SpiInfo;->FORMAT_NAMES:Ljavax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Ljavax/imageio/ImageIO;->f(Ljava/lang/Class;Ljavax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWriterMIMETypes()[Ljava/lang/String;
    .locals 2

    const-class v0, Ljavax/imageio/spi/ImageWriterSpi;

    sget-object v1, Ljavax/imageio/ImageIO$SpiInfo;->MIME_TYPES:Ljavax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Ljavax/imageio/ImageIO;->f(Ljava/lang/Class;Ljavax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/awt/image/RenderedImage;Ljava/lang/String;)Ljavax/imageio/ImageWriter;
    .locals 0

    invoke-static {p0}, Ljavax/imageio/ImageTypeSpecifier;->createFromRenderedImage(Ljava/awt/image/RenderedImage;)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    invoke-static {p0, p1}, Ljavax/imageio/ImageIO;->getImageWriters(Ljavax/imageio/ImageTypeSpecifier;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/ImageWriter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i()Z
    .locals 5

    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/imageio/ImageIO$b;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljavax/imageio/ImageIO;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljavax/imageio/ImageIO;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FilePermission;

    const-string v4, "read, write, delete"

    invoke-direct {v3, v2, v4}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljavax/imageio/ImageIO$b;->e(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_5
    :goto_2
    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageIO$b;->e(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljavax/imageio/ImageIO$b;->e(Ljava/lang/Boolean;)V

    return v0
.end method

.method public static read(Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    :cond_0
    return-object v0

    .line 5
    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Can\'t create an ImageInputStream!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Can\'t read input file!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 8
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    :cond_0
    return-object v0

    .line 11
    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Can\'t create an ImageInputStream!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    :try_start_1
    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    if-nez v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 18
    throw v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 20
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Can\'t create an ImageInputStream!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Can\'t get input stream from URL!"

    invoke-direct {v0, v1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 23
    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/ImageReader;

    .line 26
    invoke-virtual {v0}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v1

    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, p0, v2, v2}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    const/4 v2, 0x0

    .line 28
    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Ljavax/imageio/ImageReader;->dispose()V

    .line 30
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    invoke-virtual {v0}, Ljavax/imageio/ImageReader;->dispose()V

    .line 32
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .line 33
    throw v1

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "stream == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scanForPlugins()V
    .locals 1

    sget-object v0, Ljavax/imageio/ImageIO;->a:Ljavax/imageio/spi/IIORegistry;

    invoke-virtual {v0}, Ljavax/imageio/spi/IIORegistry;->registerApplicationClasspathSpis()V

    return-void
.end method

.method public static setCacheDirectory(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a directory!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/imageio/ImageIO$b;->d(Ljava/io/File;)V

    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageIO$b;->e(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setUseCache(Z)V
    .locals 1

    invoke-static {}, Ljavax/imageio/ImageIO;->e()Ljavax/imageio/ImageIO$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/imageio/ImageIO$b;->f(Z)V

    return-void
.end method

.method public static write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 5
    invoke-static {p0, p1}, Ljavax/imageio/ImageIO;->h(Ljava/awt/image/RenderedImage;Ljava/lang/String;)Ljavax/imageio/ImageWriter;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 7
    invoke-static {p2}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    :try_start_0
    invoke-static {p0, p1, p2}, Ljavax/imageio/ImageIO;->d(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriter;Ljavax/imageio/stream/ImageOutputStream;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .line 10
    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Can\'t create an ImageOutputStream!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 13
    invoke-static {p2}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 14
    :try_start_0
    invoke-static {p0, p1}, Ljavax/imageio/ImageIO;->h(Ljava/awt/image/RenderedImage;Ljava/lang/String;)Ljavax/imageio/ImageWriter;

    move-result-object p1

    invoke-static {p0, p1, p2}, Ljavax/imageio/ImageIO;->d(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriter;Ljavax/imageio/stream/ImageOutputStream;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->close()V

    .line 16
    throw p0

    .line 17
    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Can\'t create an ImageOutputStream!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0, p1}, Ljavax/imageio/ImageIO;->h(Ljava/awt/image/RenderedImage;Ljava/lang/String;)Ljavax/imageio/ImageWriter;

    move-result-object p1

    invoke-static {p0, p1, p2}, Ljavax/imageio/ImageIO;->d(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriter;Ljavax/imageio/stream/ImageOutputStream;)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "formatName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "im == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
