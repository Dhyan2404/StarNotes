.class public Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;
.super Ljavax/imageio/metadata/IIOMetadata;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final debug:Z


# instance fields
.field private hasAlpha:Z

.field private inThumb:Z

.field final isStream:Z

.field markerSequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/imageio/plugins/jpeg/MarkerSegment;",
            ">;"
        }
    .end annotation
.end field

.field private resetSequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/imageio/plugins/jpeg/MarkerSegment;",
            ">;"
        }
    .end annotation
.end field

.field private transparencyDone:Z


# direct methods
.method public constructor <init>(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 90
    invoke-direct {v0, v2, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZ)V

    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 91
    fill-array-data v3, :array_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x0

    if-eqz v1, :cond_8

    .line 92
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getDestinationType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v9, p3

    .line 93
    invoke-virtual {v9, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    move-object v8, v7

    .line 94
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageWriteParam;->canWriteProgressive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 95
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageWriteParam;->getProgressiveMode()I

    move-result v9

    if-ne v9, v5, :cond_1

    move v10, v2

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v2

    move v10, v5

    .line 96
    :goto_0
    instance-of v11, v1, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    if-eqz v11, :cond_5

    .line 97
    move-object v11, v1

    check-cast v11, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    .line 98
    invoke-virtual {v11}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->areTablesSet()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 99
    invoke-virtual {v11}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getDCHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v10

    array-length v10, v10

    if-gt v10, v4, :cond_3

    .line 100
    invoke-virtual {v11}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getACHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v10

    array-length v10, v10

    if-le v10, v4, :cond_2

    goto :goto_1

    :cond_2
    move v10, v2

    move v12, v10

    move v13, v12

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v2

    move v13, v10

    move v12, v5

    goto :goto_2

    :cond_4
    move v12, v2

    move v13, v5

    :goto_2
    if-nez v9, :cond_6

    .line 101
    invoke-virtual {v11}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getOptimizeHuffmanTables()Z

    move-result v11

    if-eqz v11, :cond_6

    move v10, v2

    goto :goto_3

    :cond_5
    move v12, v2

    move v13, v5

    .line 102
    :cond_6
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 103
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v11

    if-ne v11, v4, :cond_7

    .line 104
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageWriteParam;->getCompressionQuality()F

    move-result v6

    :cond_7
    move v1, v6

    move v6, v12

    move/from16 v17, v10

    move v10, v9

    move/from16 v9, v17

    goto :goto_4

    :cond_8
    move v10, v2

    move v9, v5

    move v13, v9

    move v1, v6

    move-object v8, v7

    move v6, v10

    :goto_4
    const/4 v12, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x3

    if-eqz v8, :cond_11

    .line 105
    invoke-virtual {v8}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v7

    .line 106
    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v8

    .line 107
    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v11

    if-eq v11, v8, :cond_9

    move v11, v5

    goto :goto_5

    :cond_9
    move v11, v2

    .line 108
    :goto_5
    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v16

    .line 109
    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v7

    .line 110
    invoke-virtual {v7}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v4

    if-eq v4, v15, :cond_e

    if-eq v4, v14, :cond_c

    if-eq v4, v12, :cond_a

    :goto_6
    move v4, v2

    move v11, v4

    move v12, v11

    move v14, v12

    goto :goto_7

    :cond_a
    if-eqz v11, :cond_b

    goto :goto_6

    :cond_b
    move v4, v2

    move v12, v4

    move v14, v12

    move v11, v5

    goto :goto_7

    :cond_c
    const/16 v4, 0x52

    aput-byte v4, v3, v2

    const/16 v4, 0x47

    aput-byte v4, v3, v5

    const/16 v4, 0x42

    const/4 v11, 0x2

    aput-byte v4, v3, v11

    if-eqz v16, :cond_d

    const/16 v4, 0x41

    aput-byte v4, v3, v15

    :cond_d
    move v4, v2

    move v11, v4

    move v14, v11

    move v12, v5

    goto :goto_7

    :cond_e
    if-eqz v11, :cond_10

    if-nez v16, :cond_f

    move v11, v2

    move v12, v5

    move v14, v12

    const/4 v4, 0x2

    goto :goto_7

    :cond_f
    move v4, v2

    move v11, v4

    move v12, v11

    move v14, v5

    goto :goto_7

    :cond_10
    move v4, v2

    move v12, v4

    move v11, v5

    move v14, v11

    :goto_7
    move/from16 v16, v11

    move v11, v8

    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_11
    if-eqz p1, :cond_1e

    .line 111
    invoke-virtual/range {p1 .. p1}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v8

    .line 113
    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v7

    if-eq v7, v8, :cond_12

    move v7, v5

    goto :goto_8

    :cond_12
    move v7, v2

    .line 114
    :goto_8
    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v11

    .line 115
    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v5

    if-eq v5, v15, :cond_1b

    const/16 v15, 0x9

    if-eq v5, v15, :cond_1a

    const/16 v15, 0xd

    if-eq v5, v15, :cond_17

    if-eq v5, v14, :cond_15

    if-eq v5, v12, :cond_13

    :goto_9
    move v5, v2

    move v14, v5

    move/from16 v16, v14

    move-object v7, v4

    move v11, v8

    const/4 v12, 0x1

    :goto_a
    move/from16 v4, v16

    goto/16 :goto_d

    :cond_13
    if-eqz v7, :cond_14

    goto :goto_9

    :cond_14
    move v5, v2

    move v14, v5

    move-object v7, v4

    move v11, v8

    const/4 v12, 0x1

    const/16 v16, 0x1

    move v4, v14

    goto/16 :goto_d

    :cond_15
    if-eqz v11, :cond_16

    move v5, v2

    move/from16 v16, v5

    move-object v7, v4

    move v11, v8

    const/4 v12, 0x1

    const/4 v14, 0x1

    goto :goto_a

    :cond_16
    const/4 v12, 0x1

    goto :goto_c

    :cond_17
    const/16 v5, 0x3ea

    .line 117
    invoke-static {v5}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x59

    aput-byte v5, v3, v2

    const/16 v5, 0x43

    const/4 v12, 0x1

    aput-byte v5, v3, v12

    const/16 v5, 0x63

    const/4 v14, 0x2

    aput-byte v5, v3, v14

    if-eqz v11, :cond_18

    const/16 v5, 0x41

    const/4 v7, 0x3

    aput-byte v5, v3, v7

    :cond_18
    move/from16 v16, v2

    move-object v7, v4

    move v11, v8

    move v5, v12

    move v14, v5

    goto :goto_a

    :cond_19
    const/4 v12, 0x1

    move v5, v2

    move v14, v5

    move/from16 v16, v14

    move-object v7, v4

    move v11, v8

    goto :goto_a

    :cond_1a
    const/4 v12, 0x1

    const/4 v14, 0x2

    :goto_b
    move/from16 v16, v2

    move-object v7, v4

    move v11, v8

    move v5, v12

    move v4, v14

    move v14, v5

    goto :goto_d

    :cond_1b
    const/4 v12, 0x1

    const/4 v14, 0x2

    if-eqz v7, :cond_1d

    if-nez v11, :cond_1c

    goto :goto_b

    :cond_1c
    move v5, v2

    move/from16 v16, v5

    move-object v7, v4

    move v11, v8

    move v14, v12

    goto :goto_a

    :cond_1d
    :goto_c
    move v5, v2

    move-object v7, v4

    move v11, v8

    move v14, v12

    move/from16 v16, v14

    move v4, v5

    goto :goto_d

    :cond_1e
    move v12, v5

    move v4, v2

    move v5, v4

    move v11, v5

    move v14, v12

    move/from16 v16, v14

    :goto_d
    if-eqz v16, :cond_1f

    .line 118
    invoke-static {v7}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isNonStandardICC(Ljava/awt/color/ColorSpace;)Z

    move-result v8

    if-eqz v8, :cond_1f

    move v2, v12

    :cond_1f
    if-eqz v16, :cond_20

    .line 119
    new-instance v8, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v8}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>()V

    .line 120
    iget-object v12, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_20

    .line 121
    :try_start_0
    check-cast v7, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v8, v7}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->addICC(Ljava/awt/color/ICC_ColorSpace;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_20
    if-eqz v5, :cond_21

    .line 122
    iget-object v2, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v5, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-direct {v5, v4}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;-><init>(I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    if-eqz v13, :cond_22

    .line 123
    iget-object v2, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v4, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {v4, v1, v14}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;-><init>(FZ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz v9, :cond_23

    .line 124
    iget-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-direct {v2, v14}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;-><init>(Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_23
    iget-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    move-object v4, v2

    move v5, v10

    move v7, v14

    move-object v8, v3

    move v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;-><init>(ZZZ[BI)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_24

    .line 126
    iget-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {v2, v14, v3, v11}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;-><init>(Z[BI)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isConsistent()Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    .line 128
    :cond_25
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Default image metadata is inconsistent"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Ljavax/imageio/ImageWriteParam;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 3

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZ)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 76
    instance-of v2, p1, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    if-eqz v2, :cond_1

    .line 77
    check-cast p1, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    .line 78
    invoke-virtual {p1}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->areTablesSet()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 79
    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance p2, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-virtual {v1}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getQTables()[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;-><init>([Ljavax/imageio/plugins/jpeg/JPEGQTable;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance p2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    .line 81
    invoke-virtual {v1}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getDCHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v0

    .line 82
    invoke-virtual {v1}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->getACHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;-><init>([Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;)V

    .line 83
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-static {}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultQTables()[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;-><init>([Ljavax/imageio/plugins/jpeg/JPEGQTable;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-static {p2}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultHuffmanTables(Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object p2

    .line 86
    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEG;->getDefaultHuffmanTables(Z)[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;-><init>([Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;)V

    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_1
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isConsistent()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Default stream metadata is inconsistent"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ZZ)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "javax_imageio_jpeg_image_1.0"

    const-string v3, "com.sun.imageio.plugins.jpeg.JPEGImageMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Ljavax/imageio/metadata/IIOMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->resetSequence:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->inThumb:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    .line 5
    iput-boolean p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->inThumb:Z

    .line 6
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz p1, :cond_0

    const-string p1, "javax_imageio_jpeg_stream_1.0"

    .line 7
    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    const-string p1, "com.sun.imageio.plugins.jpeg.JPEGStreamMetadataFormat"

    .line 8
    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatClassName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(ZZLjavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 9
    invoke-direct/range {p0 .. p2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZ)V

    .line 10
    new-instance v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    .line 12
    iget-object v4, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    aget-byte v5, v4, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_19

    const/4 v5, 0x1

    aget-byte v7, v4, v5

    and-int/2addr v7, v6

    const/16 v8, 0xd8

    if-ne v7, v8, :cond_19

    const/4 v7, 0x2

    aget-byte v4, v4, v7

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_19

    .line 13
    iget v4, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v4, v7

    iput v4, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    .line 14
    iput v7, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    const/4 v4, 0x0

    :goto_0
    move-object v7, v4

    :cond_0
    if-nez v3, :cond_17

    .line 15
    invoke-virtual {v2, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    .line 16
    invoke-virtual {v2, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->scanForFF(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Z

    .line 17
    iget-object v8, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v9, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v8, v8, v9

    and-int/2addr v8, v6

    if-eqz v8, :cond_16

    const/16 v10, 0xc4

    if-eq v8, v10, :cond_15

    const/16 v10, 0xdd

    if-eq v8, v10, :cond_14

    const/16 v10, 0xe0

    const-class v11, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/16 v12, 0x49

    const/16 v13, 0x8

    const/16 v14, 0x46

    if-eq v8, v10, :cond_b

    const/16 v10, 0xe2

    if-eq v8, v10, :cond_7

    const/16 v10, 0xee

    if-eq v8, v10, :cond_4

    const/16 v10, 0xfe

    if-eq v8, v10, :cond_3

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    .line 18
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 19
    invoke-virtual {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->loadData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 20
    iput-boolean v5, v7, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->unknown:Z

    goto/16 :goto_1

    .line 21
    :pswitch_0
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    :pswitch_1
    if-nez p1, :cond_1

    .line 22
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    .line 23
    :cond_1
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "SOS not permitted in stream metadata"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    add-int/lit8 v9, v9, 0x1

    .line 24
    iput v9, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    .line 25
    iget v3, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v3, v5

    iput v3, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    move v3, v5

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v9, v9, 0x1

    .line 26
    iput v9, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    .line 27
    iget v8, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v8, v5

    iput v8, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    goto/16 :goto_1

    :pswitch_4
    if-nez p1, :cond_2

    .line 28
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    .line 29
    :cond_2
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "SOF not permitted in stream metadata"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_3
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    .line 31
    :cond_4
    invoke-virtual {v2, v13}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    .line 32
    iget-object v7, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v8, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v9, v8, 0x3

    aget-byte v9, v7, v9

    const/16 v10, 0x41

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v8, 0x4

    aget-byte v9, v7, v9

    const/16 v10, 0x64

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v8, 0x5

    aget-byte v9, v7, v9

    const/16 v10, 0x6f

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v8, 0x6

    aget-byte v9, v7, v9

    const/16 v10, 0x62

    if-ne v9, v10, :cond_6

    add-int/lit8 v8, v8, 0x7

    aget-byte v7, v7, v8

    const/16 v8, 0x65

    if-ne v7, v8, :cond_6

    if-nez p1, :cond_5

    .line 33
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    .line 34
    :cond_5
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Adobe APP14 markers not permitted in stream metadata"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_6
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 36
    invoke-virtual {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->loadData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    :cond_7
    const/16 v8, 0xf

    .line 37
    invoke-virtual {v2, v8}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    .line 38
    iget-object v8, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v9, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v10, v9, 0x3

    aget-byte v10, v8, v10

    if-ne v10, v12, :cond_a

    add-int/lit8 v10, v9, 0x4

    aget-byte v10, v8, v10

    const/16 v13, 0x43

    if-ne v10, v13, :cond_a

    add-int/lit8 v10, v9, 0x5

    aget-byte v10, v8, v10

    if-ne v10, v13, :cond_a

    add-int/lit8 v10, v9, 0x6

    aget-byte v10, v8, v10

    const/16 v13, 0x5f

    if-ne v10, v13, :cond_a

    add-int/lit8 v10, v9, 0x7

    aget-byte v10, v8, v10

    const/16 v13, 0x50

    if-ne v10, v13, :cond_a

    add-int/lit8 v10, v9, 0x8

    aget-byte v10, v8, v10

    const/16 v13, 0x52

    if-ne v10, v13, :cond_a

    add-int/lit8 v10, v9, 0x9

    aget-byte v10, v8, v10

    const/16 v13, 0x4f

    if-ne v10, v13, :cond_a

    add-int/lit8 v10, v9, 0xa

    aget-byte v10, v8, v10

    if-ne v10, v14, :cond_a

    add-int/lit8 v10, v9, 0xb

    aget-byte v10, v8, v10

    if-ne v10, v12, :cond_a

    add-int/lit8 v10, v9, 0xc

    aget-byte v10, v8, v10

    const/16 v12, 0x4c

    if-ne v10, v12, :cond_a

    add-int/lit8 v10, v9, 0xd

    aget-byte v10, v8, v10

    const/16 v12, 0x45

    if-ne v10, v12, :cond_a

    add-int/lit8 v9, v9, 0xe

    aget-byte v8, v8, v9

    if-nez v8, :cond_a

    if-nez p1, :cond_9

    .line 39
    invoke-virtual {v0, v11, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v8

    check-cast v8, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    if-nez v8, :cond_8

    .line 40
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 41
    invoke-virtual {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->loadData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    .line 42
    :cond_8
    invoke-virtual {v8, v2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->addICC(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    .line 43
    :cond_9
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "ICC profiles not permitted in stream metadata"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_a
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 45
    invoke-virtual {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->loadData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    .line 46
    :cond_b
    invoke-virtual {v2, v13}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    .line 47
    iget-object v8, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    .line 48
    iget v9, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v10, v9, 0x3

    .line 49
    aget-byte v10, v8, v10

    const/16 v13, 0x4a

    if-ne v10, v13, :cond_f

    add-int/lit8 v15, v9, 0x4

    aget-byte v15, v8, v15

    if-ne v15, v14, :cond_f

    add-int/lit8 v15, v9, 0x5

    aget-byte v15, v8, v15

    if-ne v15, v12, :cond_f

    add-int/lit8 v12, v9, 0x6

    aget-byte v12, v8, v12

    if-ne v12, v14, :cond_f

    add-int/lit8 v12, v9, 0x7

    aget-byte v12, v8, v12

    if-nez v12, :cond_f

    .line 50
    iget-boolean v8, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->inThumb:Z

    if-eqz v8, :cond_c

    .line 51
    invoke-virtual {v1, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->warningOccurred(I)V

    .line 52
    new-instance v8, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v8, v2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    :cond_c
    if-nez p1, :cond_e

    .line 53
    iget-object v7, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 54
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto/16 :goto_1

    .line 55
    :cond_d
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "JFIF APP0 must be first marker after SOI"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_e
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "JFIF not permitted in stream metadata"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-ne v10, v13, :cond_13

    add-int/lit8 v10, v9, 0x4

    .line 57
    aget-byte v10, v8, v10

    if-ne v10, v14, :cond_13

    add-int/lit8 v10, v9, 0x5

    aget-byte v10, v8, v10

    const/16 v12, 0x58

    if-ne v10, v12, :cond_13

    add-int/lit8 v10, v9, 0x6

    aget-byte v10, v8, v10

    if-ne v10, v12, :cond_13

    add-int/lit8 v9, v9, 0x7

    aget-byte v8, v8, v9

    if-nez v8, :cond_13

    if-nez p1, :cond_12

    .line 58
    iget-boolean v8, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->inThumb:Z

    if-nez v8, :cond_11

    .line 59
    invoke-virtual {v0, v11, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v8

    check-cast v8, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    if-eqz v8, :cond_10

    .line 60
    invoke-virtual {v8, v2, v1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->addJFXX(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    goto :goto_1

    .line 61
    :cond_10
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "JFXX encountered without prior JFIF!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_11
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "JFXX markers not allowed in JFIF JPEG thumbnail"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_12
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "JFXX not permitted in stream metadata"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_13
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 65
    invoke-virtual {v7, v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->loadData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto :goto_1

    .line 66
    :cond_14
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto :goto_1

    .line 67
    :cond_15
    new-instance v7, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-direct {v7, v2}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    goto :goto_1

    .line 68
    :cond_16
    iget v8, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v8, v5

    iput v8, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/lit8 v9, v9, 0x1

    .line 69
    iput v9, v2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    :goto_1
    if-eqz v7, :cond_0

    .line 70
    iget-object v8, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 71
    :cond_17
    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->pushBack()V

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isConsistent()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 73
    :cond_18
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Inconsistent metadata read from stream"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_19
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Image format error"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cloneSequence()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sun/imageio/plugins/jpeg/MarkerSegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private countScanBands()I
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v2, v1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    iget-object v1, v1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    iget v3, v3, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private static findIntegerRatio(F)Ljava/awt/Point;
    .locals 7

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3ba3d70a    # 0.005f

    cmpg-float v1, p0, v0

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    new-instance p0, Ljava/awt/Point;

    invoke-direct {p0, v3, v2}, Ljava/awt/Point;-><init>(II)V

    return-object p0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    new-instance p0, Ljava/awt/Point;

    invoke-direct {p0, v2, v3}, Ljava/awt/Point;-><init>(II)V

    return-object p0

    :cond_1
    float-to-double v1, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v4

    if-gez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p0, v1, p0

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, v2

    sub-float v4, p0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    :goto_1
    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    int-to-float v2, v3

    mul-float v4, v2, p0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v5, v4

    div-float/2addr v5, v2

    sub-float v2, p0, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/awt/Point;

    if-eqz v1, :cond_4

    invoke-direct {p0, v3, v2}, Ljava/awt/Point;-><init>(II)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/awt/Point;-><init>(II)V

    :goto_2
    return-object p0
.end method

.method private findLastUnknownMarkerSegmentPosition()I
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    iget-boolean v2, v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->unknown:Z

    if-ne v2, v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private findMarkerSegmentPosition(Ljava/lang/Class;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sun/imageio/plugins/jpeg/MarkerSegment;",
            ">;Z)I"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p0

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private insertAdobeMarkerSegment(Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;)V
    .locals 4

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findLastUnknownMarkerSegmentPosition()I

    move-result v3

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    if-eq v3, v0, :cond_2

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    add-int/2addr v3, v1

    invoke-interface {p0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private insertCOMMarkerSegment(Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;)V
    .locals 6

    const-class v0, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result v0

    const-class v2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-class v4, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-direct {p0, v4, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result v4

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    add-int/2addr v0, v3

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eq v4, v5, :cond_3

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    add-int/2addr v4, v3

    invoke-interface {p0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private isConsistent()Z
    .locals 8

    const-class v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const-class v2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {p0, v2, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const-class v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-virtual {p0, v3, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    iget-boolean v4, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez v4, :cond_8

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v5, v5

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->countScanBands()I

    move-result p0

    if-eqz p0, :cond_0

    if-eq p0, v5, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-eq v5, v1, :cond_1

    if-eq v5, v2, :cond_1

    move p0, v4

    :cond_1
    move v6, v4

    :cond_2
    :goto_1
    if-ge v6, v5, :cond_3

    iget-object v7, v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    add-int/lit8 v6, v6, 0x1

    if-eq v7, v6, :cond_2

    move p0, v4

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    if-ne v5, v1, :cond_4

    iget v0, v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    if-nez v0, :cond_7

    :cond_4
    if-ne v5, v2, :cond_5

    iget v0, v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, p0

    goto :goto_3

    :cond_6
    const-class v5, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-virtual {p0, v5, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    if-nez v0, :cond_7

    if-eqz p0, :cond_8

    :cond_7
    :goto_2
    move v1, v4

    :cond_8
    :goto_3
    return v1
.end method

.method private mergeAdobeNode(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const-class v0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->insertAdobeMarkerSegment(Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;)V

    :goto_0
    return-void
.end method

.method private mergeCOMNode(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->insertCOMMarkerSegment(Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;)V

    return-void
.end method

.method private mergeDHTNode(Lorg/w3c/dom/Node;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v3, v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    move p1, v3

    :goto_1
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge p1, v1, :cond_b

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string v7, "htableId"

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v5, v1

    move-object v6, v11

    invoke-static/range {v5 .. v10}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v12

    const-string v7, "class"

    const/4 v9, 0x1

    invoke-static/range {v5 .. v10}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v5

    const/4 v6, 0x0

    move v8, v2

    move v7, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    move v10, v3

    :goto_3
    iget-object v11, v9, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    iget-object v11, v9, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    iget v13, v11, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableID:I

    if-ne v12, v13, :cond_2

    iget v11, v11, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableClass:I

    if-ne v5, v11, :cond_2

    move-object v6, v9

    move v8, v10

    goto :goto_4

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    iget-object v5, v6, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-virtual {v6, v1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->getHtableFromNode(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    move-result-object v1

    invoke-interface {v5, v8, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    iget-object v6, v5, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-virtual {v5, v1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->getHtableFromNode(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    const-class p1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {p0, p1, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result p1

    const-class v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {p0, v1, v4}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result v1

    const-class v3, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {p0, v3, v4}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result v3

    if-eq p1, v2, :cond_8

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    add-int/2addr p1, v4

    invoke-interface {p0, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_8
    if-eq v1, v2, :cond_9

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_9
    if-eq v3, v2, :cond_a

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_a
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    return-void
.end method

.method private mergeDQTNode(Lorg/w3c/dom/Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v3, v2, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    :goto_1
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_b

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "qtableId"

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v5, v4

    invoke-static/range {v5 .. v10}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v5

    move v7, p1

    move v8, v2

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    move v10, p1

    :goto_3
    iget-object v11, v9, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    iget-object v11, v9, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    iget v11, v11, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    if-ne v5, v11, :cond_2

    move-object v6, v9

    move v8, v10

    goto :goto_4

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    iget-object v5, v6, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-virtual {v6, v4}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->getQtableFromNode(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    move-result-object v4

    invoke-interface {v5, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    iget-object v6, v5, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-virtual {v5, v4}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->getQtableFromNode(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    const-class p1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-direct {p0, p1, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result p1

    const-class v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {p0, v1, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result v1

    const-class v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {p0, v4, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result v3

    if-eq p1, v2, :cond_8

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_8
    if-eq v1, v2, :cond_9

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_9
    if-eq v3, v2, :cond_a

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_a
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    return-void
.end method

.method private mergeDRINode(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const-class v0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    const-class p1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {p0, p1, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result p1

    const-class v2, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {p0, v2, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eq v1, v2, :cond_2

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private mergeJFIFsubtree(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private mergeNativeTree(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v1, :cond_0

    const-string v1, "javax_imageio_jpeg_stream_1.0"

    goto :goto_0

    :cond_0
    const-string v1, "javax_imageio_jpeg_image_1.0"

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeJFIFsubtree(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeSequenceSubtree(Lorg/w3c/dom/Node;)V

    return-void

    :cond_1
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "JPEGvariety and markerSequence nodes must be present"

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_2
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid root node name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method

.method private mergeSOFNode(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const-class v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    const-class p1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {p0, p1, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private mergeSOSNode(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/4 v0, 0x1

    const-class v1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-virtual {p0, v1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-virtual {v0, p1, v2}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Can\'t merge SOS node into a tree with > 1 SOS node"

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private mergeSequenceSubtree(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dqt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeDQTNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_0
    const-string v3, "dht"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeDHTNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_1
    const-string v3, "dri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeDRINode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_2
    const-string v3, "com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeCOMNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_3
    const-string v3, "app14Adobe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeAdobeNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_4
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeUnknownNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_5
    const-string v3, "sof"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeSOFNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_6
    const-string v3, "sos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeSOSNode(Lorg/w3c/dom/Node;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid node: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_8
    return-void
.end method

.method private mergeStandardChromaNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/NodeList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->transparencyDone:Z

    if-nez v1, :cond_33

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorSpaceType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_16

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v9, v2, [B

    fill-array-data v9, :array_0

    const-string v3, "GRAY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x52

    const/4 v5, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_1

    move v3, v10

    move v6, v3

    move v12, v6

    move v1, v11

    move v2, v1

    goto/16 :goto_3

    :cond_1
    const-string v3, "YCbCr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    move v3, v10

    move v6, v3

    move v1, v11

    move v12, v1

    goto/16 :goto_3

    :cond_2
    const-string v3, "PhotoYCC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x2

    if-eqz v3, :cond_3

    const/16 v1, 0x59

    aput-byte v1, v9, v10

    const/16 v1, 0x43

    aput-byte v1, v9, v11

    const/16 v1, 0x63

    aput-byte v1, v9, v6

    move v2, v5

    move v1, v10

    move v12, v1

    move v3, v11

    move v6, v3

    goto/16 :goto_3

    :cond_3
    const-string v3, "RGB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aput-byte v4, v9, v10

    const/16 v1, 0x47

    aput-byte v1, v9, v11

    const/16 v1, 0x42

    aput-byte v1, v9, v6

    move v2, v5

    :goto_0
    move v1, v10

    move v6, v1

    move v12, v6

    move v3, v11

    goto/16 :goto_3

    :cond_4
    const-string v3, "XYZ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "Lab"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "Luv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "YxY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "HSV"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "HLS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "CMY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "3CLR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, "YCCK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v10

    move v3, v11

    move v12, v3

    goto :goto_3

    :cond_6
    const-string v3, "CMYK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    const-string v3, "4CLR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    :goto_1
    move v2, v5

    :goto_2
    move v1, v10

    move v3, v1

    move v6, v3

    move v12, v6

    :goto_3
    move v7, v10

    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_b

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Transparency"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-direct {v0, v13}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->wantAlpha(Lorg/w3c/dom/Node;)Z

    move-result v7

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    move v7, v10

    :goto_5
    if-eqz v7, :cond_d

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v9, v10

    if-ne v1, v4, :cond_c

    const/16 v1, 0x41

    aput-byte v1, v9, v5

    move v1, v10

    move v3, v1

    goto :goto_6

    :cond_c
    move v1, v10

    :cond_d
    :goto_6
    const-class v4, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {v0, v4, v11}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v4

    check-cast v4, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const-class v5, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-virtual {v0, v5, v11}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v5

    check-cast v5, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    const-class v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-virtual {v0, v7, v11}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v7

    check-cast v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const-class v8, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-virtual {v0, v8, v11}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    const/16 v8, 0xc2

    if-eqz v7, :cond_e

    iget v14, v7, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    if-ne v14, v8, :cond_e

    iget-object v14, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v14, v14

    if-eq v14, v2, :cond_e

    if-eqz v13, :cond_e

    return-void

    :cond_e
    if-nez v1, :cond_f

    if-eqz v4, :cond_f

    iget-object v14, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v4, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v4}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>()V

    invoke-interface {v1, v10, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_10
    if-eqz v3, :cond_12

    if-nez v5, :cond_11

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez v1, :cond_11

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-direct {v1, v6}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->insertAdobeMarkerSegment(Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;)V

    goto :goto_7

    :cond_11
    iput v6, v5, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    goto :goto_7

    :cond_12
    if-eqz v5, :cond_13

    iget-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_13
    :goto_7
    filled-new-array {v10, v11, v11, v10}, [I

    move-result-object v1

    filled-new-array {v10, v10, v10, v10}, [I

    move-result-object v3

    if-eqz v12, :cond_14

    goto :goto_8

    :cond_14
    move-object v1, v3

    :goto_8
    if-eqz v7, :cond_22

    iget-object v14, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    iget v3, v7, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    if-ne v3, v8, :cond_15

    move v15, v11

    goto :goto_9

    :cond_15
    move v15, v10

    :goto_9
    iget-object v8, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    new-instance v6, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const/4 v5, 0x0

    move-object v3, v6

    move v4, v15

    move-object v10, v6

    move v6, v12

    move v11, v7

    move-object v7, v9

    move/from16 v16, v12

    move-object v12, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;-><init>(ZZZ[BI)V

    invoke-interface {v12, v11, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    array-length v5, v14

    if-ge v4, v5, :cond_17

    aget-object v5, v14, v4

    iget v5, v5, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->QtableSelector:I

    aget v6, v1, v4

    if-eq v5, v6, :cond_16

    const/4 v3, 0x1

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    if-eqz v15, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    array-length v4, v14

    if-ge v2, v4, :cond_19

    aget-byte v4, v9, v2

    aget-object v5, v14, v2

    iget v5, v5, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-eq v4, v5, :cond_18

    const/4 v1, 0x1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v4, v2, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    if-eqz v4, :cond_1a

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    const/4 v4, 0x0

    :goto_c
    iget-object v5, v2, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v6, v5

    if-ge v4, v6, :cond_1a

    aget-object v5, v5, v4

    iget v5, v5, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    const/4 v6, 0x0

    :goto_d
    array-length v7, v14

    if-ge v6, v7, :cond_1c

    aget-object v7, v14, v6

    iget v7, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v7, v5, :cond_1b

    iget-object v7, v2, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    aget-object v7, v7, v4

    aget-byte v8, v9, v6

    iput v8, v7, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1d
    if-eqz v13, :cond_21

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    iget-object v6, v13, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v7, v6

    if-ge v5, v7, :cond_20

    aget-object v6, v6, v5

    iget v7, v6, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->dcHuffTable:I

    aget v8, v1, v5

    if-ne v7, v8, :cond_1e

    iget v6, v6, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->acHuffTable:I

    if-eq v6, v8, :cond_1f

    :cond_1e
    const/4 v4, 0x1

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_20
    iget-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    new-instance v6, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    move/from16 v10, v16

    invoke-direct {v6, v10, v9, v2}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;-><init>(Z[BI)V

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_21
    move/from16 v10, v16

    goto :goto_f

    :cond_22
    move v10, v12

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v1, :cond_23

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_10

    :cond_23
    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x0

    :goto_10
    if-eqz v3, :cond_2c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v5, v3, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    if-eqz v5, :cond_24

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    if-eqz v10, :cond_2c

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    iget-object v5, v5, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    iget v6, v6, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_27

    const/4 v3, 0x1

    goto :goto_12

    :cond_28
    if-nez v3, :cond_2c

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    iget-object v5, v5, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    iget v7, v6, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    if-nez v7, :cond_2a

    move-object v3, v6

    goto :goto_13

    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    iget-object v2, v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->getChromaForLuma(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;)Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    if-eqz v4, :cond_32

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v3, v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    if-eqz v3, :cond_2d

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    if-eqz v10, :cond_32

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v10, 0x0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    iget-object v2, v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    iget v3, v3, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableID:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_30

    move v10, v7

    goto :goto_15

    :cond_31
    const/4 v7, 0x1

    if-nez v10, :cond_32

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    sget-object v1, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCLuminance:Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-virtual {v0, v1, v7, v7}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->addHtable(Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    sget-object v1, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACLuminance:Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-virtual {v0, v1, v7, v7}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->addHtable(Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    :cond_32
    :goto_16
    return-void

    :cond_33
    new-instance v0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v1, "Transparency node must follow Chroma node"

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method private mergeStandardCompressionNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    return-void
.end method

.method private mergeStandardDataNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    return-void
.end method

.method private mergeStandardDimensionNode(Lorg/w3c/dom/Node;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v2, 0x0

    if-nez v0, :cond_6

    const-class v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-virtual {p0, v3, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v4, v4

    if-eq v4, v1, :cond_0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    :cond_0
    move v6, v1

    move v5, v2

    :cond_1
    :goto_0
    iget-object v7, v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v8, v7

    if-ge v5, v8, :cond_2

    aget-object v7, v7, v5

    iget v7, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    add-int/lit8 v5, v5, 0x1

    if-eq v7, v5, :cond_1

    move v6, v2

    goto :goto_0

    :cond_2
    const-class v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-virtual {p0, v3, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    if-eqz v3, :cond_5

    iget v3, v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    if-ne v4, v1, :cond_3

    move v1, v2

    :cond_3
    if-eq v3, v1, :cond_5

    :cond_4
    move v6, v2

    :cond_5
    if-eqz v6, :cond_6

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    move p1, v2

    :goto_1
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge p1, v1, :cond_a

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PixelAspectRatio"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "value"

    if-eqz v4, :cond_7

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findIntegerRatio(F)Ljava/awt/Point;

    move-result-object v1

    iput v2, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    iget v3, v1, Ljava/awt/Point;->x:I

    iget v1, v1, Ljava/awt/Point;->y:I

    iput v1, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    goto :goto_2

    :cond_7
    const-string v4, "HorizontalPixelSize"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_8

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v3, v1

    mul-double/2addr v3, v7

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    iput v6, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    iput v1, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    goto :goto_2

    :cond_8
    const-string v4, "VerticalPixelSize"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v3, v1

    mul-double/2addr v3, v7

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    iput v6, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    iput v1, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    :cond_9
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method private mergeStandardDocumentNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    return-void
.end method

.method private mergeStandardTextNode(Lorg/w3c/dom/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v3, "compression"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;

    invoke-direct {v3, v2}, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->insertCOMMarkerSegment(Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mergeStandardTransparencyNode(Lorg/w3c/dom/Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->transparencyDone:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->wantAlpha(Lorg/w3c/dom/Node;)Z

    move-result p1

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const-class v2, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-virtual {p0, v2, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    const-class v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-virtual {p0, v3, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const-class v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-virtual {p0, v4, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v4

    check-cast v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    if-eqz v3, :cond_0

    iget v5, v3, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    const/16 v6, 0xc2

    if-ne v5, v6, :cond_0

    return-void

    :cond_0
    if-eqz v3, :cond_b

    iget-object v5, v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v5, v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v1

    :goto_1
    if-eq v6, p1, :cond_b

    if-eqz p1, :cond_8

    add-int/2addr v5, v1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    iput v8, v2, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    :cond_4
    new-array p0, v5, [Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    move p1, v8

    :goto_2
    iget-object v0, v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v2, v0

    if-ge p1, v2, :cond_5

    aget-object v0, v0, p1

    aput-object v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    aget-object p1, v0, v8

    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    int-to-byte v0, v0

    if-le v0, v1, :cond_6

    const/16 v7, 0x41

    :cond_6
    int-to-byte v0, v7

    add-int/lit8 v1, v5, -0x1

    iget v2, p1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    iget p1, p1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->QtableSelector:I

    invoke-virtual {v3, v0, v2, p1}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->getComponentSpec(BII)Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    move-result-object p1

    aput-object p1, p0, v1

    iput-object p0, v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    new-array p0, v5, [Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    move p1, v8

    :goto_3
    iget-object v2, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v3, v2

    if-ge p1, v3, :cond_7

    aget-object v2, v2, p1

    aput-object v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v0, v8}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->getScanComponentSpec(BI)Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    move-result-object p1

    aput-object p1, p0, v1

    iput-object p0, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, -0x1

    new-array p0, v5, [Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    move p1, v8

    :goto_4
    if-ge p1, v5, :cond_9

    iget-object v0, v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-object v0, v0, p1

    aput-object v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    iput-object p0, v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    new-array p0, v5, [Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    :goto_5
    if-ge v8, v5, :cond_a

    iget-object p1, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    aget-object p1, p1, v8

    aput-object p1, p0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    iput-object p0, v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    :cond_b
    :goto_6
    return-void
.end method

.method private mergeStandardTree(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->transparencyDone:Z

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chroma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeStandardChromaNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/NodeList;)V

    goto :goto_1

    :cond_0
    const-string v3, "Compression"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeStandardCompressionNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_1
    const-string v3, "Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeStandardDataNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_2
    const-string v3, "Dimension"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeStandardDimensionNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_3
    const-string v3, "Document"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeStandardDocumentNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_4
    const-string v3, "Text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeStandardTextNode(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_5
    const-string v3, "Transparency"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeStandardTransparencyNode(Lorg/w3c/dom/Node;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid node: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_7
    return-void
.end method

.method private mergeUnknownNode(Lorg/w3c/dom/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findLastUnknownMarkerSegmentPosition()I

    move-result p1

    const-class v1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-class v4, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-direct {p0, v4, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegmentPosition(Ljava/lang/Class;Z)I

    move-result v4

    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    add-int/2addr p1, v2

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    if-eq v4, v5, :cond_3

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private setFromNativeTree(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->resetSequence:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->resetSequence:Ljava/util/List;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v1, :cond_1

    const-string v2, "javax_imageio_jpeg_stream_1.0"

    goto :goto_0

    :cond_1
    const-string v2, "javax_imageio_jpeg_image_1.0"

    :goto_0
    if-ne v0, v2, :cond_5

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "JPEGvariety and markerSequence nodes must be present"

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->setFromMarkerSequenceNode(Lorg/w3c/dom/Node;)V

    return-void

    :cond_5
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid root node name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method

.method private wantAlpha(Lorg/w3c/dom/Node;)Z
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const-string v0, "value"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->transparencyDone:Z

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->cloneSequence()Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    :cond_0
    iput-object v0, v1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->resetSequence:Ljava/util/List;

    return-object v1
.end method

.method public findMarkerSegment(I)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    .line 4
    iget v1, v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sun/imageio/plugins/jpeg/MarkerSegment;",
            ">;Z)",
            "Lcom/sun/imageio/plugins/jpeg/MarkerSegment;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 11
    :cond_2
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v0, :cond_0

    const-string v0, "javax_imageio_jpeg_stream_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->getNativeTree()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "javax_imageio_jpeg_image_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->getNativeTree()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardTree()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported format name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null formatName!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNativeTree()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 6

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v1, :cond_0

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "javax_imageio_jpeg_stream_1.0"

    invoke-direct {p0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "markerSequence"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->inThumb:Z

    if-nez v2, :cond_2

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "javax_imageio_jpeg_image_1.0"

    invoke-direct {v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "JPEGvariety"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-class v4, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object p0, v2

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public getStandardChromaNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->hasAlpha:Z

    const-class v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "Chroma"

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v6, "ColorSpaceType"

    invoke-direct {v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v6, v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v6, v6

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "NumChannels"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v8, "value"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-class v7, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {v0, v7, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v7

    const-string v8, "GRAY"

    const-string v9, "YCbCr"

    const-string v10, "name"

    if-eqz v7, :cond_2

    if-ne v6, v3, :cond_1

    invoke-virtual {v5, v10, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v10, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4

    :cond_2
    const-class v7, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-virtual {v0, v7, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v7

    check-cast v7, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    const-string v11, "CMYK"

    const-string v12, "RGB"

    const/4 v13, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eqz v7, :cond_8

    iget v0, v7, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v13, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "YCCK"

    invoke-virtual {v5, v10, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v10, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-ne v6, v15, :cond_6

    invoke-virtual {v5, v10, v12}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-ne v6, v14, :cond_7

    invoke-virtual {v5, v10, v11}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-object v4

    :cond_8
    if-ge v6, v15, :cond_a

    invoke-virtual {v5, v10, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v6, v13, :cond_9

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->hasAlpha:Z

    :cond_9
    return-object v4

    :cond_a
    iget-object v7, v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-object v8, v7, v1

    iget v1, v8, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    aget-object v14, v7, v3

    iget v14, v14, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    aget-object v7, v7, v13

    iget v7, v7, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v3, :cond_b

    if-ne v14, v13, :cond_b

    if-ne v7, v15, :cond_b

    move v13, v3

    goto :goto_2

    :cond_b
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_d

    invoke-virtual {v5, v10, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v6, v1, :cond_c

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->hasAlpha:Z

    :cond_c
    return-object v4

    :cond_d
    const/16 v13, 0x52

    const/16 v3, 0x41

    if-ne v1, v13, :cond_f

    const/16 v13, 0x47

    if-ne v14, v13, :cond_f

    const/16 v13, 0x42

    if-ne v7, v13, :cond_f

    invoke-virtual {v5, v10, v12}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v6, v1, :cond_e

    iget-object v1, v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-object v1, v1, v15

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->hasAlpha:Z

    :cond_e
    return-object v4

    :cond_f
    const/16 v13, 0x59

    if-ne v1, v13, :cond_11

    const/16 v1, 0x43

    if-ne v14, v1, :cond_11

    const/16 v1, 0x63

    if-ne v7, v1, :cond_11

    const-string v1, "PhotoYCC"

    invoke-virtual {v5, v10, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v6, v1, :cond_10

    iget-object v1, v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-object v1, v1, v15

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v3, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->hasAlpha:Z

    :cond_10
    return-object v4

    :cond_11
    iget v1, v8, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    iget v3, v8, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    const/4 v7, 0x1

    :goto_3
    iget-object v8, v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v13, v8

    if-ge v7, v13, :cond_14

    aget-object v8, v8, v7

    iget v13, v8, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    if-ne v13, v1, :cond_13

    iget v8, v8, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    if-eq v8, v3, :cond_12

    goto :goto_4

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_13
    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_14
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_16

    invoke-virtual {v5, v10, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v6, v1, :cond_15

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->hasAlpha:Z

    :cond_15
    return-object v4

    :cond_16
    if-ne v6, v15, :cond_17

    invoke-virtual {v5, v10, v12}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    invoke-virtual {v5, v10, v11}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-object v4
.end method

.method public getStandardCompressionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 5

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Compression"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "CompressionTypeName"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "JPEG"

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Lossless"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "FALSE"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    iget v2, v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    const/16 v4, 0xda

    if-ne v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "NumProgressiveScans"

    invoke-direct {p0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-object v0
.end method

.method public getStandardDimensionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 7

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Dimension"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ImageOrientation"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "normal"

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-class v2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    if-eqz p0, :cond_2

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    int-to-float v2, v2

    iget v5, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    int-to-float v2, v2

    iget v5, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    :goto_0
    int-to-float v5, v5

    div-float/2addr v2, v5

    new-instance v5, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v6, "PixelAspectRatio"

    invoke-direct {v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_1

    const v1, 0x41cb3333    # 25.4f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    :goto_1
    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "HorizontalPixelSize"

    invoke-direct {v2, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    int-to-float v4, v4

    div-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "VerticalPixelSize"

    invoke-direct {v2, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-object v0
.end method

.method public getStandardTextNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 6

    const/16 v0, 0xfe

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(I)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Text"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    iget v3, v2, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    if-ne v3, v0, :cond_0

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "TextEntry"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v4, "keyword"

    const-string v5, "comment"

    invoke-virtual {v3, v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public getStandardTransparencyNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->hasAlpha:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v0, "Transparency"

    invoke-direct {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Alpha"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    const-string v2, "nonpremultiplied"

    invoke-virtual {v0, v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->resetSequence:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->cloneSequence()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->resetSequence:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->cloneSequence()Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v1, :cond_1

    const-string v1, "javax_imageio_jpeg_stream_1.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeNativeTree(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez v1, :cond_2

    const-string v1, "javax_imageio_jpeg_image_1.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeNativeTree(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez v1, :cond_4

    const-string v1, "javax_imageio_1.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->mergeStandardTree(Lorg/w3c/dom/Node;)V

    :goto_1
    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isConsistent()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p1, "Merged tree is invalid; original restored"

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported format name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null root!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null formatName!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public print()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->print()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->resetSequence:Ljava/util/List;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->resetSequence:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setFromMarkerSequenceNode(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dqt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {v3, v1}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    const-string v3, "dht"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-direct {v3, v1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    const-string v3, "dri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;

    invoke-direct {v3, v1}, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v3, "com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;

    invoke-direct {v3, v1}, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "app14Adobe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-direct {v3, v1}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    invoke-direct {v3, v1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v3, "sof"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {v3, v1}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v3, "sos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {v3, v1}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz p0, :cond_8

    const-string p0, "stream "

    goto :goto_2

    :cond_8
    const-string p0, "image "

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "child: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    :cond_9
    return-void
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-eqz v0, :cond_0

    const-string v0, "javax_imageio_jpeg_stream_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->setFromNativeTree(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez v0, :cond_1

    const-string v0, "javax_imageio_jpeg_image_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->setFromNativeTree(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->isStream:Z

    if-nez v0, :cond_2

    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported format name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null root!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null formatName!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToStream(Ljavax/imageio/stream/ImageOutputStream;ZZLjava/util/List;Ljava/awt/color/ICC_Profile;ZILcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/stream/ImageOutputStream;",
            "ZZ",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;",
            "Ljava/awt/color/ICC_Profile;",
            "ZI",
            "Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    invoke-static {p1, p4, p5, p8}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeDefaultJFIF(Ljavax/imageio/stream/ImageOutputStream;Ljava/util/List;Ljava/awt/color/ICC_Profile;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    if-nez p6, :cond_0

    if-eq p7, v1, :cond_0

    if-eqz p7, :cond_0

    if-eq p7, v2, :cond_0

    invoke-virtual {p8, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    move p6, v2

    :cond_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    instance-of v4, v3, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    if-eqz v4, :cond_2

    if-nez p2, :cond_1

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {v3, p1, p4, p8}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeWithThumbs(Ljavax/imageio/stream/ImageOutputStream;Ljava/util/List;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    if-eqz p5, :cond_1

    invoke-static {p5, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeICC(Ljava/awt/color/ICC_Profile;Ljavax/imageio/stream/ImageOutputStream;)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    if-eqz v4, :cond_7

    if-nez p6, :cond_1

    if-eq p7, v1, :cond_3

    invoke-virtual {v3}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    iput p7, v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    invoke-virtual {v3, p1}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->write(Ljavax/imageio/stream/ImageOutputStream;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    iget v4, v3, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    if-eqz v4, :cond_5

    if-ne v4, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p8, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v3, p1}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->write(Ljavax/imageio/stream/ImageOutputStream;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write(Ljavax/imageio/stream/ImageOutputStream;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v3, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write(Ljavax/imageio/stream/ImageOutputStream;)V

    goto :goto_0

    :cond_8
    return-void
.end method
