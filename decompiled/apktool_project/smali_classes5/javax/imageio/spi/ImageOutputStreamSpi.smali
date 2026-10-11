.class public abstract Ljavax/imageio/spi/ImageOutputStreamSpi;
.super Ljavax/imageio/spi/IIOServiceProvider;
.source "SourceFile"


# instance fields
.field protected outputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/imageio/spi/IIOServiceProvider;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljavax/imageio/spi/IIOServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Ljavax/imageio/spi/ImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public canUseCacheFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public createOutputStreamInstance(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ljavax/imageio/spi/ImageOutputStreamSpi;->createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public abstract createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getOutputClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Ljavax/imageio/spi/ImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    return-object p0
.end method

.method public needsCacheFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
