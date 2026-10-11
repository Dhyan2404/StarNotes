.class public final Lcom/sunia/HTREnginev2/d7n;
.super Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-class v1, Lcom/sunia/HTREnginev2/d7n;

    const-string v2, "TIF"

    const-string v3, "tiff"

    const-string v4, "TIFF"

    const-string v5, "tif"

    filled-new-array {v3, v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/tiff"

    const-string v5, "image/x-tiff"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.twelvemonkeys.imageio.plugins.tiff.TIFFImageReader"

    const-string v6, "com.twelvemonkeys.imageio.plugins.tiff.TIFFImageReaderSpi"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.twelvemonkeys.imageio.plugins.tiff.TIFFImageWriter"

    const-string v8, "com.twelvemonkeys.imageio.plugins.tiff.TIFFImageWriterSpi"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "com_sun_media_imageio_plugins_tiff_stream_1.0"

    const-string v11, "com.twelvemonkeys.imageio.plugins.tiff.TIFFStreamMetadataFormat"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "com_sun_media_imageio_plugins_tiff_image_1.0"

    const-string v16, "com.twelvemonkeys.imageio.plugins.tiff.TIFFMedataFormat"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
