.class public Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;
.super Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;
.source "SourceFile"


# static fields
.field private static theInstance:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;-><init>()V

    const-string v0, "javax.imageio.plugins.tiff.TIFFStreamMetadataFormatResources"

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->resourceBaseName:Ljava/lang/String;

    const-string v0, "javax_imageio_tiff_stream_1.0"

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->rootName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ByteOrder"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v2, v6}, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    invoke-direct {v4, v2, v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;-><init>()V

    iput v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->dataType:I

    iput-boolean v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->isRequired:Z

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    const-string v1, "ByteOrder/value"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public canNodeAppear(Ljava/lang/String;Ljavax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
