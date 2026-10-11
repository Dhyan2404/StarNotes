.class public Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;
.super Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;
.source "SourceFile"


# static fields
.field private static theInstance:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;-><init>()V

    const-string v1, "javax.imageio.plugins.tiff.TIFFImageMetadataFormatResources"

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->resourceBaseName:Ljava/lang/String;

    const-string v1, "javax_imageio_tiff_image_1.0"

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->rootName:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "TIFFIFD"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    const/4 v7, 0x4

    invoke-direct {v6, v5, v3, v7}, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TIFFField"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "parentTagNumber"

    const-string v8, "parentTagName"

    const-string v9, "tagSets"

    filled-new-array {v9, v6, v8}, [Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    invoke-direct {v8, v5, v6, v7}, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    invoke-direct {v4}, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;-><init>()V

    iput v2, v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->dataType:I

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->isRequired:Z

    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    const-string v8, "TIFFIFD/tagSets"

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    invoke-direct {v4}, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;-><init>()V

    const/4 v6, 0x2

    iput v6, v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->dataType:I

    iput-boolean v2, v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->isRequired:Z

    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    const-string v8, "TIFFIFD/parentTagNumber"

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    invoke-direct {v4}, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;-><init>()V

    iput v2, v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->dataType:I

    iput-boolean v2, v4, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->isRequired:Z

    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    const-string v8, "TIFFIFD/parentTagName"

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "TIFFByte"

    const-string v10, "TIFFAscii"

    const-string v11, "TIFFShort"

    const-string v12, "TIFFSShort"

    const-string v13, "TIFFLong"

    const-string v14, "TIFFSLong"

    const-string v15, "TIFFRational"

    const-string v16, "TIFFSRational"

    const-string v17, "TIFFFloat"

    const-string v18, "TIFFDouble"

    const-string v19, "TIFFUndefined"

    filled-new-array/range {v9 .. v19}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "description"

    const-string v8, "value"

    filled-new-array {v8, v6}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    invoke-direct {v9}, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;-><init>()V

    new-instance v10, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    invoke-direct {v10}, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;-><init>()V

    move v11, v2

    :goto_0
    const-string v12, "s"

    const-string v13, "TIFFUndefined"

    const/16 v14, 0xb

    if-ge v11, v14, :cond_4

    aget-object v14, v4, v11

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    aget-object v14, v4, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    invoke-direct {v15, v14, v3, v7}, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v4, v11

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    aget-object v5, v4, v11

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v4, v11

    const-string v7, "TIFFAscii"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v4, v11

    const-string v7, "TIFFRational"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v4, v11

    const-string v7, "TIFFSRational"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v4, v11

    const-string v7, "TIFFFloat"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v4, v11

    const-string v7, "TIFFDouble"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    move-object v7, v8

    :goto_2
    new-instance v12, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    invoke-direct {v12, v3, v7, v2}, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    aget-object v13, v4, v11

    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v4, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v4, v11

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/description"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x15

    new-array v3, v3, [Ljava/lang/String;

    :goto_3
    if-ge v2, v14, :cond_6

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, v4, v2

    aput-object v6, v3, v5

    aget-object v6, v4, v2

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const-string v2, "number"

    const-string v4, "name"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v2, v5}, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->elementInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->isRequired:Z

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    const-string v3, "TIFFField/number"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;-><init>()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFMetadataFormat;->attrInfoMap:Ljava/util/Map;

    const-string v2, "TIFFField/name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormat;
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
