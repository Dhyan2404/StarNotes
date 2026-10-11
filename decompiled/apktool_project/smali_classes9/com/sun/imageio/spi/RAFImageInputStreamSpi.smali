.class public Lcom/sun/imageio/spi/RAFImageInputStreamSpi;
.super Ljavax/imageio/spi/ImageInputStreamSpi;
.source "SourceFile"


# static fields
.field private static final inputClass:Ljava/lang/Class;
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

    const-class v0, Ljava/io/RandomAccessFile;

    sput-object v0, Lcom/sun/imageio/spi/RAFImageInputStreamSpi;->inputClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "1.0"

    sget-object v1, Lcom/sun/imageio/spi/RAFImageInputStreamSpi;->inputClass:Ljava/lang/Class;

    const-string v2, "Oracle Corporation"

    invoke-direct {p0, v2, v0, v1}, Ljavax/imageio/spi/ImageInputStreamSpi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createInputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageInputStream;
    .locals 0

    instance-of p0, p1, Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Ljavax/imageio/stream/FileImageInputStream;

    check-cast p1, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Ljavax/imageio/stream/FileImageInputStream;-><init>(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input not a RandomAccessFile!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Service provider that instantiates a FileImageInputStream from a RandomAccessFile"

    return-object p0
.end method
