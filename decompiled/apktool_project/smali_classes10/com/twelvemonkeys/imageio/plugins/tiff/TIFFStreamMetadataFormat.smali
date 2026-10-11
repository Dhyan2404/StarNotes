.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;
.super Ljavax/imageio/metadata/IIOMetadataFormatImpl;
.source "SourceFile"


# static fields
.field public static final SUN_NATIVE_STREAM_METADATA_FORMAT_NAME:Ljava/lang/String; = "com_sun_media_imageio_plugins_tiff_stream_1.0"

.field public static final a:Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;->a:Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v0, 0x1

    const-string v1, "com_sun_media_imageio_plugins_tiff_stream_1.0"

    invoke-direct {p0, v1, v0}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;-><init>(Ljava/lang/String;I)V

    const-string v0, "ByteOrder"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "ByteOrder"

    const-string v5, "value"

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;->a:Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFStreamMetadataFormat;

    return-object v0
.end method


# virtual methods
.method public canNodeAppear(Ljava/lang/String;Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
