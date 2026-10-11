.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;
.super Ljavax/imageio/metadata/IIOMetadataFormatImpl;
.source "SourceFile"


# static fields
.field public static final SUN_NATIVE_IMAGE_METADATA_FORMAT_NAME:Ljava/lang/String; = "com_sun_media_imageio_plugins_tiff_image_1.0"

.field public static final a:Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;->a:Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "com_sun_media_imageio_plugins_tiff_image_1.0"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;->a:Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFMedataFormat;

    return-object v0
.end method


# virtual methods
.method public canNodeAppear(Ljava/lang/String;Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
