.class public final Lcom/sunia/HTREnginev2/zqi;
.super Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const-class v1, Lcom/sunia/HTREnginev2/zqi;

    const-string v2, "JPEG"

    const-string v3, "jpeg"

    const-string v4, "JPG"

    const-string v5, "jpg"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/jpeg"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader"

    const-string v6, "com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReaderSpi"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageWriter"

    const-string v8, "com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageWriterSpi"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
