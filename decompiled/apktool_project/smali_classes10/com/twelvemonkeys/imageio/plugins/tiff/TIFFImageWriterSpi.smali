.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriterSpi;
.super Lcom/twelvemonkeys/imageio/spi/ImageWriterSpiBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/d7n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/d7n;-><init>()V

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/imageio/spi/ImageWriterSpiBase;-><init>(Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;)V

    return-void
.end method


# virtual methods
.method public canEncodeImage(Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public createWriterInstance(Ljava/lang/Object;)Ljavax/imageio/ImageWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    return-object p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Aldus/Adobe Tagged Image File Format (TIFF) image writer"

    return-object p0
.end method
