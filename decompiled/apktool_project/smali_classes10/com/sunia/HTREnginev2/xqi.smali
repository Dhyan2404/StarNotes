.class public final Lcom/sunia/HTREnginev2/xqi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "javax_imageio_jpeg_image_1.0"


# instance fields
.field public final a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    return-void
.end method


# virtual methods
.method public a(Ljavax/imageio/metadata/IIOMetadata;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->w(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "javax_imageio_jpeg_image_1.0"

    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v6, "JPEGvariety"

    invoke-virtual {v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "markerSequence"

    invoke-virtual {v5, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v9, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-virtual {v9}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->y()Lcom/sunia/HTREnginev2/tqi;

    move-result-object v9

    iget-object v10, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-virtual {v10}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->z()Lcom/sunia/HTREnginev2/vqi;

    move-result-object v10

    iget-object v11, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-virtual {v11}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->v()Lcom/sunia/HTREnginev2/d9;

    move-result-object v15

    iget-object v11, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getEmbeddedICCProfile(Z)Ljava/awt/color/ICC_Profile;

    move-result-object v11

    iget-object v12, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-virtual {v12}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->A()Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object v13

    const-string v12, "JFXX"

    const/4 v4, 0x3

    if-eqz v9, :cond_7

    invoke-virtual {v13}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v7

    if-eq v7, v14, :cond_1

    invoke-virtual {v13}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v7

    if-ne v7, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    iget v7, v13, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-string v9, "Incompatible JFIF marker segment in stream. SOF%d has %d color components, JFIF allows only 1 or 3 components. Ignoring JFIF marker."

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    :goto_0
    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "app0JFIF"

    invoke-direct {v7, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v4, v9, Lcom/sunia/HTREnginev2/tqi;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v14, "majorVersion"

    invoke-virtual {v7, v14, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v9, Lcom/sunia/HTREnginev2/tqi;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v14, "minorVersion"

    invoke-virtual {v7, v14, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v9, Lcom/sunia/HTREnginev2/tqi;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v14, "resUnits"

    invoke-virtual {v7, v14, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v9, Lcom/sunia/HTREnginev2/tqi;->g:I

    const/4 v14, 0x1

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v14, "Xdensity"

    invoke-virtual {v7, v14, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v9, Lcom/sunia/HTREnginev2/tqi;->h:I

    const/4 v14, 0x1

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v14, "Ydensity"

    invoke-virtual {v7, v14, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v9, Lcom/sunia/HTREnginev2/tqi;->i:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v14, "thumbWidth"

    invoke-virtual {v7, v14, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v9, Lcom/sunia/HTREnginev2/tqi;->j:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v9, "thumbHeight"

    invoke-virtual {v7, v9, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz v11, :cond_2

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v6, "app2ICC"

    invoke-direct {v4, v6}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljavax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v10, :cond_6

    new-instance v6, Ljavax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v6, v12}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v11, "app0JFXX"

    invoke-direct {v7, v11}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v11, v10, Lcom/sunia/HTREnginev2/vqi;->d:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v18, v4

    const-string v4, "extensionCode"

    invoke-virtual {v7, v4, v11}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/wqi;

    const/16 v19, 0x0

    iget-object v11, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-virtual {v11}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->C()Ljavax/imageio/ImageReader;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v11, v4

    move-object/from16 v23, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v20

    move-object/from16 v24, v14

    move/from16 v14, v21

    move-object/from16 v25, v15

    move/from16 v15, v22

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/sunia/HTREnginev2/wqi;-><init>(Lcom/sunia/HTREnginev2/ohn;Ljavax/imageio/ImageReader;IILcom/sunia/HTREnginev2/vqi;)V

    iget v10, v10, Lcom/sunia/HTREnginev2/vqi;->d:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_5

    const/16 v11, 0x11

    if-eq v10, v11, :cond_4

    const/16 v11, 0x13

    if-eq v10, v11, :cond_3

    iget-object v4, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Unknown JFXX extension code: %d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v10, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v11, "JFIFthumbRGB"

    invoke-direct {v10, v11}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/wqi;->b()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v24

    invoke-virtual {v10, v12, v11}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/wqi;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v9, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_4
    move-object/from16 v12, v24

    new-instance v10, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v11, "JFIFthumbPalette"

    invoke-direct {v10, v11}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/wqi;->b()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/wqi;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v9, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_5
    new-instance v9, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v10, "JFIFthumbJPEG"

    invoke-direct {v9, v10}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/wqi;->k()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v7, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_2
    invoke-virtual {v6, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    move/from16 v18, v4

    move-object/from16 v23, v12

    move-object/from16 v19, v13

    move-object/from16 v25, v15

    const/4 v14, 0x0

    :goto_3
    move v4, v14

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    move-object/from16 v23, v12

    move-object/from16 v19, v13

    move-object/from16 v25, v15

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_5
    const/4 v6, 0x4

    move-object/from16 v7, v25

    if-eqz v7, :cond_b

    iget v9, v7, Lcom/sunia/HTREnginev2/d9;->g:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    invoke-virtual/range {v19 .. v19}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v9

    if-lt v9, v6, :cond_8

    goto :goto_6

    :cond_8
    const/4 v11, 0x1

    const/4 v12, 0x3

    goto :goto_7

    :cond_9
    :goto_6
    iget v9, v7, Lcom/sunia/HTREnginev2/d9;->g:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_c

    invoke-virtual/range {v19 .. v19}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v9

    const/4 v12, 0x3

    if-ge v9, v12, :cond_c

    :goto_7
    iget-object v9, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    new-array v12, v12, [Ljava/lang/Object;

    iget v7, v7, Lcom/sunia/HTREnginev2/d9;->g:I

    if-ne v7, v10, :cond_a

    const-string v7, "YCCK/CMYK"

    goto :goto_8

    :cond_a
    const-string v7, "YCC/RGB"

    :goto_8
    const/4 v13, 0x0

    aput-object v7, v12, v13

    move-object/from16 v7, v19

    iget v13, v7, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit8 v13, v13, 0xf

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v10

    const-string v7, "Invalid Adobe App14 marker. Indicates %s data, but SOF%d has %d color component(s). Ignoring Adobe App14 marker."

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const-string v7, "app14Adobe"

    invoke-virtual {v5, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    sub-int/2addr v9, v11

    :goto_9
    if-ltz v9, :cond_c

    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    :cond_b
    const/4 v11, 0x1

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v17, 0x0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/HTREnginev2/gd;

    iget v9, v7, Lcom/sunia/HTREnginev2/sdm;->a:I

    const v10, 0xffe0

    if-ne v9, v10, :cond_d

    const-string v9, "JFIF"

    iget-object v12, v7, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v14, :cond_d

    move-object/from16 v10, v23

    goto :goto_b

    :cond_d
    iget v9, v7, Lcom/sunia/HTREnginev2/sdm;->a:I

    if-ne v9, v10, :cond_e

    iget-object v9, v7, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    move-object/from16 v10, v23

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v4, :cond_f

    goto :goto_b

    :cond_e
    move-object/from16 v10, v23

    :cond_f
    iget v9, v7, Lcom/sunia/HTREnginev2/sdm;->a:I

    const v12, 0xffe1

    if-ne v9, v12, :cond_10

    const-string v9, "Exif"

    iget-object v12, v7, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_b

    :cond_10
    iget v9, v7, Lcom/sunia/HTREnginev2/sdm;->a:I

    const v12, 0xffe2

    if-ne v9, v12, :cond_11

    const-string v9, "ICC_PROFILE"

    iget-object v12, v7, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v18, :cond_11

    goto :goto_b

    :cond_11
    iget v9, v7, Lcom/sunia/HTREnginev2/sdm;->a:I

    const v12, 0xffee

    if-ne v9, v12, :cond_12

    const-string v9, "Adobe"

    iget-object v12, v7, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    :goto_b
    move-object/from16 v23, v10

    goto :goto_a

    :cond_12
    new-instance v9, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v12, "unknown"

    invoke-direct {v9, v12}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v13, v7, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "MarkerTag"

    invoke-virtual {v9, v15, v13}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v7, Lcom/sunia/HTREnginev2/gd;->c:[B

    invoke-virtual {v9, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    if-nez v17, :cond_14

    invoke-virtual {v8, v12}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_13

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v7, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_c

    :cond_13
    invoke-virtual {v8}, Ljavax/imageio/metadata/IIOMetadataNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_c

    :cond_14
    move-object/from16 v7, v17

    :goto_c
    invoke-virtual {v8, v9, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v17, v7

    goto :goto_b

    :cond_15
    const-string v2, "sof"

    invoke-virtual {v8, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_16

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v13, 0x0

    :goto_d
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v13, v4, :cond_16

    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v7, "componentId"

    invoke-virtual {v0, v4, v7}, Lcom/sunia/HTREnginev2/xqi;->b(Ljavax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_16
    const-string v2, "sos"

    invoke-virtual {v8, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v13, 0x0

    :goto_e
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v13, v4, :cond_18

    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v7, 0x0

    :goto_f
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v7, v9, :cond_17

    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v10, "componentSelector"

    invoke-virtual {v0, v9, v10}, Lcom/sunia/HTREnginev2/xqi;->b(Ljavax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_18
    const-string v2, "dht"

    invoke-virtual {v8, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v13, 0x0

    :goto_10
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v13, v7, :cond_1c

    invoke-interface {v4, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v9, v11, :cond_19

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v7, v0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    const-string v8, "Metadata contains empty dht node. Ignoring."

    invoke-virtual {v7, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_12

    :cond_19
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-le v9, v6, :cond_1b

    new-instance v9, Ljavax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v9, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v10, v9, v12}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    sub-int/2addr v10, v11

    :goto_11
    if-ltz v10, :cond_1b

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    const-string v14, "class"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v7, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v9}, Ljavax/imageio/metadata/IIOMetadataNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-virtual {v9, v12, v14}, Ljavax/imageio/metadata/IIOMetadataNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1a
    add-int/lit8 v10, v10, -0x1

    goto :goto_11

    :cond_1b
    :goto_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_1c
    :try_start_0
    invoke-virtual {v1, v3, v5}, Ljavax/imageio/metadata/IIOMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/imageio/metadata/IIOInvalidTreeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-boolean v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/twelvemonkeys/xml/XMLSerializer;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "file.encoding"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v7}, Lcom/twelvemonkeys/xml/XMLSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Node;Z)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-- 8< --"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/twelvemonkeys/xml/XMLSerializer;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/twelvemonkeys/xml/XMLSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v3}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Node;Z)V

    :cond_1d
    throw v2
.end method

.method public final b(Ljavax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    int-to-byte v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "scanComponentSpec"

    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadataNode;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad SOS component selector: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xqi;->a:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad SOF component id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
