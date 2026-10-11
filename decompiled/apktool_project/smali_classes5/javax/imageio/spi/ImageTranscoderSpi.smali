.class public abstract Ljavax/imageio/spi/ImageTranscoderSpi;
.super Ljavax/imageio/spi/IIOServiceProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/imageio/spi/IIOServiceProvider;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljavax/imageio/spi/IIOServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract createTranscoderInstance()Ljavax/imageio/ImageTranscoder;
.end method

.method public abstract getReaderServiceProviderName()Ljava/lang/String;
.end method

.method public abstract getWriterServiceProviderName()Ljava/lang/String;
.end method
