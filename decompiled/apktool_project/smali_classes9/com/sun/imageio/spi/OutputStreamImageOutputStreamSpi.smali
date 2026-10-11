.class public Lcom/sun/imageio/spi/OutputStreamImageOutputStreamSpi;
.super Ljavax/imageio/spi/ImageOutputStreamSpi;
.source "SourceFile"


# static fields
.field private static final outputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/io/OutputStream;

    sput-object v0, Lcom/sun/imageio/spi/OutputStreamImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "1.0"

    sget-object v1, Lcom/sun/imageio/spi/OutputStreamImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    const-string v2, "Oracle Corporation"

    invoke-direct {p0, v2, v0, v1}, Ljavax/imageio/spi/ImageOutputStreamSpi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public canUseCacheFile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Ljava/io/OutputStream;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/io/OutputStream;

    if-eqz p2, :cond_0

    new-instance p0, Ljavax/imageio/stream/FileCacheImageOutputStream;

    invoke-direct {p0, p1, p3}, Ljavax/imageio/stream/FileCacheImageOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/File;)V

    return-object p0

    :cond_0
    new-instance p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;

    invoke-direct {p0, p1}, Ljavax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Service provider that instantiates an OutputStreamImageOutputStream from an OutputStream"

    return-object p0
.end method

.method public needsCacheFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
